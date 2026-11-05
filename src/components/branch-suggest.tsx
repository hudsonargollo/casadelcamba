"use client";

import Link from "next/link";
import { useCallback, useEffect, useState } from "react";
import { motion } from "framer-motion";

export type BranchSuggestion = {
  slug: string;
  name: string;
  address: string;
  latitude: number;
  longitude: number;
};

const DISMISS_KEY = "sm_branch_prompt_dismissed_at";
const DISMISS_MS = 24 * 60 * 60 * 1000;
const MAX_SUGGESTION_KM = 60;

type Phase = "locating" | "found" | "manual";

function distanceKm(aLat: number, aLon: number, bLat: number, bLon: number) {
  const R = 6371;
  const rad = (d: number) => (d * Math.PI) / 180;
  const dLat = rad(bLat - aLat);
  const dLon = rad(bLon - aLon);
  const h =
    Math.sin(dLat / 2) ** 2 +
    Math.cos(rad(aLat)) * Math.cos(rad(bLat)) * Math.sin(dLon / 2) ** 2;
  return 2 * R * Math.asin(Math.sqrt(h));
}

function nearestBranch(branches: BranchSuggestion[], lat: number, lon: number) {
  let best: { branch: BranchSuggestion; distance: number } | null = null;
  for (const branch of branches) {
    const distance = distanceKm(lat, lon, branch.latitude, branch.longitude);
    if (!best || distance < best.distance) best = { branch, distance };
  }
  return best;
}

function formatDistance(km: number) {
  return km < 1 ? `${Math.max(50, Math.round((km * 1000) / 50) * 50)} m` : `${km.toFixed(1)} km`;
}

