cask "byte" do
  version "1.0.69"
  sha256 "cee0d5c937ad5719d690cc03cd9f320db269d49457608f379760792796192183"
  url "https://github.com/get-byteapp/byte/releases/download/v1.0.69/Byte_aarch64.dmg"

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
