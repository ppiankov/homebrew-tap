# typed: false
# frozen_string_literal: true

class Trustwatch < Formula
  desc "Kubernetes trust surface monitoring — discovers expiring certificates across webhooks, mesh, and more"
  homepage "https://github.com/ppiankov/trustwatch"
  version "0.3.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.7/trustwatch_0.3.7_darwin_arm64.tar.gz"
      sha256 "1a5c7c37f41d25d0d3feb97eb37f2f7b2467de9101dcb866eca06ef5102a4246"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.7/trustwatch_0.3.7_darwin_amd64.tar.gz"
      sha256 "7fad3d5488ab8fff530094d4bf67504ae05524e0073f2feb21ef31bac3e1603d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.7/trustwatch_0.3.7_linux_arm64.tar.gz"
      sha256 "aa6d9b0b4d48c64836242671c60e5539665f3e853bc44bb6b8d6cb7828aab10d"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.7/trustwatch_0.3.7_linux_amd64.tar.gz"
      sha256 "929b5d5ff82bb36339257e9446ad8952059272590cb4b61fb161369b0a82d67a"
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
