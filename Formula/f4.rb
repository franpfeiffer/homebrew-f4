class F4 < Formula
  desc "Simple text editor with Vim motions"
  homepage "https://github.com/franpfeiffer/F4"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/franpfeiffer/F4/releases/download/v#{version}/f4-aarch64-apple-darwin.tar.gz"
      sha256 "AARCH64_APPLE_SHA256"
    end
    on_intel do
      url "https://github.com/franpfeiffer/F4/releases/download/v#{version}/f4-x86_64-apple-darwin.tar.gz"
      sha256 "X86_64_APPLE_SHA256"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/franpfeiffer/F4/releases/download/v#{version}/f4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "X86_64_LINUX_SHA256"
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
