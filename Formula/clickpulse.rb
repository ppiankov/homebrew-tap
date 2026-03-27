# typed: false
# frozen_string_literal: true

class Clickpulse < Formula
  desc "A heartbeat monitor for ClickHouse — Prometheus metrics exporter"
  homepage "https://github.com/ppiankov/clickpulse"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ppiankov/clickpulse/releases/download/v0.2.3/clickpulse_0.2.3_darwin_amd64.tar.gz"
      sha256 "194944a9eea12dbd28aedf65a463cdf8fe83c95bc524e00ef1c4ba5583354bd8"

      define_method(:install) do
        bin.install "clickpulse"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ppiankov/clickpulse/releases/download/v0.2.3/clickpulse_0.2.3_darwin_arm64.tar.gz"
      sha256 "cc92de360c8e654f22f4b4b91cf3bb12997f0379d4e90ea26befae32fff00231"

      define_method(:install) do
        bin.install "clickpulse"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/ppiankov/clickpulse/releases/download/v0.2.4/clickpulse_0.2.4_linux_amd64.tar.gz"
      sha256 "0301a0f051403938dfda66640dc0b532baa90da23c98322d4a18b18f0678166e"
      define_method(:install) do
        bin.install "clickpulse"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ppiankov/clickpulse/releases/download/v0.2.3/clickpulse_0.2.3_linux_arm64.tar.gz"
      sha256 "5488d41c99a6126411506eae0a9b94e0d4963e88908fee1685b74c5228bc91d1"
      define_method(:install) do
        bin.install "clickpulse"
      end
    end
  end

  test do
    system "#{bin}/clickpulse", "version"
  end
end
