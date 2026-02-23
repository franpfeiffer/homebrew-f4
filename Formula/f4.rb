class F4 < Formula
  desc "Simple text editor with Vim motions"
  homepage "https://github.com/franpfeiffer/F4"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/franpfeiffer/F4/releases/download/v#{version}/f4-aarch64-apple-darwin.tar.gz"
      sha256 "e7cbe6a500a409c3e13f016e223d1cdd161d0ccd73c4b7e92c4b3f4e38d943dc"
    end
    on_intel do
      url "https://github.com/franpfeiffer/F4/releases/download/v#{version}/f4-x86_64-apple-darwin.tar.gz"
      sha256 "080c99a0dcf252aa6bf9ab1645fa9f02dab8461eff6f7879b8134558b77863a9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/franpfeiffer/F4/releases/download/v#{version}/f4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3210eb3c567d874b412930582af36052afd10d24bec236d0bcace3c19e466d8e"
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
