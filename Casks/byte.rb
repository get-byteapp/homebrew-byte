cask "byte" do
  version "1.0.45"
  sha256 "35b5517ca17d4c9cbeaa47eec4aae38efc351b2086b3eeef8b733f1e265fb809"
  url "https://github.com/get-byteapp/byte/releases/download/v1.0.45/Byte_aarch64.dmg"

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
