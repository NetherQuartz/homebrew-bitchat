cask "bitchat" do
  version "1.5.1"
  sha256 "845d8306e50e49cf5d910cdb404411fdca72e49fa9ed07e6b41abb8eb5a02099"

  url "https://github.com/NetherQuartz/bitchat-homebrew/releases/download/v#{version}/bitchat-macos-v#{version}.zip"

  name "bitchat"
  desc "Decentralized Bluetooth mesh chat"
  homepage "https://github.com/permissionlesstech/bitchat"

  app "bitchat.app"

  quarantine false
end
