cask "byte" do
  version "1.0.44"
  sha256 "cda640b7bda4ce0f9598dc4fa1376263d6ede9f8965157bfef55f1e15e93d655"
  url "https://github.com/get-byteapp/byte/releases/download/v1.0.44/Byte_aarch64.dmg"

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
