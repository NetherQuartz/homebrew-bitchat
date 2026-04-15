cask "bitchat" do
  version "1.2.3"
  sha256 "abc123..."

  url "https://github.com/NetherQuartz/bitchat-homebrew/releases/download/v#{version}/bitchat-macos-v#{version}.zip"

  name "bitchat"
  desc "Decentralized Bluetooth mesh chat"
  homepage "https://github.com/permissionlesstech/bitchat"

  app "bitchat.app"

  quarantine false
end
