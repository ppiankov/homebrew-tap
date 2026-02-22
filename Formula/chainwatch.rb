# typed: false
# frozen_string_literal: true

class Chainwatch < Formula
  desc "Runtime control plane for AI agent safety"
  homepage "https://github.com/ppiankov/chainwatch"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/chainwatch/releases/download/v1.2.1/chainwatch-darwin-arm64"
      sha256 "783e5bc2db7e03c9b54762fa6ead5ce92ec0525bd3c721ce5fd4a2c0159e1d6b"
    end
    on_intel do
      url "https://github.com/ppiankov/chainwatch/releases/download/v1.2.1/chainwatch-darwin-amd64"
      sha256 "30c4ded783ad0609fc97758f66ffab525fb1b3657e2799979e19a9d4a142b0f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/chainwatch/releases/download/v1.2.1/chainwatch-linux-arm64"
      sha256 "d444ea4b2355a1bdd2f6ae791135858f3479fee6d6baefb65a32ebcd202901c9"
    end
    on_intel do
      url "https://github.com/ppiankov/chainwatch/releases/download/v1.2.1/chainwatch-linux-amd64"
      sha256 "4c1b2ff9a9c89ba3de17d728d32dfdd7623b9a1a75a0eb094caded22475c77de"
    end
  end

  def install
    cpu = Hardware::CPU.arm? ? "arm64" : "amd64"
    os = OS.mac? ? "darwin" : "linux"
    bin.install "chainwatch-#{os}-#{cpu}" => "chainwatch"
  end

  test do
    assert_match "chainwatch", shell_output("#{bin}/chainwatch version")
  end
end
