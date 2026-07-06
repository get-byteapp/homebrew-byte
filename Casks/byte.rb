cask "byte" do
  version "1.0.66"
  sha256 "70ee8b9a79fc85d8d91d064d59590fec648219fb7cfe164b6f07b14b106f16c3"
  url "https://github.com/get-byteapp/byte/releases/download/v1.0.66/Byte_aarch64.dmg"

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
