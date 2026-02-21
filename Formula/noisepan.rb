# typed: false
# frozen_string_literal: true

class Noisepan < Formula
  desc "Extract signal from noisy information streams"
  homepage "https://github.com/ppiankov/noisepan"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.3.0/noisepan_0.3.0_darwin_arm64.tar.gz"
      sha256 "a88e10bcc72d5f188c22a8cdadc51ca580348390a09d84546e3091e8a4c62092"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.3.0/noisepan_0.3.0_darwin_amd64.tar.gz"
      sha256 "d6e09302cf42a7ce95b3b665d18ed69f043aedaa0f96960b9efe08fa0ae8f55c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.3.0/noisepan_0.3.0_linux_arm64.tar.gz"
      sha256 "f20a54d0d914726a69adde8feb3e14c2085b9c55cc121763366d259baa429e37"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.3.0/noisepan_0.3.0_linux_amd64.tar.gz"
      sha256 "afa9ff7a338ab79e6ec2bffde3f54fb689bbb9a70fdfce62072daef169e50c31"
    end
  end

  def install
    bin.install "noisepan"
  end

  test do
    system "#{bin}/noisepan", "version"
  end
end
