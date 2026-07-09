cask "bitchat" do
  version "1.7.0"
  sha256 "fbbc4042d1dd8505c0448252ee6f14ccdaf28ad1bb138ec90f256b447dca7fa6"

  url "https://github.com/NetherQuartz/homebrew-bitchat/releases/download/v#{version}/bitchat-macos-v#{version}.zip"

  name "bitchat"
  desc "Decentralized Bluetooth mesh chat"
  homepage "https://github.com/permissionlesstech/bitchat"

  app "bitchat.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/bitchat.app"],
      sudo: false
  end
end
