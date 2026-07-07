cask "byte" do
  version "1.0.68"
  sha256 "0bf304f258ee66d71cf199f5f4f2d165811a82d066e119f659ea06e0402f2bcb"
  url "https://github.com/get-byteapp/byte/releases/download/v1.0.68/Byte_aarch64.dmg"

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
