cask "f4" do
  version "1.1.0"
  sha256 arm:   "e7cbe6a500a409c3e13f016e223d1cdd161d0ccd73c4b7e92c4b3f4e38d943dc",
         intel: "080c99a0dcf252aa6bf9ab1645fa9f02dab8461eff6f7879b8134558b77863a9"

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
