cask "byte" do
  version "1.0.67"
  sha256 "1f35f8bd583dc39f9e33532b4dd7ea794cfe7a607e749ce1e6ff8eb44975f748"
  url "https://github.com/get-byteapp/byte/releases/download/v1.0.67/Byte_aarch64.dmg"

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
