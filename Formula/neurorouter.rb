# typed: false
# frozen_string_literal: true

class Neurorouter < Formula
  desc "LLM proxy that cleans, protects, and stabilizes AI sessions before they hit the model"
  homepage "https://neurorouter.dev"
  version "0.1.0"
  license "AGPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ppiankov/neurorouter/releases/download/v0.1.0/neurorouter_0.1.0_darwin_amd64.tar.gz"
      sha256 "b634d60f512d1e6b173722d08bce4d1ab6de277b7c93f48ab0e151564439f05a"

      define_method(:install) do
        bin.install "neurorouter"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ppiankov/neurorouter/releases/download/v0.1.0/neurorouter_0.1.0_darwin_arm64.tar.gz"
      sha256 "37a5ebd969a8c629ab5e4a11a88062a0fb01168eda37b6355e5346b0b9473763"

      define_method(:install) do
        bin.install "neurorouter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/ppiankov/neurorouter/releases/download/v0.1.0/neurorouter_0.1.0_linux_amd64.tar.gz"
      sha256 "7d85c19e6945e6a5ea2beb9da52fe86896287556af20e4e8a397ff117bd2c937"
      define_method(:install) do
        bin.install "neurorouter"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ppiankov/neurorouter/releases/download/v0.1.0/neurorouter_0.1.0_linux_arm64.tar.gz"
      sha256 "18f72446eff94403e6a24953d391be9df05219b90a665bb2fd6249089dc874c1"
      define_method(:install) do
        bin.install "neurorouter"
      end
    end
  end

  test do
    system "#{bin}/neurorouter", "version"
  end
end
