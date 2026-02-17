# typed: false
# frozen_string_literal: true

class Noisepan < Formula
  desc "Extract signal from noisy information streams"
  homepage "https://github.com/ppiankov/noisepan"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.2.0/noisepan_0.2.0_darwin_arm64.tar.gz"
      sha256 "73d67ec293773a0b9c7a1169efeec7c15009625eff8be6534f48f831ebf3808c"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.2.0/noisepan_0.2.0_darwin_amd64.tar.gz"
      sha256 "b68b86c2752e46a792f25711a7058ead0e7232e7e260107848c95667846618b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.2.0/noisepan_0.2.0_linux_arm64.tar.gz"
      sha256 "e742ba67ea50130682d090543c351d66ed0c8682a00bee98b2fdb4cd1668b542"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.2.0/noisepan_0.2.0_linux_amd64.tar.gz"
      sha256 "8ee612ca1a9a67edd6b525cfcc19580cd453d493c40d6f6b37e0442d035d3b18"
    end
  end

  def install
    bin.install "noisepan"
  end

  test do
    system "#{bin}/noisepan", "version"
  end
end
