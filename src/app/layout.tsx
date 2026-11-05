import type { Metadata } from "next";
import { Inter, Outfit } from "next/font/google";
import { siteUrl } from "@/lib/site";
import "./globals.css";
import { CartProvider } from "@/components/cart/cart-provider";
import { ToastProvider } from "@/components/ui/toast";
import { FlashToast } from "@/components/ui/flash-toast";

const outfit = Outfit({
  variable: "--font-outfit",
  subsets: ["latin"],
  weight: ["500", "600", "700", "800"],
  display: "swap",
});

const inter = Inter({
  variable: "--font-inter",
  subsets: ["latin"],
  display: "swap",
});

export const metadata: Metadata = {
  metadataBase: new URL(siteUrl),
  title: {
    default: "SantaMaria Fast Food | Hamburguesas en Santa Cruz",
    template: "%s | SantaMaria Fast Food",
  },
  description:
    "Cheese burgers, combos y bebidas bien frías en tus 13 sucursales SantaMaria. Pide en línea con delivery o retiro en tienda en Santa Cruz, Bolivia.",
  keywords: [
    "SantaMaria Fast Food",
    "hamburguesas",
    "cheese burger",
    "combos",
    "comida rápida",
    "delivery Santa Cruz",
    "retiro en tienda",
    "sucursales SantaMaria",
    "Santa Cruz",
    "Bolivia",
  ],
  applicationName: "SantaMaria Fast Food",
  openGraph: {
    title: "SantaMaria Fast Food | Hamburguesas hechas al momento",
    description:
      "Cheese burgers, combos y bebidas bien frías en tus 13 sucursales SantaMaria, con delivery y retiro en tienda en Santa Cruz.",
    type: "website",
    siteName: "SantaMaria Fast Food",
    url: siteUrl,
  },
  twitter: {
    card: "summary_large_image",
    title: "SantaMaria Fast Food | Hamburguesas hechas al momento",
    description:
      "Cheese burgers, combos y bebidas bien frías en tus 13 sucursales SantaMaria, con delivery y retiro en tienda en Santa Cruz.",
  },
};

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html
      lang="es"
      suppressHydrationWarning
      className={`${outfit.variable} ${inter.variable} h-full antialiased`}
    >
      <body className="min-h-full flex flex-col bg-cream text-ink">
        <noscript>
          <style>{`.split-word{opacity:1 !important;filter:none !important;transform:none !important}`}</style>
        </noscript>
        {/* Apply saved theme before paint to avoid a flash of the wrong theme */}
        <script
          dangerouslySetInnerHTML={{
            __html:
              "(function(){try{var t=localStorage.getItem('santamaria-theme');if(t==='dark'){document.documentElement.setAttribute('data-theme','dark');}else if(t==='light'){document.documentElement.setAttribute('data-theme','light');}}catch(e){}})();",
          }}
        />
        <ToastProvider>
          <FlashToast />
          <CartProvider>{children}</CartProvider>
        </ToastProvider>
      </body>
    </html>
  );
}
