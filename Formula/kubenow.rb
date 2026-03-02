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
      sha256 "374d8b0fd5e3f9fea64ad049568ea5d1b00a9aa4b4f3a662a81d415e56029e43"
    end
    on_intel do
      url "https://github.com/ppiankov/kubenow/releases/download/v0.4.0/kubenow_0.4.0_darwin_amd64.tar.gz"
      sha256 "7f5e86729e7736cc6ec2a19127733924e334c0a4ff714760e4ea6b27f17b00b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/kubenow/releases/download/v0.4.0/kubenow_0.4.0_linux_arm64.tar.gz"
      sha256 "9989b3055164b0ddff02e631f973d77e2c498349c808aef6f96d38b9e9faed1e"
    end
    on_intel do
      url "https://github.com/ppiankov/kubenow/releases/download/v0.4.0/kubenow_0.4.0_linux_amd64.tar.gz"
      sha256 "846643cf6b4fa9444ee1bc4d36800aa639fadb65b6ea7b19bd530cd2e5258f08"
    end
  end

  def install
    bin.install "kubenow"
  end

  test do
    assert_match "kubenow 0.4.0", shell_output("#{bin}/kubenow version")
  end
end
