cask "f4" do
  version "1.1.3"
  sha256 arm:   "3707b35d10087696b7acecd65c9b9581670526c06be2f162f35e3364cd79a5c1",
         intel: "6563ff996735dd61782c8f62182b11b8a142f850b5336c7a5ebfbec4d8c2ef79"

  url "https://github.com/franpfeiffer/F4/releases/download/v#{version}/f4-#{Hardware::CPU.arm? ? "aarch64-apple-darwin" : "x86_64-apple-darwin"}.dmg"
  name "F4"
  desc "Simple text editor with Vim motions"
  homepage "https://github.com/franpfeiffer/F4"

  app "F4.app"

  zap trash: [
    "~/Library/Application Support/F4",
    "~/Library/Preferences/com.franpfeiffer.F4.plist",
  ]
end
