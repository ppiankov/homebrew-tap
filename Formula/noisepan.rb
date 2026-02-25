# typed: false
# frozen_string_literal: true

class Noisepan < Formula
  desc "Extract signal from noisy information streams"
  homepage "https://github.com/ppiankov/noisepan"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.4.1/noisepan_0.4.1_darwin_arm64.tar.gz"
      sha256 "ddde27a48c5cbd32473acd24490b1e90b72a188285c3bc2e4bc54af36426b2e3"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.4.1/noisepan_0.4.1_darwin_amd64.tar.gz"
      sha256 "37f5c5ffc26adbed3d80dbebeb56c51d3f6519db31766f91d110c014f9624858"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.4.1/noisepan_0.4.1_linux_arm64.tar.gz"
      sha256 "6ca65bf4802dc00697c024f034cdda86bea19be6c55d8227d4135bf7a2a49987"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.4.1/noisepan_0.4.1_linux_amd64.tar.gz"
      sha256 "7a1b1d983416c2f1bdb04fcd6a352560b01c735e5e18062e54a013b8abeebbd1"
    end
  end

  def install
    bin.install "noisepan"
  end

  test do
    system "#{bin}/noisepan", "version"
  end
end
