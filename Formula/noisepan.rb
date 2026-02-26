# typed: false
# frozen_string_literal: true

class Noisepan < Formula
  desc "Extract signal from noisy information streams"
  homepage "https://github.com/ppiankov/noisepan"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.5.0/noisepan_0.5.0_darwin_arm64.tar.gz"
      sha256 "fcabcf0f159ef981ba9c58557f7306be21b15acc898316617bb8980c4af56d0b"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.5.0/noisepan_0.5.0_darwin_amd64.tar.gz"
      sha256 "a2236ba300a66f983ba2b6c10770291710581596dacd68be3edb2e69b3a5a480"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.5.0/noisepan_0.5.0_linux_arm64.tar.gz"
      sha256 "399493f984a894d353714a8712a17000b631e081868853b214b4c912a57819a9"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.5.0/noisepan_0.5.0_linux_amd64.tar.gz"
      sha256 "aa5d8dfba72ec9c55abc1c52fe8e3942cc3d1385fd768090fbb492ffdf7e99e1"
    end
  end

  def install
    bin.install "noisepan"
  end

  test do
    system "#{bin}/noisepan", "version"
  end
end
