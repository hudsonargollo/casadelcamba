import { PrismaClient, Prisma } from "@prisma/client";
import { COMBO_CATEGORY, combos, type SeedProduct } from "./combos";

const prisma = new PrismaClient();

// SantaMaria — catalog taken from the store's printed menu (public/imgs/menuitens.png).
// Categories are auto-created from the product data; duplicates are skipped.

const categories: { name: string; slug: string; description: string }[] = [
  { name: "Imperdibles", slug: "imperdibles", description: "Los favoritos de SantaMaria, los que no puedes dejar pasar." },
  { name: "Plus Days", slug: "plus-days", description: "Promociones especiales del día." },
  { name: "Burgers", slug: "burgers", description: "Hamburguesas artesanales SantaMaria." },
  { name: "Postres", slug: "postres", description: "Dulces para cerrar con broche de oro." },
  { name: "Bebidas", slug: "bebidas", description: "Gaseosas, aguas y aguas saborizadas bien frías." },
  COMBO_CATEGORY,
];

const products: SeedProduct[] = [
  // Imperdibles
  { name: "Cheese Corazón", slug: "cheese-corazon-imperdible", description: "Hamburguesa con corazones de pollo, choclo, queso, huevo, tomate y lechuga.", price: 31, brand: "SantaMaria", categorySlug: "imperdibles", stock: 40, images: ["/imgs/menu/cheese-corazon-imperdible.png"], featured: true },

  // Plus Days
  { name: "Cheese Burger", slug: "cheese-burger-plus-days", description: "Hamburguesa con carne, choclo, queso, huevo, tomate y lechuga.", price: 32, brand: "SantaMaria", categorySlug: "plus-days", stock: 40, images: ["/imgs/menu/cheese-burger-plus-days.png"], featured: true },

  // Burgers
  { name: "Cheese Filet", slug: "cheese-filet", description: "Hamburguesa con filet, choclo, queso, huevo, tomate y lechuga.", price: 32, brand: "SantaMaria", categorySlug: "burgers", stock: 40, images: ["/imgs/menu/cheese-filet.png"], featured: true },
  { name: "Cheese Pollo con Tocino", slug: "cheese-pollo-tocino", description: "Hamburguesa con pollo, tocino, choclo, queso, huevo, tomate y lechuga.", price: 29, brand: "SantaMaria", categorySlug: "burgers", stock: 40, images: ["/imgs/menu/cheese-pollo-tocino.png"], featured: true },
  { name: "Cheese Corazón", slug: "cheese-corazon-burger", description: "Hamburguesa con corazones de pollo, choclo, queso, huevo, tomate y lechuga.", price: 31, brand: "SantaMaria", categorySlug: "burgers", stock: 40, images: ["/imgs/menu/cheese-corazon-burger.png"], featured: true },
  { name: "Cheese Burger", slug: "cheese-burger", description: "Hamburguesa con carne, choclo, queso, huevo, tomate y lechuga.", price: 32, brand: "SantaMaria", categorySlug: "burgers", stock: 40, images: ["/imgs/menu/cheese-burger.png"], featured: true },
  { name: "Burger Vegetariana", slug: "burger-vegetariana", description: "Mix de legumbres y especias.", price: 28, brand: "SantaMaria", categorySlug: "burgers", stock: 40, images: ["/imgs/menu/burger-vegetariana.png"], featured: true },
  { name: "Burger Calabresa", slug: "burger-calabresa", description: "Hamburguesa de salchicha brasileira calabresa, choclo, queso, huevo, tomate, lechuga y la salsa de la casa.", price: 28, brand: "SantaMaria", categorySlug: "burgers", stock: 40, images: ["/imgs/menu/burger-calabresa.png"], featured: true },

  // Postres
  { name: "Postre 3 Leches", slug: "postre-3-leches", description: "Postre de tres leches, suave y dulce.", price: 17, brand: "SantaMaria", categorySlug: "postres", stock: 30, images: ["/imgs/menu/postre-3-leches.png"] },

  // Bebidas
  { name: "Agua Vital sin Gas 600 ml", slug: "agua-vital-600ml", description: "Disfruta del sabor puro y natural del agua. Ideal para mantenerte hidratado en cualquier momento del día.", price: 10, brand: "Vital", categorySlug: "bebidas", contents: "600 ml", stock: 60, images: ["/imgs/menu/agua-vital-600ml.png"] },
  { name: "Gaseosa Fanta Sabor Naranja 500 ml", slug: "fanta-naranja-500ml", description: "Bebida carbonatada sabor naranja que intensifica la diversión con amigos a través de su sabor superior, frutal e intenso.", price: 10, brand: "Fanta", categorySlug: "bebidas", contents: "500 ml", stock: 60, images: ["/imgs/menu/fanta-naranja-500ml.png"] },
  { name: "Gaseosa Fanta Guaraná 500 ml", slug: "fanta-guarana-500ml", description: "Refrescante bebida gasificada con un increíble sabor que alegrará tus días. ¡Dale color a la vida y vence al gris!", price: 10, brand: "Fanta", categorySlug: "bebidas", contents: "500 ml", stock: 60, images: ["/imgs/menu/fanta-guarana-500ml.png"] },
  { name: "Gaseosa Fanta Sabor Papaya 500 ml", slug: "fanta-papaya-500ml", description: "Bebida gasificada con el exótico sabor de la papaya, perfecta para refrescarte.", price: 10, brand: "Fanta", categorySlug: "bebidas", contents: "500 ml", stock: 60, images: ["/imgs/menu/fanta-papaya-500ml.png"] },
  { name: "Gaseosa Coca-Cola 500 ml", slug: "coca-cola-500ml", description: "Diseñada para acompañar cada momento, el sabor de la cola es un clásico que perdura desde hace más de 130 años. Deliciosa y refrescante.", price: 10, brand: "Coca-Cola", categorySlug: "bebidas", contents: "500 ml", stock: 60, images: ["/imgs/menu/coca-cola-500ml.png"] },
  { name: "Sprite Lima Limón 500 ml", slug: "sprite-lima-limon-500ml", description: "Bebida sin alcohol gasificada con 5% de jugo de limón, ideal para compartir con amigos.", price: 10, brand: "Sprite", categorySlug: "bebidas", contents: "500 ml", stock: 60, images: ["/imgs/menu/sprite-lima-limon-500ml.png"] },
  { name: "Agua Saborizada Aquarius Pera 500 ml", slug: "aquarius-pera-500ml", description: "Refrescante bebida de pera elaborada con agua y fruta. Ideal para disfrutar en cualquier momento.", price: 10, brand: "Aquarius", categorySlug: "bebidas", contents: "500 ml", stock: 60, images: ["/imgs/menu/aquarius-pera-500ml.png"] },
  { name: "Agua Saborizada Aquarius Pomelo 500 ml", slug: "aquarius-pomelo-500ml", description: "Deliciosa bebida sin alcohol con 5% de jugo de frutas, perfecta para disfrutar en un día de campo con familia o amigos.", price: 10, brand: "Aquarius", categorySlug: "bebidas", contents: "500 ml", stock: 60, images: ["/imgs/menu/aquarius-pomelo-500ml.png"] },

  // Combos — sandwich + drink bundles built from the menu items above
  ...combos,
];

