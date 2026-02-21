# typed: false
# frozen_string_literal: true

class Infranow < Formula
  desc "Real-time infrastructure triage — deterministic problem detection for Kubernetes and Prometheus"
  homepage "https://github.com/ppiankov/infranow"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/infranow/releases/download/v0.1.2/infranow_0.1.2_darwin_arm64.tar.gz"
      sha256 "0fddb2adb9f4d10eea23348d47222a65e39f0116fb38ffa13de9bfebd0a62e0e"
    end
    on_intel do
      url "https://github.com/ppiankov/infranow/releases/download/v0.1.2/infranow_0.1.2_darwin_amd64.tar.gz"
      sha256 "5153d9d41b31c8c52e487579aae9c8bfded9c7bf524b7f41d937eed9ca98744c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/infranow/releases/download/v0.1.2/infranow_0.1.2_linux_arm64.tar.gz"
      sha256 "e430138e8ce577d93a3fb6219c95645688ac0b4c985675e878264b9b5323372f"
    end
    on_intel do
      url "https://github.com/ppiankov/infranow/releases/download/v0.1.2/infranow_0.1.2_linux_amd64.tar.gz"
      sha256 "ede2cfbe5348ec130fc23b8f13164c940ccdc0ac1028d3b02b24c30e19b59b9e"
    end
  end

  def install
    bin.install "infranow"
  end

  test do
    assert_match "infranow version 0.1.2", shell_output("#{bin}/infranow version")
  end
end
