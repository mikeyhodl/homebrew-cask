cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.40.2"
  sha256 arm:   "eeb32bfd07375bbc5227e6c0e04268683411eaf19583bba75c0a2114fddc04f2",
         intel: "c5826a1e570ca626df913d72b70a55b5df745a6801991fa2f3707fb68a43cf80"

  url "https://cdn.getpublii.com/Publii-#{version}-#{arch}.dmg"
  name "Publii"
  desc "Static website generator"
  homepage "https://getpublii.com/"

  livecheck do
    url "https://getpublii.com/download/"
    regex(/href=.*?Publii[._-]v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg/i)
  end

  app "Publii.app"

  zap trash: [
    "~/Documents/Publii",
    "~/Library/Application Support/Publii",
    "~/Library/Logs/Publii",
    "~/Library/Preferences/com.tidycustoms.publii.plist",
  ]
end
