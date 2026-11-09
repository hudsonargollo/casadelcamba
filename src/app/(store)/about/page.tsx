import type { Metadata } from "next";
import Link from "next/link";
import { Emblem } from "@/components/brand/emblem";
import { SplitText } from "@/components/text-reveal";

export const metadata: Metadata = {
  alternates: { canonical: "/about" },
  title: "Nosotros",
  description: "Casa del Camba — comida típica cruceña desde 1986. El mejor sabor de Santa Cruz, con delivery y retiro en tienda.",
};

const PILLARS = [
  { title: "Hecho al momento", body: "Nada espera bajo una lámpara: tu plato se prepara cuando confirmas el pedido." },
  { title: "Recetas de siempre", body: "Los sabores cambas que nos hicieron famosos: majao, picantes, empanadas y parrilla." },
  { title: "Delivery y retiro", body: "Te lo llevamos a la puerta o lo recoges en tu sucursal Casa del Camba más cercana." },
];

export default function AboutPage() {
  return (
    <div className="bg-cream px-5 py-12">
      <div className="mx-auto max-w-4xl overflow-hidden rounded-2xl border border-[var(--line)] bg-panel">
        <div className="px-6 py-16 text-center sm:px-14">
          <Emblem size={52} className="mx-auto text-brand" accent="var(--color-accent)" />
          <span className="eyebrow mt-5 block">Nuestra historia</span>
          <h1 className="mt-2 font-display text-4xl font-extrabold tracking-tight text-ink text-balance sm:text-5xl">
            <SplitText text="Tradición camba" />{" "}
            <span className="brand-text">desde 1986</span>
          </h1>
          <p className="mx-auto mt-6 max-w-2xl text-pretty text-ink/80">
            Casa del Camba abrió sus puertas el 6 de diciembre de 1986, fundada por el
            ingeniero Juan Carlos Medina Anzoátegui y Rosa Parada de Medina, con una idea
            clara: rescatar los sabores cambas en una Santa Cruz que empezaba a llenarse
            de influencias de afuera.
          </p>
          <p className="mx-auto mt-4 max-w-2xl text-pretty text-ink/80">
            Desde entonces cocinamos la comida criolla que nos identifica: majao de pato y
            charque, picantes, empanadas de keperí, parrilla y los postres de la casa.
            Cada pedido se prepara al momento y sale directo a tu puerta o te espera listo
            para retirar en nuestras sucursales.
          </p>
          <Link
            href="/shop"
            className="mt-7 inline-block rounded-full bg-accent px-8 py-3 text-sm font-semibold text-brand-deep shadow-[0_14px_32px_-16px_rgba(255,204,4,0.9)] transition duration-300 hover:-translate-y-0.5 hover:bg-accent-soft"
          >
            Ver el menú
          </Link>
        </div>
      </div>

      <section className="mx-auto mt-16 grid max-w-4xl gap-8 sm:grid-cols-3">
        {PILLARS.map((p) => (
          <div key={p.title} className="text-center">
            <h3 className="font-display text-xl font-bold text-ink">{p.title}</h3>
            <p className="mt-2 text-sm text-muted">{p.body}</p>
          </div>
        ))}
      </section>
    </div>
  );
}
