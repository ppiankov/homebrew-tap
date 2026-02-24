# typed: false
# frozen_string_literal: true

class Trustwatch < Formula
  desc "Kubernetes trust surface monitoring — discovers expiring certificates across webhooks, mesh, and more"
  homepage "https://github.com/ppiankov/trustwatch"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.2/trustwatch_0.3.2_darwin_arm64.tar.gz"
      sha256 "bc3759d90631eb1c0ff10d72efacddc5f36bd0d63c0d56c8f5b80c4a86e7a78b"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.2/trustwatch_0.3.2_darwin_amd64.tar.gz"
      sha256 "f051d7b95821f91574f7d48003e6864d996159d9bfcb10838cd4091b9d78f736"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.2/trustwatch_0.3.2_linux_arm64.tar.gz"
      sha256 "a66eb36e16855fe9229976974b54669ec60f0bd7f361d0c74b3ddf71e67f3eee"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.2/trustwatch_0.3.2_linux_amd64.tar.gz"
      sha256 "9ad859c2a5d159c26f9e3098a59d4e9651e8f5ac697f25b348dfe956a17103ca"
    end
  end

  def install
    bin.install "trustwatch"
    bin.install_symlink "trustwatch" => "kubectl-trustwatch"
  end

  test do
    assert_match "trustwatch", shell_output("#{bin}/trustwatch version")
  end
end
