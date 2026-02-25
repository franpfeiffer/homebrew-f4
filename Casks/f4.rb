cask "f4" do
  version "1.1.5"
  on_arm do
    url "https://github.com/franpfeiffer/F4/releases/download/v#{version}/f4-aarch64-apple-darwin.dmg"
    sha256 "1e18352728e23ce6a98da64a79f50282fee58bd701079e6e5e6bfd1664873fbf"
  end
  on_intel do
    url "https://github.com/franpfeiffer/F4/releases/download/v#{version}/f4-x86_64-apple-darwin.dmg"
    sha256 "eaaca1c73e8ab9943551718ef39adadf6dc541b6f34137ebd9e219f679a80a47"
  end
  name "F4"
  desc "Simple text editor with Vim motions"
  homepage "https://github.com/franpfeiffer/F4"

  depends_on macos: ">= :ventura"

  app "F4.app"

  zap trash: [
    "~/Library/Application Support/F4",
    "~/Library/Preferences/com.franpfeiffer.F4.plist",
  ]
end
