cask "byte" do
  version "1.0.61"
  sha256 "ca244583d1e0e66edd9aaf07deb97550ff27ac8d6e3d324d0284fffb8e88b780"
  url "https://github.com/get-byteapp/byte/releases/download/v1.0.61/Byte_aarch64.dmg"

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
