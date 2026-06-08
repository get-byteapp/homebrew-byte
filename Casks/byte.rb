cask "byte" do
  version "1.0.46"
  sha256 "525538723beac5b2d13f0af5f707b4a00c7884f0abb191963c85d495e799f5e1"
  url "https://github.com/get-byteapp/byte/releases/download/v1.0.46/Byte_aarch64.dmg"

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
