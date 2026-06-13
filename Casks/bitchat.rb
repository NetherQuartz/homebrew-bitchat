cask "bitchat" do
  version "1.5.3"
  sha256 "cb5fe1d79dbc0c8273e30f4ca7ebe42c6892b9b7bf8360f31f4643036d2bf0d7"

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
