cask "f4" do
  version "1.1.4"
  sha256 arm:   "fcac7e254e2afeb743bd66a8014ebe1f6c0373da2e96945a57871cd666fd01b9",
         intel: "79940d98552b929c9cde5747e86d843f0246192d05de05dc4848963fbb8de1ef"

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
