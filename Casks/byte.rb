cask "byte" do
  version "1.0.41"
  sha256 "5f3f3bbccdf964f8468446cce8e6186340d731527fbc2b32a0e5f01996f7dd15"
  url "https://github.com/get-byteapp/byte/releases/download/v1.0.41/Byte_aarch64.dmg"

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
