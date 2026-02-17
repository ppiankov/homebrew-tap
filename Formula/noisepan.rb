# typed: false
# frozen_string_literal: true

class Noisepan < Formula
  desc "Extract signal from noisy information streams"
  homepage "https://github.com/ppiankov/noisepan"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.2.1/noisepan_0.2.1_darwin_arm64.tar.gz"
      sha256 "697a072b3666ccee07706c03466158d2c3761129db710164384cfb26a80998b4"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.2.1/noisepan_0.2.1_darwin_amd64.tar.gz"
      sha256 "dbc0710ff5e9bbbb2f68823dce8e7b3ed2a578f4650e628b15fe483b58c5d9b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.2.1/noisepan_0.2.1_linux_arm64.tar.gz"
      sha256 "d956a3f6871e8ce3da69fbe0822f33049c56d980351045d78c9cf10315618bc3"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.2.1/noisepan_0.2.1_linux_amd64.tar.gz"
      sha256 "56de66ce1bf94c54333550263cc4fdaf79b9c31c411f98fe4ffba17640ca713e"
    end
  end

  def install
    bin.install "noisepan"
  end

  test do
    system "#{bin}/noisepan", "version"
  end
end