async function main() {
  console.log("🌱 Seeding SantaMaria database...");

  // Categories
  const categoryIdBySlug = new Map<string, string>();
  for (const c of categories) {
    const cat = await prisma.category.upsert({
      where: { slug: c.slug },
      update: { name: c.name, description: c.description },
      create: c,
    });
    categoryIdBySlug.set(c.slug, cat.id);
  }
  console.log(`  ✔ ${categories.length} categories`);

  // The 13 SantaMaria locations, WhatsApp numbers (from the Taplink page) and
  // street references (from the chain's own listing). Coordinates are used by
  // the storefront to suggest the closest branch; they can be refined from
  // Admin → Sucursales.
  const branches = [
    { name: "Santos Dumont 2do Anillo", slug: "santos-dumont-2do-anillo", code: "SM01", address: "Av. Santos Dumont, entre 2do y 3er anillo", city: "Santa Cruz", phone: "+591 62100074", whatsapp: "59162100074", latitude: -17.8030, longitude: -63.1810, sortOrder: 1 },
    { name: "Santos Dumont 5to Anillo", slug: "santos-dumont-5to-anillo", code: "SM02", address: "Av. Santos Dumont, 5to anillo", city: "Santa Cruz", phone: "+591 77712831", whatsapp: "59177712831", latitude: -17.8331, longitude: -63.1851, sortOrder: 2 },
    { name: "Trompillo", slug: "trompillo", code: "SM03", address: "Av. Trompillo, sobre el 2do anillo", city: "Santa Cruz", phone: "+591 62100077", whatsapp: "59162100077", latitude: -17.79966, longitude: -63.18219, sortOrder: 3 },
    { name: "Doble Vía Km6", slug: "doble-via-km6", code: "SM04", address: "Doble Vía a La Guardia, Km 6", city: "Santa Cruz", phone: "+591 62100073", whatsapp: "59162100073", latitude: -17.8183, longitude: -63.2155, sortOrder: 4 },
    { name: "Nueva Equipetrol", slug: "nueva-equipetrol", code: "SM05", address: "Av. San Martín, 3er anillo externo", city: "Santa Cruz", phone: "+591 77810058", whatsapp: "59177810058", latitude: -17.7630, longitude: -63.1965, sortOrder: 5 },
    { name: "Radial 27 4to Anillo", slug: "radial-27-4to-anillo", code: "SM06", address: "Radial 27, 4to anillo", city: "Santa Cruz", phone: "+591 62236094", whatsapp: "59162236094", latitude: -17.7495, longitude: -63.1807, sortOrder: 6 },
    { name: "Alemana 2do Anillo", slug: "alemana-2do-anillo", code: "SM07", address: "Entre Av. Beni y Av. Alemana, 2do anillo", city: "Santa Cruz", phone: "+591 62100078", whatsapp: "59162100078", latitude: -17.77060, longitude: -63.17340, sortOrder: 7 },
    { name: "Alemana 5to Anillo", slug: "alemana-5to-anillo", code: "SM08", address: "Av. Alemana, 5to anillo", city: "Santa Cruz", phone: "+591 77712831", whatsapp: "59177712831", latitude: -17.7444, longitude: -63.1611, sortOrder: 8 },
    { name: "Remanso", slug: "remanso", code: "SM09", address: "Remanso, 8vo anillo", city: "Santa Cruz", phone: "+591 76667055", whatsapp: "59176667055", latitude: -17.7146, longitude: -63.1694, sortOrder: 9 },
    { name: "Cambódromo", slug: "cambodromo", code: "SM10", address: "Cambódromo, 6to anillo", city: "Santa Cruz", phone: "+591 62400075", whatsapp: "59162400075", latitude: -17.7540, longitude: -63.1533, sortOrder: 10 },
    { name: "Pampa de la Isla", slug: "pampa-de-la-isla", code: "SM11", address: "Pampa de la Isla, entre 7mo y 8vo anillo", city: "Santa Cruz", phone: "+591 62100081", whatsapp: "59162100081", latitude: -17.7595, longitude: -63.1158, sortOrder: 11 },
    { name: "Villa 1ro de Mayo", slug: "villa-1ro-de-mayo", code: "SM12", address: "Villa Primero de Mayo", city: "Santa Cruz", phone: "+591 69202944", whatsapp: "59169202944", latitude: -17.7944, longitude: -63.1340, sortOrder: 12 },
    { name: "Piraí", slug: "pirai", code: "SM13", address: "Av. Piraí, entre 2do y 3er anillo", city: "Santa Cruz", phone: "+591 78555564", whatsapp: "59178555564", latitude: -17.7905, longitude: -63.1995, sortOrder: 13 },
  ];
  // The first deploy created a single placeholder branch; rename it in place so
  // its per-branch stock rows carry over to the first real location.
  await prisma.branch.updateMany({ where: { slug: "principal" }, data: branches[0] });
  const branchIds: string[] = [];
  for (const b of branches) {
    const row = await prisma.branch.upsert({
      where: { slug: b.slug },
      update: {}, // never overwrite details the store already edited
      create: b,
      select: { id: true, latitude: true },
    });
    // Branches seeded before coordinates existed get them once, without
    // touching anything the store may have edited afterwards.
    if (row.latitude == null) {
      await prisma.branch.update({
        where: { id: row.id },
        data: { address: b.address, latitude: b.latitude, longitude: b.longitude },
      });
    }
    branchIds.push(row.id);
  }

  // Products
  for (const p of products) {
    const categoryId = categoryIdBySlug.get(p.categorySlug);
    if (!categoryId) continue;
    const product = await prisma.product.upsert({
      where: { slug: p.slug },
      update: {
        name: p.name,
        description: p.description,
        price: new Prisma.Decimal(p.price),
        compareAtPrice: p.compareAtPrice ? new Prisma.Decimal(p.compareAtPrice) : null,
        material: p.material,
        brand: p.brand,
        categoryId,
        contents: p.contents,
        details: p.details,
        images: p.images,
        featured: p.featured ?? false,
        sku: p.sku,
      },
      create: {
        slug: p.slug,
        name: p.name,
        description: p.description,
        price: new Prisma.Decimal(p.price),
        compareAtPrice: p.compareAtPrice ? new Prisma.Decimal(p.compareAtPrice) : null,
        material: p.material,
        brand: p.brand,
        categoryId,
        contents: p.contents,
        details: p.details,
        images: p.images,
        featured: p.featured ?? false,
        sku: p.sku,
      },
      select: { id: true },
    });
    for (const branchId of branchIds) {
      await prisma.branchStock.upsert({
        where: { branchId_productId: { branchId, productId: product.id } },
        update: {}, // never overwrite stock that the store already manages
        create: { branchId, productId: product.id, stock: p.stock },
      });
    }
  }
  console.log(`  ✔ ${products.length} products`);
  console.log(`  ✔ ${branches.length} branch(es) with stock`);

  // Seed settings
  const settings = {
    contact: {
      email: "ventas@santamaria.com",
      phone: "",
      whatsapp: "",
      city: "Santa Cruz, Bolivia",
      hours: "Lun–Sáb, 8:00 – 20:00",
    },
    social: {
      instagram: "",
      facebook: "",
      tiktok: "",
    },
    shipping: {
      flatFee: 15.00,
      freeThreshold: 100.00,
      deliveryTime: "el mismo día",
    },
    announcements: [
      "Elige tu sucursal SantaMaria y recibe el mismo día",
      "Envío gratis a partir de Bs 100",
      "Retiro en tienda disponible en todas las sucursales",
      "Calidad certificada · Pago contra entrega",
    ],
    inventory: { lowStockThreshold: 5 },
    notifications: { orderEmail: "ventas@santamaria.com" },
  };

  await prisma.setting.upsert({
    where: { key: "store" },
    update: { value: settings },
    create: { key: "store", value: settings },
  });

  console.log("✅ Seed complete.");
}

main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
