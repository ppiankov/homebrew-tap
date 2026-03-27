# typed: false
# frozen_string_literal: true

class Mongopulse < Formula
  desc "A heartbeat monitor for MongoDB — Prometheus metrics exporter"
  homepage "https://github.com/ppiankov/mongopulse"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ppiankov/mongopulse/releases/download/v0.2.0/mongopulse-darwin-amd64.tar.gz"
      sha256 "cb1dbbfa2ba94cfe09f44172caefadf91e8adeab1aea497a507f098450db39e2"

      define_method(:install) do
        bin.install "mongopulse"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ppiankov/mongopulse/releases/download/v0.2.0/mongopulse-darwin-arm64.tar.gz"
      sha256 "03a179153d21c80985b04481e570690535ffc34ffd076677be0258794a7f5d75"

      define_method(:install) do
        bin.install "mongopulse"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/ppiankov/mongopulse/releases/download/v0.2.0/mongopulse-linux-amd64.tar.gz"
      sha256 "84dcc17a2cb70c6403587652db1315fb1664cb5c327fd1afa8e16070b1742a30"
      define_method(:install) do
        bin.install "mongopulse"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ppiankov/mongopulse/releases/download/v0.2.0/mongopulse-linux-arm64.tar.gz"
      sha256 "a6c06dbe3de8459349d2c9987632de7ee5a651183eeb6595db34b4fc9379278e"
      define_method(:install) do
        bin.install "mongopulse"
      end
    end
  end

  test do
    system "#{bin}/mongopulse", "version"
  end
end
