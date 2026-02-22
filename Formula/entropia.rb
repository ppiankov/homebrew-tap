# typed: false
# frozen_string_literal: true

class Entropia < Formula
  desc "Evidence support and decay diagnostics for public claims"
  homepage "https://github.com/ppiankov/entropia"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/entropia/releases/download/v0.3.0/entropia_0.3.0_darwin_arm64.tar.gz"
      sha256 "3cc80da185428986a0f18a09ebff7e8c70ec08641d1af5ee5152390758c0b1bd"
    end
    on_intel do
      url "https://github.com/ppiankov/entropia/releases/download/v0.3.0/entropia_0.3.0_darwin_amd64.tar.gz"
      sha256 "5c78943f9ae1355f96fb195325e12bbe852470092a1222b16f85402e57e1c545"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/entropia/releases/download/v0.3.0/entropia_0.3.0_linux_arm64.tar.gz"
      sha256 "a2420948ead430815e8ef83e75ad6b6964f3afa39916a3e2b58d6eccaf75b8be"
    end
    on_intel do
      url "https://github.com/ppiankov/entropia/releases/download/v0.3.0/entropia_0.3.0_linux_amd64.tar.gz"
      sha256 "2a95d4f54ef2d74dd13b0b80f4b3705b2ffb873842b261edebe283f265569cec"
    end
  end

  def install
    bin.install "entropia"
  end

  test do
    system "#{bin}/entropia", "version"
  end
end
