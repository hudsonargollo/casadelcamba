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
    default: "Casa del Camba | El mejor sabor de Santa Cruz",
    template: "%s | Casa del Camba",
  },
  description:
    "Comida típica cruceña desde 1986: majao de pato, picante de pollo, empanadas de keperí y parrilla. Pide en línea con delivery o retiro en tienda en Santa Cruz, Bolivia.",
  keywords: [
    "Casa del Camba",
    "comida típica cruceña",
    "majao de pato",
    "picante de pollo",
    "empanadas de keperí",
    "parrilla",
    "delivery Santa Cruz",
    "retiro en tienda",
    "Santa Cruz",
    "Bolivia",
  ],
  applicationName: "Casa del Camba",
  openGraph: {
    title: "Casa del Camba | El mejor sabor de Santa Cruz",
    description:
      "Comida típica cruceña desde 1986: majao de pato, picantes, empanadas de keperí y parrilla, con delivery y retiro en tienda en Santa Cruz.",
    type: "website",
    siteName: "Casa del Camba",
    url: siteUrl,
  },
  twitter: {
    card: "summary_large_image",
    title: "Casa del Camba | El mejor sabor de Santa Cruz",
    description:
      "Comida típica cruceña desde 1986: majao de pato, picantes, empanadas de keperí y parrilla, con delivery y retiro en tienda en Santa Cruz.",
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
              "(function(){try{var t=localStorage.getItem('casadelcamba-theme');if(t==='dark'){document.documentElement.setAttribute('data-theme','dark');}else if(t==='light'){document.documentElement.setAttribute('data-theme','light');}}catch(e){}})();",
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
