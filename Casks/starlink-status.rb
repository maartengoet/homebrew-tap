cask "starlink-status" do
  version "0.1.1"
  sha256 "b4b3751b7a35e17315524e11a38d5f81db729993a9cfeea63ed7cdc07f0ba528"

  url "https://github.com/maartengoet/starlink-status/releases/download/v#{version}/StarlinkStatus-v#{version}-macos.zip"
  name "Starlink Status"
  desc "Menu bar monitor for Starlink Mini"
  homepage "https://github.com/maartengoet/starlink-status"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Starlink Status.app"

  uninstall quit: "nl.maartengoet.starlink-status"

  zap trash: [
    "~/Library/Application Support/Starlink Status",
    "~/Library/Preferences/nl.maartengoet.starlink-status.plist",
  ]
end
