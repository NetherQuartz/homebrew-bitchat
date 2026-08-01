cask "bitchat" do
  version "1.7.1"
  sha256 "0fb8f92f4ab961f03eb46bdcc410f240fb46e384135eb3d5d75ab5f8828e9974"

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
