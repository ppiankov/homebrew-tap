# typed: false
# frozen_string_literal: true

class Noisepan < Formula
  desc "Extract signal from noisy information streams"
  homepage "https://github.com/ppiankov/noisepan"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.1.0/noisepan_0.1.0_darwin_arm64.tar.gz"
      sha256 "99e8b0981f298c38cfe1ce951ea7ef27741715f1ba52a19773fc00081ba0b0e0"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.1.0/noisepan_0.1.0_darwin_amd64.tar.gz"
      sha256 "17decf33d2ed4f4100e03d3c6dc2ce9988354671fa6df4e6f471e2f73bf53367"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.1.0/noisepan_0.1.0_linux_arm64.tar.gz"
      sha256 "720abe3775263914dc7f2b9ba8120c6d49f42f9dcd1b647ea0ed1b5528af5df5"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.1.0/noisepan_0.1.0_linux_amd64.tar.gz"
      sha256 "db0010016918971f1f3df127ddc5962b8f8c55cbd5e7cf27714f420026d5492e"
    end
  end

  def install
    bin.install "noisepan"
  end

  test do
    system "#{bin}/noisepan", "version"
  end
end
