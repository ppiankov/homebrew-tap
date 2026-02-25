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
      sha256 "b05352c2a552e99808d1c55610c9bf7f4f080684d8f0370f7634e54c17d2d000"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.4.1/noisepan_0.4.1_darwin_amd64.tar.gz"
      sha256 "55e39f59c59f6a2db4cc256a4551751b109d16ad4b1a641099fb5471b1d345b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.4.1/noisepan_0.4.1_linux_arm64.tar.gz"
      sha256 "1a2e4ffc8d7ce4aae3a99c751565caaf56458472d2aae76744e37cf60bed1c7a"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.4.1/noisepan_0.4.1_linux_amd64.tar.gz"
      sha256 "8a75396c9a68da6b13b61d66141491c3a5e48d8e168779dd7f17ce144f103ea8"
    end
  end

  def install
    bin.install "noisepan"
  end

  test do
    system "#{bin}/noisepan", "version"
  end
end
