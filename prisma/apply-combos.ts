// Upserts only the "Combos" category and its SKUs. Existing products, prices
// and branch stock are left untouched, so this is safe to run on production.
import { PrismaClient, Prisma } from "@prisma/client";
import { COMBO_CATEGORY, combos } from "./combos";

const prisma = new PrismaClient();

async function main() {
  const category = await prisma.category.upsert({
    where: { slug: COMBO_CATEGORY.slug },
    update: { name: COMBO_CATEGORY.name, description: COMBO_CATEGORY.description },
    create: COMBO_CATEGORY,
  });

  const branches = await prisma.branch.findMany({ where: { active: true }, select: { id: true } });

  for (const p of combos) {
    const data = {
      name: p.name,
      description: p.description,
      price: new Prisma.Decimal(p.price),
      compareAtPrice: p.compareAtPrice ? new Prisma.Decimal(p.compareAtPrice) : null,
      brand: p.brand,
      categoryId: category.id,
      images: p.images,
      featured: p.featured ?? false,
      sku: p.sku ?? null,
    };
    const product = await prisma.product.upsert({
      where: { slug: p.slug },
      update: data,
      create: { ...data, slug: p.slug },
      select: { id: true },
    });
    for (const b of branches) {
      await prisma.branchStock.upsert({
        where: { branchId_productId: { branchId: b.id, productId: product.id } },
        update: {},
        create: { branchId: b.id, productId: product.id, stock: p.stock },
      });
    }
    console.log(`  ✔ ${p.sku} ${p.name} — Bs ${p.price}`);
  }

  console.log(`✔ ${combos.length} combos across ${branches.length} branches`);
}

main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
