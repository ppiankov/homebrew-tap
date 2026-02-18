# typed: false
# frozen_string_literal: true

class Noisepan < Formula
  desc "Extract signal from noisy information streams"
  homepage "https://github.com/ppiankov/noisepan"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.2.2/noisepan_0.2.2_darwin_arm64.tar.gz"
      sha256 "daf9cc97af096e96c6e353ea6fec29d9738e22e7f5d956473071983d62f2ea43"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.2.2/noisepan_0.2.2_darwin_amd64.tar.gz"
      sha256 "e2c7a81c2ca406beae2665251301e54cf48db928ad4b1fccc27615dfb38f8957"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.2.2/noisepan_0.2.2_linux_arm64.tar.gz"
      sha256 "792bd55772a6a1daf8592a72e322715579b7f0168a7c95bd599265323481032e"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.2.2/noisepan_0.2.2_linux_amd64.tar.gz"
      sha256 "5a9d107d2e8e4ab48a79a1c3a2913d5079f2a8eeaa817e166756db7cb56cc789"
    end
  end

  def install
    bin.install "noisepan"
  end

  test do
    system "#{bin}/noisepan", "version"
  end
end
