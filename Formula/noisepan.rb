# typed: false
# frozen_string_literal: true

class Noisepan < Formula
  desc "Extract signal from noisy information streams"
  homepage "https://github.com/ppiankov/noisepan"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.4.3/noisepan_0.4.3_darwin_arm64.tar.gz"
      sha256 "573ec047dad1319daf1523fa122064372ee44e3fdf8402cb7b180e90dd457e17"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.4.3/noisepan_0.4.3_darwin_amd64.tar.gz"
      sha256 "2fb8ee3669a549aa6057e14048f218277dff54e2c317398ba29bdb0c0d96b0e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.4.3/noisepan_0.4.3_linux_arm64.tar.gz"
      sha256 "f6b7e38435d3fa1548ce1c3186507cebba0e02c532ba9e75e62148e652c730ce"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.4.3/noisepan_0.4.3_linux_amd64.tar.gz"
      sha256 "0f238c870836f6eabe9b0df429d4e17127eedcd503e00d4935fffe187a17978e"
    end
  end

  def install
    bin.install "noisepan"
  end

  test do
    system "#{bin}/noisepan", "version"
  end
end
