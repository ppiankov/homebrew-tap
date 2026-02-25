# typed: false
# frozen_string_literal: true

class Noisepan < Formula
  desc "Extract signal from noisy information streams"
  homepage "https://github.com/ppiankov/noisepan"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.4.2/noisepan_0.4.2_darwin_arm64.tar.gz"
      sha256 "352fedc359b4632648be63e0286a0948da68a3763914666d7d5c56bf970c7ee7"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.4.2/noisepan_0.4.2_darwin_amd64.tar.gz"
      sha256 "2596722e88acf626176ed11822163ed3b1b853c4bbb636f7a4217092b533f46b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.4.2/noisepan_0.4.2_linux_arm64.tar.gz"
      sha256 "d7926f148d996dd581cce805e04b55f2c52cc1cc187f3fe6527667d101bed46b"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.4.2/noisepan_0.4.2_linux_amd64.tar.gz"
      sha256 "0d148e20a8b45f4838f4ddc91d355098d46bd1823beffc85ac5c5028765c0429"
    end
  end

  def install
    bin.install "noisepan"
  end

  test do
    system "#{bin}/noisepan", "version"
  end
end
