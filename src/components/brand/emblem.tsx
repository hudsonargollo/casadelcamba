// The store's brand mark — the SantaMaria logo on a blue badge. `BurgerMark`
// is the line-art burger used for faint decorative watermarks where the
// full-colour mark would be too heavy.

type MarkProps = {
  size?: number;
  className?: string;
  /** Kept for call sites that still pass a colour; the logo carries its own. */
  color?: string;
  /** Highlight used by the burger watermark (cheese, sesame). */
  accent?: string;
};

export function Emblem({ size = 44, className = "" }: MarkProps) {
  return (
    // eslint-disable-next-line @next/next/no-img-element
    <img
      src="/images/santamaria-icon.webp"
      alt=""
      width={size}
      height={size}
      aria-hidden="true"
      className={`shrink-0 rounded-[22%] object-cover ${className}`}
      style={{ width: size, height: size }}
    />
  );
}

export function BurgerMark({
  size = 44,
  className = "",
  color = "currentColor",
  accent = "var(--color-accent)",
}: MarkProps) {
  return (
    <svg
      width={size}
      height={size}
      viewBox="0 0 64 64"
      fill="none"
      className={className}
      aria-hidden="true"
    >
      {/* top bun */}
      <path
        d="M8 27c0-9.4 10.7-16 24-16s24 6.6 24 16c0 2.2-1.4 3.6-3.6 3.6H11.6C9.4 30.6 8 29.2 8 27z"
        stroke={color}
        strokeWidth="3.2"
        strokeLinejoin="round"
      />
      {/* sesame */}
      <path d="M23 20l2 2M33 17l2 2M43 20l2 2" stroke={accent} strokeWidth="2.6" strokeLinecap="round" />
      {/* cheese */}
      <path
        d="M11 34h42l-5 5-4-3-5 4-4-3-5 4-4-3-5 4-4-3-3 2z"
        fill={accent}
        opacity="0.9"
      />
      {/* patty */}
      <path
        d="M12 39h40v6a5 5 0 0 1-5 5H17a5 5 0 0 1-5-5v-6z"
        stroke={color}
        strokeWidth="3.2"
        strokeLinejoin="round"
      />
      {/* bottom bun */}
      <path
        d="M11 50h42c0 6.2-6.6 10-21 10s-21-3.8-21-10z"
        stroke={color}
        strokeWidth="3.2"
        strokeLinejoin="round"
      />
    </svg>
  );
}
