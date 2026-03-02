# typed: false
# frozen_string_literal: true

class Kubenow < Formula
  desc "Kubernetes resource analysis and cost optimization — deterministic analysis, policy-gated apply, real-time monitoring"
  homepage "https://github.com/ppiankov/kubenow"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/kubenow/releases/download/v0.4.0/kubenow_0.4.0_darwin_arm64.tar.gz"
      sha256 "06798462aecf04d940a6ce1badc3d1ecc6189b0f72a2aa50b7e8b7d189ea7b89"
    end
    on_intel do
      url "https://github.com/ppiankov/kubenow/releases/download/v0.4.0/kubenow_0.4.0_darwin_amd64.tar.gz"
      sha256 "8b6c147dcf87dd61b3628d52b769235bd944616149d1ee8727152dc0a099824d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/kubenow/releases/download/v0.4.0/kubenow_0.4.0_linux_arm64.tar.gz"
      sha256 "234b6639b991e32dfb4ab0f2a35c60c8af03aea72d1210af3c3527137aca630d"
    end
    on_intel do
      url "https://github.com/ppiankov/kubenow/releases/download/v0.4.0/kubenow_0.4.0_linux_amd64.tar.gz"
      sha256 "40710c52b83316b59edd848e19e0f75f47fd7ba30e8d82d45fb0ca9b578adf63"
    end
  end

  def install
    bin.install "kubenow"
  end

  test do
    assert_match "kubenow version 0.4.0", shell_output("#{bin}/kubenow version")
  end
end
