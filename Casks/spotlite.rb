cask "spotlite" do
  version "1.0"
  sha256 "dd61bb42a3652c746d24118d22687c32a30dd7cfd188403707ccf502fc832f71"

  url "https://github.com/maartengoet/spotlite/releases/download/v#{version}/Spotlite-v#{version}-macos.zip"
  name "Spotlite"
  desc "Presenter overlay"
  homepage "https://github.com/maartengoet/spotlite"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Spotlite.app"

  uninstall quit: "dev.maartengoet.spotlite"

  zap trash: "~/Library/Preferences/dev.maartengoet.spotlite.plist"
end
