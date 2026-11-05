import type { Metadata } from "next";
import { getProducts, getShopFacets } from "@/lib/catalog";
import { getSelectedBranch } from "@/lib/branch";
import { parseProductFilters } from "@/lib/filters";
import { ShopBrowser } from "@/components/shop/shop-browser";

export const metadata: Metadata = {
  alternates: { canonical: "/shop" },
  title: "Menú",
  description: "Menú completo de SantaMaria Fast Food: burgers, combos, papas, postres y bebidas.",
};

export default async function ShopPage({ searchParams }: PageProps<"/shop">) {
  const sp = await searchParams;
  const filters = parseProductFilters(sp);
  const branch = await getSelectedBranch();
  const [products, facets] = await Promise.all([
    getProducts(filters, branch?.id),
    getShopFacets(undefined, branch?.id),
  ]);

  return (
    <ShopBrowser
      eyebrow="El menú"
      title="Todo el menú"
      description="Burgers a la plancha, combos para compartir, papas crocantes, postres y bebidas bien frías. Filtra por categoría, precio u ofertas para elegir tu antojo."
      products={products}
      facets={facets}
    />
  );
}
