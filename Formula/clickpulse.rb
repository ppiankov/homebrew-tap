# typed: false
# frozen_string_literal: true

class Clickpulse < Formula
  desc "A heartbeat monitor for ClickHouse — Prometheus metrics exporter"
  homepage "https://github.com/ppiankov/clickpulse"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ppiankov/clickpulse/releases/download/v0.2.4/clickpulse_0.2.4_darwin_amd64.tar.gz"
      sha256 "cb08e794dd323a343678a8d7917f46844967f91369120e44f038cf8e7672ff93"

      define_method(:install) do
        bin.install "clickpulse"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ppiankov/clickpulse/releases/download/v0.2.4/clickpulse_0.2.4_darwin_arm64.tar.gz"
      sha256 "6463ede02bbbd5e41171b3018a16372db0d26c261aa63970dc96d3ab3065632d"

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
      url "https://github.com/ppiankov/clickpulse/releases/download/v0.2.4/clickpulse_0.2.4_linux_arm64.tar.gz"
      sha256 "e05aa18d0e086a5a02258e955496e8cea583475caf0a5b40a166470c74865482"
      define_method(:install) do
        bin.install "clickpulse"
      end
    end
  end

  test do
    system "#{bin}/clickpulse", "version"
  end
end
