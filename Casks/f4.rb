cask "f4" do
  version "1.0.0"
  sha256 arm:   "AARCH64_APPLE_SHA256",
         intel: "X86_64_APPLE_SHA256"

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
