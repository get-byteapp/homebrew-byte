cask "byte" do
  version "1.0.59"
  sha256 "1c6f7a9910bb6bf066c7fdefd273ccbd2676aad0223550fa7ba07d4b3949fa28"
  url "https://github.com/get-byteapp/byte/releases/download/v1.0.59/Byte_aarch64.dmg"

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
