cask "byte" do
  version "1.0.43"
  sha256 "b494d3a055647d30d4c9c9c5d90daff34a945c98de96d39d3676662fb28a6a51"
  url "https://github.com/get-byteapp/byte/releases/download/v1.0.43/Byte_aarch64.dmg"

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
