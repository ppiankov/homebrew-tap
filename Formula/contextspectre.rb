# typed: false
# frozen_string_literal: true

class Contextspectre < Formula
  desc "Claude Code conversation context manager"
  homepage "https://github.com/ppiankov/contextspectre"
  version "0.33.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ppiankov/contextspectre/releases/download/v0.33.3/contextspectre_0.33.3_darwin_amd64.tar.gz"
      sha256 "e9eb7eb433bec66dba210ca7ff45e5c303f062f0b04b444cf1e29cc1e3b85662"

      define_method(:install) do
        bin.install "contextspectre"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ppiankov/contextspectre/releases/download/v0.33.3/contextspectre_0.33.3_darwin_arm64.tar.gz"
      sha256 "6418a0a5011fc094e40adfdd9187a431fc487d1b25aed7c92658516b4d3781a9"

      define_method(:install) do
        bin.install "contextspectre"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/ppiankov/contextspectre/releases/download/v0.33.3/contextspectre_0.33.3_linux_amd64.tar.gz"
      sha256 "f6dc35c19c605de3a05af3d65adc42e7248e9b0e84d03741d712e91102c660d5"
      define_method(:install) do
        bin.install "contextspectre"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ppiankov/contextspectre/releases/download/v0.33.3/contextspectre_0.33.3_linux_arm64.tar.gz"
      sha256 "5f6478d6449a1dadb06c15ddb118c15d90c12c7bba79fa8597635533e1986af3"
      define_method(:install) do
        bin.install "contextspectre"
      end
    end
  end

  test do
    system "#{bin}/contextspectre", "version"
  end
end
