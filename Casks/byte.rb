cask "byte" do
  version "1.0.70"
  sha256 "4e6dd35c60a3d2b5059a60ba7a4cb86048d938175fcec550b6c913fbd4c13088"
  url "https://github.com/get-byteapp/byte/releases/download/v1.0.70/Byte_aarch64.dmg"

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
