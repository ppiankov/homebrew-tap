# typed: false
# frozen_string_literal: true

class Noisepan < Formula
  desc "Extract signal from noisy information streams"
  homepage "https://github.com/ppiankov/noisepan"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.1.0/noisepan_0.1.0_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.1.0/noisepan_0.1.0_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.1.0/noisepan_0.1.0_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.1.0/noisepan_0.1.0_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "noisepan"
  end

  test do
    system "#{bin}/noisepan", "version"
  end
end