export function BranchSuggest({
  branches,
  hasBranch,
}: {
  branches: BranchSuggestion[];
  hasBranch: boolean;
}) {
  const [open, setOpen] = useState(false);
  const [phase, setPhase] = useState<Phase>("locating");
  const [suggestion, setSuggestion] = useState<{ branch: BranchSuggestion; distance: number } | null>(
    null
  );

  const dismiss = useCallback(() => {
    try {
      localStorage.setItem(DISMISS_KEY, String(Date.now()));
    } catch {
      // Private mode or storage disabled: the popup simply closes.
    }
    setOpen(false);
  }, []);

  useEffect(() => {
    if (hasBranch || branches.length === 0) return;
    try {
      const last = Number(localStorage.getItem(DISMISS_KEY));
      if (last && Date.now() - last < DISMISS_MS) return;
    } catch {
      // ignore
    }
    const timer = window.setTimeout(() => setOpen(true), 700);
    return () => window.clearTimeout(timer);
  }, [hasBranch, branches.length]);

  useEffect(() => {
    if (!open) return;
    const onKey = (event: KeyboardEvent) => {
      if (event.key === "Escape") dismiss();
    };
    window.addEventListener("keydown", onKey);
    return () => window.removeEventListener("keydown", onKey);
  }, [open, dismiss]);

  useEffect(() => {
    if (!open) return;
    if (!("geolocation" in navigator)) {
      const timer = window.setTimeout(() => setPhase("manual"), 0);
      return () => window.clearTimeout(timer);
    }

    let cancelled = false;
    const fallback = window.setTimeout(() => {
      if (!cancelled) setPhase("manual");
    }, 10000);

    navigator.geolocation.getCurrentPosition(
      (position) => {
        if (cancelled) return;
        window.clearTimeout(fallback);
        const found = nearestBranch(
          branches,
          position.coords.latitude,
          position.coords.longitude
        );
        if (found && found.distance <= MAX_SUGGESTION_KM) {
          setSuggestion(found);
          setPhase("found");
        } else {
          setPhase("manual");
        }
      },
      () => {
        if (cancelled) return;
        window.clearTimeout(fallback);
        setPhase("manual");
      },
      { enableHighAccuracy: false, timeout: 8000, maximumAge: 10 * 60 * 1000 }
    );

    return () => {
      cancelled = true;
      window.clearTimeout(fallback);
    };
  }, [open, branches]);

  if (!open || branches.length === 0) return null;

  const title =
    phase === "found"
      ? "Esta es tu sucursal más cercana"
      : phase === "locating"
        ? "Buscando SantaMaria cerca de ti"
        : "Elige tu sucursal SantaMaria";

  return (
    <div
      className="fixed inset-0 z-[100] flex items-end justify-center bg-[rgba(7,47,87,0.5)] p-4 backdrop-blur-sm sm:items-center"
      role="presentation"
      onClick={dismiss}
    >
      <motion.div
        role="dialog"
        aria-modal="true"
        aria-labelledby="branch-suggest-title"
        initial={{ opacity: 0, y: 28, scale: 0.98 }}
        animate={{ opacity: 1, y: 0, scale: 1 }}
        transition={{ duration: 0.28, ease: "easeOut" }}
        onClick={(event) => event.stopPropagation()}
        className="relative w-full max-w-md overflow-hidden rounded-3xl border border-[var(--line)] bg-surface shadow-[0_30px_80px_-30px_rgba(7,47,87,0.7)]"
      >
        <div className="bg-brand px-6 pb-7 pt-6 text-light">
          <button
            type="button"
            onClick={dismiss}
            aria-label="Cerrar"
            className="absolute right-4 top-4 rounded-full p-2 text-light/70 transition hover:bg-white/10 hover:text-light"
          >
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round">
              <path d="M6 6l12 12M18 6L6 18" />
            </svg>
          </button>

          <span className="inline-flex items-center gap-1.5 rounded-full border border-[rgba(141,196,255,0.45)] px-3 py-1 text-[0.65rem] font-semibold uppercase tracking-[0.18em] text-accent-soft">
            <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
              <path d="M12 21s7-6.1 7-11a7 7 0 1 0-14 0c0 4.9 7 11 7 11z" />
              <circle cx="12" cy="10" r="2.5" />
            </svg>
            Entrega y retiro
          </span>

          <h2 id="branch-suggest-title" className="mt-4 pr-8 font-display text-2xl font-semibold leading-tight">
            {title}
          </h2>
          <p className="mt-2 text-sm leading-relaxed text-light/75">
            {phase === "found"
              ? "Preparamos tu pedido desde esta tienda. Puedes cambiarla cuando quieras."
              : phase === "locating"
                ? "Permite el acceso a tu ubicación y te recomendamos la tienda más cercana."
                : "Selecciona la tienda desde la que quieres comprar y ver su disponibilidad."}
          </p>
        </div>

        <div className="px-6 py-6">
          {phase === "locating" && (
            <div className="flex items-center gap-3 rounded-2xl border border-[var(--line)] bg-cream-soft px-4 py-4">
              <span className="h-5 w-5 shrink-0 animate-spin rounded-full border-2 border-accent border-t-transparent" />
              <p className="text-sm text-muted">Consultando tu ubicación…</p>
            </div>
          )}

          {phase === "found" && suggestion && (
            <div className="rounded-2xl border border-[var(--line)] bg-cream-soft px-4 py-4">
              <div className="flex items-start justify-between gap-3">
                <div>
                  <p className="font-display text-lg font-semibold text-ink">{suggestion.branch.name}</p>
                  <p className="mt-0.5 text-sm text-muted">{suggestion.branch.address}</p>
                </div>
                <span className="shrink-0 rounded-full bg-brand px-2.5 py-1 text-[0.68rem] font-semibold text-accent-soft">
                  a {formatDistance(suggestion.distance)}
                </span>
              </div>
              <p className="mt-3 text-xs text-muted">
                Santa Cruz · Entrega a domicilio o retiro en tienda
              </p>
            </div>
          )}

          {phase === "manual" && (
            <p className="text-sm text-muted">
              No pudimos usar tu ubicación. Elige la sucursal que prefieras: verás la
              disponibilidad real de esa tienda.
            </p>
          )}

          <div className="mt-5 flex flex-col gap-2.5">
            {phase === "found" && suggestion ? (
              <>
                <a
                  href={`/api/branch?slug=${encodeURIComponent(suggestion.branch.slug)}&next=/`}
                  className="rounded-full bg-accent px-5 py-3 text-center text-sm font-bold text-brand-deep shadow-[0_14px_30px_-16px_rgba(255,199,44,0.9)] transition hover:bg-accent-soft"
                >
                  Usar esta sucursal
                </a>
                <div className="flex gap-2.5">
                  <Link
                    href="/sucursal?next=/"
                    onClick={dismiss}
                    className="flex-1 rounded-full border border-[var(--line-strong)] px-5 py-3 text-center text-sm font-semibold text-ink transition hover:border-accent hover:text-accent-strong"
                  >
                    Elegir otra
                  </Link>
                  <button
                    type="button"
                    onClick={dismiss}
                    className="rounded-full px-4 py-3 text-sm font-medium text-muted transition hover:text-ink"
                  >
                    Ahora no
                  </button>
                </div>
              </>
            ) : (
              <Link
                href="/sucursal?next=/"
                onClick={dismiss}
                className="rounded-full bg-accent px-5 py-3 text-center text-sm font-bold text-brand-deep transition hover:bg-accent-soft"
              >
                Ver sucursales
              </Link>
            )}
          </div>
        </div>
      </motion.div>
    </div>
  );
}
