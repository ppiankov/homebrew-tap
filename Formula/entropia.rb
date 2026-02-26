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
      sha256 "9063c0ba04442dc90b2ec81eb2bba93657d9c1f5c84cf5f4383f6bbbad411f85"
    end
    on_intel do
      url "https://github.com/ppiankov/entropia/releases/download/v0.3.0/entropia_0.3.0_darwin_amd64.tar.gz"
      sha256 "b0955388b0996e4c43510caea9785907bf56a2ebfd7d49b774fdaa9deafa2544"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/entropia/releases/download/v0.3.0/entropia_0.3.0_linux_arm64.tar.gz"
      sha256 "ab560323b09aa95e4a57a2a7970c07bb9a5e3a6dfe1ac0c96f30290b6317ff76"
    end
    on_intel do
      url "https://github.com/ppiankov/entropia/releases/download/v0.3.0/entropia_0.3.0_linux_amd64.tar.gz"
      sha256 "d0e051726b050ee47c64b64126bdc64b0a58da6ed682bb7e82dc9558d25a2a0d"
    end
  end

  def install
    bin.install "entropia"
  end

  test do
    system "#{bin}/entropia", "version"
  end
end
