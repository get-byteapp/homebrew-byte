cask "byte" do
  version "1.0.62"
  sha256 "cce07222e8e43ee993c068b80d7eb25649aa954da58c9e50c1648b92296dc95d"
  url "https://github.com/get-byteapp/byte/releases/download/v1.0.62/Byte_aarch64.dmg"

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
