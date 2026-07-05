cask "byte" do
  version "1.0.63"
  sha256 "bbe2f75c4f0864d6eec952a787e084dcfd0c574823038b3183170e08b315c5ef"
  url "https://github.com/get-byteapp/byte/releases/download/v1.0.63/Byte_aarch64.dmg"

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
