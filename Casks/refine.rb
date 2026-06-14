cask "refine" do
  version "1.0.0"
  sha256 "43eb0fe476eced47acf7e13d170bd6289c1756ab92641743679591329bbe77be"

  url "https://github.com/maartengoet/refine/releases/download/v#{version}/Refine-v#{version}-macos.zip"
  name "Refine"
  desc "Menu bar formatter for social posts"
  homepage "https://github.com/maartengoet/refine"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Refine.app"

  uninstall quit:       "dev.maartengoet.refine",
            login_item: "Refine"

  zap trash: "~/Library/Preferences/dev.maartengoet.refine.plist"
end
