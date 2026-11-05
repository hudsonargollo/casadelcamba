// Combos are built from the printed menu's own items and prices: each one is a
// sandwich (Bs 28–32) plus a drink (Bs 10), never a new food item.

export type SeedProduct = {
  name: string;
  slug: string;
  sku?: string;
  description: string;
  price: number;
  compareAtPrice?: number;
  material?: string;
  brand: string;
  categorySlug: string;
  contents?: string;
  details?: string;
  stock: number;
  images: string[];
  featured?: boolean;
};

export const COMBO_CATEGORY = {
  name: "Combos",
  slug: "combos",
  description: "Sándwich + bebida (y postre) a precio de combo.",
};

export const combos: SeedProduct[] = [
  {
    name: "Combo Cheese Burger",
    slug: "combo-cheese-burger",
    sku: "SM-CMB-01",
    description: "Cheese Burger + bebida de 500 ml a elección. Bs 4 menos que pedirlos por separado.",
    price: 38,
    compareAtPrice: 42,
    brand: "SantaMaria",
    categorySlug: "combos",
    stock: 30,
    images: ["/imgs/menu/cheese-burger.png"],
    featured: true,
  },
  {
    name: "Combo Cheese Filet",
    slug: "combo-cheese-filet",
    sku: "SM-CMB-02",
    description: "Cheese Filet + bebida de 500 ml a elección. Bs 4 menos que pedirlos por separado.",
    price: 38,
    compareAtPrice: 42,
    brand: "SantaMaria",
    categorySlug: "combos",
    stock: 30,
    images: ["/imgs/menu/cheese-filet.png"],
  },
  {
    name: "Combo Cheese Corazón",
    slug: "combo-cheese-corazon",
    sku: "SM-CMB-03",
    description: "Cheese Corazón + bebida de 500 ml a elección. Bs 4 menos que pedirlos por separado.",
    price: 37,
    compareAtPrice: 41,
    brand: "SantaMaria",
    categorySlug: "combos",
    stock: 30,
    images: ["/imgs/menu/cheese-corazon-burger.png"],
  },
  {
    name: "Combo Cheese Pollo con Tocino",
    slug: "combo-cheese-pollo-tocino",
    sku: "SM-CMB-04",
    description: "Cheese Pollo con Tocino + bebida de 500 ml a elección. Bs 4 menos que pedirlos por separado.",
    price: 35,
    compareAtPrice: 39,
    brand: "SantaMaria",
    categorySlug: "combos",
    stock: 30,
    images: ["/imgs/menu/cheese-pollo-tocino.png"],
  },
  {
    name: "Combo Burger Calabresa",
    slug: "combo-burger-calabresa",
    sku: "SM-CMB-05",
    description: "Burger Calabresa + bebida de 500 ml a elección. Bs 4 menos que pedirlos por separado.",
    price: 34,
    compareAtPrice: 38,
    brand: "SantaMaria",
    categorySlug: "combos",
    stock: 30,
    images: ["/imgs/menu/burger-calabresa.png"],
  },
  {
    name: "Combo Burger Vegetariana",
    slug: "combo-burger-vegetariana",
    sku: "SM-CMB-06",
    description: "Burger Vegetariana + bebida de 500 ml a elección. Bs 4 menos que pedirlos por separado.",
    price: 34,
    compareAtPrice: 38,
    brand: "SantaMaria",
    categorySlug: "combos",
    stock: 30,
    images: ["/imgs/menu/burger-vegetariana.png"],
  },
  {
    name: "Combo Dulce",
    slug: "combo-dulce",
    sku: "SM-CMB-07",
    description: "Cheese Burger + Postre 3 Leches + bebida de 500 ml a elección.",
    price: 52,
    compareAtPrice: 59,
    brand: "SantaMaria",
    categorySlug: "combos",
    stock: 30,
    images: ["/imgs/menu/cheese-burger.png"],
  },
  {
    name: "Combo Para Dos",
    slug: "combo-para-dos",
    sku: "SM-CMB-08",
    description: "2 Cheese Burger + 2 bebidas de 500 ml a elección. Para compartir.",
    price: 75,
    compareAtPrice: 84,
    brand: "SantaMaria",
    categorySlug: "combos",
    stock: 30,
    images: ["/imgs/menu/cheese-burger.png"],
    featured: true,
  },
];
