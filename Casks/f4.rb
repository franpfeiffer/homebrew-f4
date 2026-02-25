cask "f4" do
  version "1.1.1"
  sha256 arm:   "deedce9e76d114b24c82f721c14ac949ed0948e1876c830c5e2b642208948079",
         intel: "34abb9fb252fdf9abd9eaead03d31cce0a0c0ee03fa1234974257f091af30b1f"

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
