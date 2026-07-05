cask "byte" do
  version "1.0.60"
  sha256 "bb16ef3f13556e587ba692f1d94bb0ff1c5132cfac4987b8679dee4746d004c2"
  url "https://github.com/get-byteapp/byte/releases/download/v1.0.60/Byte_aarch64.dmg"

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
