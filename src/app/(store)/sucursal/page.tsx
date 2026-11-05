import type { Metadata } from "next";
import Link from "next/link";
import { getBranches, getSelectedBranch } from "@/lib/branch";
import { getStoreSettings } from "@/lib/settings";

export const metadata: Metadata = {
  title: "Elige tu sucursal",
  description: "Selecciona la sucursal desde la que quieres hacer tu pedido.",
};

export const dynamic = "force-dynamic";

export default async function BranchPickerPage({ searchParams }: PageProps<"/sucursal">) {
  const sp = await searchParams;
  const raw = Array.isArray(sp.next) ? sp.next[0] : sp.next;
  const next = raw && raw.startsWith("/") && !raw.startsWith("//") ? raw : "/shop";
  const [branches, selected, settings] = await Promise.all([
    getBranches(),
    getSelectedBranch(),
    getStoreSettings(),
  ]);

  return (
    <div className="mx-auto max-w-6xl px-5 py-14">
      <div className="max-w-2xl">
        <p className="text-[0.7rem] font-semibold uppercase tracking-[0.22em] text-accent-strong">
          {settings.contact.city || "Nuestras tiendas"}
        </p>
        <h1 className="mt-2 font-display text-4xl font-semibold text-ink sm:text-5xl">
          ¿En qué sucursal te atendemos?
        </h1>
        <p className="mt-3 text-sm text-muted">
          Elige la tienda más cercana. Verás la disponibilidad real de esa sucursal y tu
          pedido será preparado y entregado desde allí.
        </p>
      </div>

      {branches.length === 0 ? (
        <div className="mt-10 rounded-2xl border border-dashed border-[var(--line)] bg-surface py-16 text-center">
          <p className="font-display text-xl text-ink">Aún no hay sucursales publicadas</p>
          <p className="mt-1 text-sm text-muted">Configúralas en Admin → Sucursales.</p>
        </div>
      ) : (
        <ul className="mt-10 grid gap-5 sm:grid-cols-2 lg:grid-cols-3">
          {branches.map((b) => {
            const active = selected?.slug === b.slug;
            const href = `/api/branch?slug=${encodeURIComponent(b.slug)}&next=${encodeURIComponent(next)}`;
            return (
              <li key={b.id}>
                <Link
                  href={href}
                  className={`group flex h-full flex-col overflow-hidden rounded-2xl border bg-surface transition ${
                    active
                      ? "border-accent shadow-[0_18px_50px_-30px_rgba(7,47,87,0.6)]"
                      : "border-[var(--line)] hover:-translate-y-0.5 hover:border-accent/60 hover:shadow-[0_18px_50px_-30px_rgba(7,47,87,0.5)]"
                  }`}
                >
                  <div className="relative h-36 overflow-hidden bg-gradient-to-br from-brand to-brand-deep">
                    {b.image ? (
                      // eslint-disable-next-line @next/next/no-img-element
                      <img
                        src={b.image}
                        alt={b.name}
                        className="h-full w-full object-cover transition duration-500 group-hover:scale-105"
                      />
                    ) : (
                      <div className="flex h-full items-center justify-center font-display text-3xl text-accent/80">
                        {b.name.slice(0, 2).toUpperCase()}
                      </div>
                    )}
                    {active && (
                      <span className="absolute right-3 top-3 rounded-full bg-accent px-3 py-1 text-[0.62rem] font-semibold uppercase tracking-wider text-brand">
                        Seleccionada
                      </span>
                    )}
                  </div>
                  <div className="flex flex-1 flex-col p-5">
                    <h2 className="font-display text-xl font-semibold text-ink">{b.name}</h2>
                    <p className="mt-1 text-sm text-muted">{b.address}</p>
                    <p className="text-sm text-muted">{b.city}</p>
                    <div className="mt-3 space-y-0.5 text-xs text-muted">
                      {b.hours && <p>{b.hours}</p>}
                      {b.phone && <p>Tel. {b.phone}</p>}
                      <p>
                        {b.deliveryEnabled && b.pickupEnabled
                          ? "Delivery a domicilio y retiro en tienda"
                          : b.deliveryEnabled
                            ? "Delivery a domicilio"
                            : b.pickupEnabled
                              ? "Retiro en tienda"
                              : "Atención en tienda"}
                      </p>
                    </div>
                    <span className="mt-4 inline-flex items-center gap-1 text-sm font-medium text-accent-strong">
                      {active ? "Continuar aquí" : "Elegir esta sucursal"} →
                    </span>
                  </div>
                </Link>
              </li>
            );
          })}
        </ul>
      )}
    </div>
  );
}
