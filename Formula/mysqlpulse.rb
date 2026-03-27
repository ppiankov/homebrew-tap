# typed: false
# frozen_string_literal: true

class Mysqlpulse < Formula
  desc "A heartbeat monitor for MySQL — Prometheus metrics exporter"
  homepage "https://github.com/ppiankov/mysqlpulse"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ppiankov/mysqlpulse/releases/download/v0.1.0/mysqlpulse-darwin-amd64"
      sha256 "3adc9396de42d084dfac603bd1bdd3da510929c94594b01c6bd161319574d7ba"

      define_method(:install) do
        bin.install "mysqlpulse-darwin-amd64" => "mysqlpulse"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ppiankov/mysqlpulse/releases/download/v0.1.0/mysqlpulse-darwin-arm64"
      sha256 "1bb4ea0c044a1e933b74332176a68f93776f6572859a1e61055ebfb2b7a5899c"

      define_method(:install) do
        bin.install "mysqlpulse-darwin-arm64" => "mysqlpulse"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/ppiankov/mysqlpulse/releases/download/v0.1.0/mysqlpulse-linux-amd64"
      sha256 "16ee0e2dc0ff5eafba86bee26a6ac5a8393038e93fda7a123b28234f56f6a21f"
      define_method(:install) do
        bin.install "mysqlpulse-linux-amd64" => "mysqlpulse"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ppiankov/mysqlpulse/releases/download/v0.1.0/mysqlpulse-linux-arm64"
      sha256 "d3d758a3bc6cc542d1eecb1eb1a4603edf51c3f470e8a9ba6372a8721d3b851b"
      define_method(:install) do
        bin.install "mysqlpulse-linux-arm64" => "mysqlpulse"
      end
    end
  end

  test do
    system "#{bin}/mysqlpulse", "version"
  end
end
