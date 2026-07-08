cask "bitchat" do
  version "1.6.0"
  sha256 "09ca55ecc311eab9c797c933b21d767acdb947cb2c824dfefb7fab2a3c2802d1"

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
