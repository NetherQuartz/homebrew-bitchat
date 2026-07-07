cask "bitchat" do
  version "1.5.4"
  sha256 "692a06f4d76f6d7f7f1c95f0bd3e4050eeaaed84e3159c101450b355add1d6a6"

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
