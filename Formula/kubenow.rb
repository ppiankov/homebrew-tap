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
      sha256 "c6ef1ffddd7c160ba4323fddbc895778892180a914bda6ef33d19a3c6160218e"
    end
    on_intel do
      url "https://github.com/ppiankov/kubenow/releases/download/v0.4.0/kubenow_0.4.0_darwin_amd64.tar.gz"
      sha256 "bb579523cc271f9bffc8dced5236574fe33874181d9da2cc54ffb90b9c9e0993"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/kubenow/releases/download/v0.4.0/kubenow_0.4.0_linux_arm64.tar.gz"
      sha256 "32e1732346f3034a369fc910d1ef14dc88c4c4d73b69a52241aa44c310890203"
    end
    on_intel do
      url "https://github.com/ppiankov/kubenow/releases/download/v0.4.0/kubenow_0.4.0_linux_amd64.tar.gz"
      sha256 "0b3ed17475cae63b5c7122be35431125841ec49d6824e754c4ca4c0a9aeb1545"
    end
  end

  def install
    bin.install "kubenow"
  end

  test do
    assert_match "kubenow version 0.4.0", shell_output("#{bin}/kubenow version")
  end
end
