import type { Metadata } from "next";
import { getProducts } from "@/lib/catalog";
import { getSelectedBranch } from "@/lib/branch";
import { MenuPromoSlider } from "@/components/shop/menu-promo-slider";
import { MenuSection } from "@/components/shop/menu-section";

export const metadata: Metadata = {
  alternates: { canonical: "/shop" },
  title: "Menú: las Santa María, combos y bebidas",
  description:
    "Sándwiches Santa María hechos a la plancha, combos, promos y bebidas bien frías. Pide online en tus 13 sucursales de Santa Cruz.",
};

export const dynamic = "force-dynamic";

export default async function ShopPage() {
  const branch = await getSelectedBranch();
  const products = await getProducts({}, branch?.id);
  const drinks = products.filter((p) => p.category.slug === "bebidas");
  const desserts = products.filter((p) => p.category.slug === "postres");
  const drinksAndDesserts = new Set([...drinks, ...desserts].map((p) => p.id));
  const sandwiches = products.filter((p) => !drinksAndDesserts.has(p.id));

  return (
    <div className="mx-auto max-w-7xl px-4 py-12 sm:px-6 sm:py-16">
      <header className="max-w-3xl">
        <span className="eyebrow">El menú</span>
        <h1 className="mt-3 font-display text-4xl font-extrabold leading-[1.05] tracking-tight text-ink text-balance sm:text-5xl lg:text-6xl">
          Una Santa María, por favor
        </h1>
        <p className="mt-4 max-w-2xl text-pretty text-base text-muted sm:text-lg">
          Acá no se pide una hamburguesa: se pide una Santa María. Pan tostado en la plancha,
          carne jugosa, queso derretido y todo lo que le quieras poner. Elige la tuya
          y acompáñala con algo bien frío.
        </p>
      </header>

      <div className="mt-10">
        <MenuPromoSlider />
      </div>

      <div className="mt-14 space-y-14 sm:mt-16 sm:space-y-16">
        <MenuSection
          id="sandwiches"
          eyebrow="Las clásicas"
          title="Todas las Santa María"
          description="Sándwiches armados al momento, con pan dorado en la plancha y carne al jugo. Estas son las que nunca fallan."
          href="/shop/burgers"
          linkLabel="Ver sándwiches"
          products={sandwiches}
        />

        <MenuSection
          id="bebidas"
          eyebrow="Bien frías"
          title="Bebidas"
          description="Gaseosas, aguas y aguas saborizadas de 500 ml para acompañar la Santa María."
          href="/shop/bebidas"
          linkLabel="Ver bebidas"
          products={drinks}
        />

        <MenuSection
          id="postres"
          eyebrow="Para cerrar"
          title="Postres"
          description="Algo dulce para terminar el pedido."
          href="/shop/postres"
          linkLabel="Ver postres"
          products={desserts}
        />
      </div>

      {products.length === 0 ? (
        <div className="mt-12 rounded-2xl border border-dashed border-[var(--line)] bg-surface py-16 text-center">
          <p className="font-display text-xl text-ink">El menú está tomando forma</p>
          <p className="mt-1 text-sm text-muted">Vuelve en un momento.</p>
        </div>
      ) : null}
    </div>
  );
}
