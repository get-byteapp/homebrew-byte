cask "byte" do
  version "1.0.65"
  sha256 "2b564aa7ac0c684254b82f2f7c21f892dbc3b518c8d4a1860986af647df9ab5f"
  url "https://github.com/get-byteapp/byte/releases/download/v1.0.65/Byte_aarch64.dmg"

  name "Byte"
  desc "AI assistant for your desktop"
  homepage "https://github.com/get-byteapp/byte"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Byte.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-rd", "com.apple.quarantine", "#{appdir}/Byte.app"]
  end
end
