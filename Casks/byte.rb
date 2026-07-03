cask "byte" do
  version "1.0.56"
  sha256 "f02229a8563e8a130e489b3c9c92b3ab313bda8fefe07c50534533d840507e4c"
  url "https://github.com/get-byteapp/byte/releases/download/v1.0.56/Byte_aarch64.dmg"

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
