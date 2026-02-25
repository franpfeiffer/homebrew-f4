class F4 < Formula
  desc "Simple text editor with Vim motions"
  homepage "https://github.com/franpfeiffer/F4"
  version "1.1.5"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/franpfeiffer/F4/releases/download/v#{version}/f4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "722acdba585d1fe1d9f0d7eb711d19a0095a05b8ab281f0977b8a90105c00dda"
    end
  end

  def install
    bin.install "usr/bin/f4"
    (share/"applications").install "usr/share/applications/f4.desktop"
    (share/"icons/hicolor/256x256/apps").install "usr/share/icons/hicolor/256x256/apps/f4.png"
  end

  test do
    assert_predicate bin/"f4", :executable?
  end
end
