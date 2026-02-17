# typed: false
# frozen_string_literal: true

class Runforge < Formula
  desc "Dependency-aware parallel task runner for AI coding agents"
  homepage "https://github.com/ppiankov/runforge"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/runforge/releases/download/v0.1.0/runforge_0.1.0_darwin_arm64.tar.gz"
      sha256 "43762178f1f0c74f64456b9ec0d89b3e2bb83693a5fce9db965c0814c35255ce"
    end
    on_intel do
      url "https://github.com/ppiankov/runforge/releases/download/v0.1.0/runforge_0.1.0_darwin_amd64.tar.gz"
      sha256 "419a4909980eeba3ac62634a12b02dcdfb69b0607767e85f932dea95c1b837a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/runforge/releases/download/v0.1.0/runforge_0.1.0_linux_arm64.tar.gz"
      sha256 "6d293b60327704f95fbc534852494927afeee2cc8ae1e376753f5483a80bb6a8"
    end
    on_intel do
      url "https://github.com/ppiankov/runforge/releases/download/v0.1.0/runforge_0.1.0_linux_amd64.tar.gz"
      sha256 "b4fc59a6937339b4ddd2151dc2ffacee555aaed3ba7ac6180b26b26d9fc52770"
    end
  end

  def install
    bin.install "runforge"
  end

  test do
    system "#{bin}/runforge", "version"
  end
end
