# typed: false
# frozen_string_literal: true

class Trustwatch < Formula
  desc "Kubernetes trust surface monitoring — discovers expiring certificates across webhooks, mesh, and more"
  homepage "https://github.com/ppiankov/trustwatch"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.1/trustwatch_0.3.1_darwin_arm64.tar.gz"
      sha256 "52b3b21ef7059494a2921d60e2ddd9035fd0d377f29ee0e9cbfc23f5e78708e2"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.1/trustwatch_0.3.1_darwin_amd64.tar.gz"
      sha256 "84a707ede3b9747ca95137d5cec249d24a87fddbd3bd327474b143faf6c2903f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.1/trustwatch_0.3.1_linux_arm64.tar.gz"
      sha256 "8c0dac3803e9cfe7762c75caa584bfd7bcd0d40da6bd43ad8b155ec4cc40881c"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.1/trustwatch_0.3.1_linux_amd64.tar.gz"
      sha256 "1f775a3477b57f45f9c223944d6cf08f9fa059578a2dcc227822c22dd57a8d59"
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
