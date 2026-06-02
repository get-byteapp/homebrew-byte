cask "byte" do
  version "1.0.0"
  sha256 "59a432938df6b90aada5764f0020d33820aae03c28dd3f4be918a323d272d8a1"
  url "https://github.com/get-byteapp/byte/releases/download/v1.0.0/Byte_aarch64.dmg"

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
