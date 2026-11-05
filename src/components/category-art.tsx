/** Line icons for fast-food category tiles. */

type Props = { className?: string };

function Burger({ className = "" }: Props) {
  return (
    <svg viewBox="0 0 120 120" fill="none" stroke="currentColor" strokeWidth="2" className={className} aria-hidden="true">
      {/* top bun */}
      <path d="M28 54c0-16 14-27 32-27s32 11 32 27" strokeLinejoin="round" />
      {/* cheese */}
      <path d="M26 64c8 5 16 2 22 6s14 2 22-2 16 0 24-4" strokeLinejoin="round" opacity="0.8" />
      {/* patty */}
      <path d="M28 74h64" strokeLinecap="round" strokeWidth="7" opacity="0.85" />
      {/* lettuce */}
      <path d="M26 88c6-4 12 4 18 0s12-4 18 0 12 4 18 0 10 4 14 0" strokeLinecap="round" opacity="0.7" />
      {/* bottom bun */}
      <path d="M28 88c0 6 14 10 32 10s32-4 32-10" strokeLinejoin="round" />
      {/* sesame */}
      <path d="M44 46h1M58 40h1M72 46h1" strokeLinecap="round" opacity="0.6" />
    </svg>
  );
}

function Fries({ className = "" }: Props) {
  return (
    <svg viewBox="0 0 120 120" fill="none" stroke="currentColor" strokeWidth="2" className={className} aria-hidden="true">
      {/* fries */}
      <path d="M44 54V26M54 52V20M64 52V24M74 54V30" strokeLinecap="round" />
      <path d="M82 58l4-16M38 58l-4-14" strokeLinecap="round" opacity="0.8" />
      {/* carton */}
      <path d="M34 54h52l-6 44a6 6 0 0 1-6 5H46a6 6 0 0 1-6-5l-6-44z" strokeLinejoin="round" />
      <path d="M44 72h32" strokeWidth="1.5" opacity="0.55" strokeLinecap="round" />
    </svg>
  );
}

function Dessert({ className = "" }: Props) {
  return (
    <svg viewBox="0 0 120 120" fill="none" stroke="currentColor" strokeWidth="2" className={className} aria-hidden="true">
      {/* cup */}
      <path d="M38 58h44l-5 36a6 6 0 0 1-6 5H49a6 6 0 0 1-6-5l-5-36z" strokeLinejoin="round" />
      {/* layers */}
      <path d="M41 72h38M43 86h34" strokeWidth="1.5" opacity="0.55" />
      {/* swirl */}
      <path d="M42 58c2-8 8-12 18-12s16 5 18 12" strokeLinejoin="round" />
      <path d="M50 46c2-6 6-9 10-9s8 3 10 9" strokeLinejoin="round" opacity="0.8" />
      <path d="M60 37v-8" strokeLinecap="round" />
      {/* spoon */}
      <ellipse cx="88" cy="34" rx="6" ry="8" />
      <path d="M88 42v10" strokeLinecap="round" />
    </svg>
  );
}

function Drink({ className = "" }: Props) {
  return (
    <svg viewBox="0 0 120 120" fill="none" stroke="currentColor" strokeWidth="2" className={className} aria-hidden="true">
      {/* cup */}
      <path d="M40 38h40l-5 56a6 6 0 0 1-6 5H51a6 6 0 0 1-6-5l-5-56z" strokeLinejoin="round" />
      {/* lid */}
      <path d="M36 38h48v-6a3 3 0 0 0-3-3H39a3 3 0 0 0-3 3v6z" strokeLinejoin="round" />
      {/* straw */}
      <path d="M62 29l6-17" strokeLinecap="round" />
      {/* band */}
      <path d="M42 62h36" strokeWidth="1.5" opacity="0.55" />
      {/* bubbles */}
      <path d="M52 80c3-3 6-2 6 1s-4 5-6 3" opacity="0.6" strokeLinecap="round" />
    </svg>
  );
}

function Star({ className = "" }: Props) {
  return (
    <svg viewBox="0 0 120 120" fill="none" stroke="currentColor" strokeWidth="2" className={className} aria-hidden="true">
      {/* star */}
      <path
        d="M60 20l11.6 23.5 25.9 3.8-18.7 18.2 4.4 25.8L60 78.1 36.8 91.3l4.4-25.8-18.7-18.2 25.9-3.8L60 20z"
        strokeLinejoin="round"
      />
      {/* flame flicker */}
      <path d="M60 46c3 5 5 8 5 12a5 5 0 0 1-10 0c0-4 2-7 5-12z" strokeLinejoin="round" opacity="0.7" />
    </svg>
  );
}

function Fallback({ className = "" }: Props) {
  return <Burger className={className} />;
}

const MAP: Record<string, (p: Props) => React.ReactElement> = {
  imperdibles: Star,
  "plus-days": Fries,
  burgers: Burger,
  postres: Dessert,
  bebidas: Drink,
};

export function CategoryArt({ slug, className }: { slug: string; className?: string }) {
  const Art = MAP[slug] ?? Fallback;
  return <Art className={className} />;
}
