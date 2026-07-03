cask "byte" do
  version "1.0.58"
  sha256 "b5660ce274cabffa0cae6e282522e777a4ccde7d4a887377937afd0df58451b0"
  url "https://github.com/get-byteapp/byte/releases/download/v1.0.58/Byte_aarch64.dmg"

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
