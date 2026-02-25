class F4 < Formula
  desc "Simple text editor with Vim motions"
  homepage "https://github.com/franpfeiffer/F4"
  version "1.1.4"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/franpfeiffer/F4/releases/download/v#{version}/f4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eb7a1e4d478d950761845cd921bc1417b65e0e591abde10429f23f8cf8f9a85e"
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
