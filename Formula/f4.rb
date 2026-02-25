class F4 < Formula
  desc "Simple text editor with Vim motions"
  homepage "https://github.com/franpfeiffer/F4"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/franpfeiffer/F4/releases/download/v#{version}/f4-aarch64-apple-darwin.tar.gz"
      sha256 "836ed857631e5f4bfe062361158a1f1662d14f78b943c43088cfbdee48262687"
    end
    on_intel do
      url "https://github.com/franpfeiffer/F4/releases/download/v#{version}/f4-x86_64-apple-darwin.tar.gz"
      sha256 "efa27fac87bf37d7b20eaf2651f163905e0782a1f11c10b450d1405eb1cc13ea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/franpfeiffer/F4/releases/download/v#{version}/f4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4b66d477667c193fe5c3856fc123b3038ad17586e8f24289ae2adc52aa8c9cd6"
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
