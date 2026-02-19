# typed: false
# frozen_string_literal: true

class Entropia < Formula
  desc "Evidence support and decay diagnostics for public claims"
  homepage "https://github.com/ppiankov/entropia"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/entropia/releases/download/v0.2.0/entropia_0.2.0_darwin_arm64.tar.gz"
      sha256 "75f2839770e22ba4a6830f34a520e2c53a31f82ffd0f0e9436047077dcf01735"
    end
    on_intel do
      url "https://github.com/ppiankov/entropia/releases/download/v0.2.0/entropia_0.2.0_darwin_amd64.tar.gz"
      sha256 "5769fbc677fcaba401bee1e6007cc00e4081818d0c8fe00ef972db46597f20c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/entropia/releases/download/v0.2.0/entropia_0.2.0_linux_arm64.tar.gz"
      sha256 "436ea71cff7fa591c5c3385a0e142ad75d05d744e0995eda2aedcd109d18321e"
    end
    on_intel do
      url "https://github.com/ppiankov/entropia/releases/download/v0.2.0/entropia_0.2.0_linux_amd64.tar.gz"
      sha256 "6cdb8a769e0028107157c8996b8f031f9d7ea3b31a449c8cb2027c5d1a120ab7"
    end
  end

  def install
    bin.install "entropia"
  end

  test do
    system "#{bin}/entropia", "version"
  end
end
