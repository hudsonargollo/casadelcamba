import { ConditionalHeader } from "@/components/conditional-header";
import { ConditionalFooter } from "@/components/conditional-footer";
import { SupportChat } from "@/components/support-chat";
import { getStoreSettings, renderAnnouncements } from "@/lib/settings";
import { getSelectedBranch } from "@/lib/branch";

// Store-wide settings (Admin → Settings) are loaded once here and passed to the
// client-side header / footer / chat.
export default async function StoreLayout({ children }: { children: React.ReactNode }) {
  const [settings, branch] = await Promise.all([getStoreSettings(), getSelectedBranch()]);
  return (
    <>
      <ConditionalHeader
        announcements={renderAnnouncements(settings)}
        branch={branch ? { name: branch.name } : null}
      />
      <main className="flex-1">{children}</main>
      <ConditionalFooter settings={settings} />
      <SupportChat settings={settings} />
    </>
  );
}
