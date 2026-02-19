# typed: false
# frozen_string_literal: true

class Trustwatch < Formula
  desc "Kubernetes trust surface monitoring — discovers expiring certificates across webhooks, mesh, and more"
  homepage "https://github.com/ppiankov/trustwatch"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.0/trustwatch_0.3.0_darwin_arm64.tar.gz"
      sha256 "b58a5c9fe43f9613172f1d9fa7a713f06e3ffae17f5ffde7dd6cac904d5e9ee1"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.0/trustwatch_0.3.0_darwin_amd64.tar.gz"
      sha256 "1f357644da4af10241508abe7f5b127691a7e625de5e3bc16b2108134558afb1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.0/trustwatch_0.3.0_linux_arm64.tar.gz"
      sha256 "da301264f50db9f3c914e004db32c09443423ea68a4ad196008ad39a49352a83"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.0/trustwatch_0.3.0_linux_amd64.tar.gz"
      sha256 "8b1f15e6b9542019df83a3e178e9ea25b897a03aef3c6cc02221ebfec546314e"
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
