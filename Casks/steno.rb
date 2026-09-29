cask "steno" do
  version "1.1"
  sha256 "8e3c8975fa7327dba5b724ac84e8c13cca08b687cd7fa2b5b93be6984330187b"

  url "https://github.com/Thesimpleex/steno/releases/download/v#{version}/Steno.dmg"
  name "Steno"
  desc "Dictation and meeting notes, transcribed locally with Whisper"
  homepage "https://www.majores.store/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Steno.app"

  zap trash: [
    "~/Library/Application Support/Steno",
    "~/Library/Preferences/io.github.thesimpleex.steno.plist",
  ]
end
