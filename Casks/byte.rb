cask "byte" do
  version "1.0.51"
  sha256 "ae79d369e1a818a343929d53c2431b32aadeb7ba751c3c9b5182c86270ca8b06"
  url "https://github.com/get-byteapp/byte/releases/download/v1.0.51/Byte_aarch64.dmg"

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
