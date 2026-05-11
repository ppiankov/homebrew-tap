# typed: false
# frozen_string_literal: true

class Trustwatch < Formula
  desc "Kubernetes trust surface monitoring — discovers expiring certificates across webhooks, mesh, and more"
  homepage "https://github.com/ppiankov/trustwatch"
  version "0.3.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.8/trustwatch_0.3.8_darwin_arm64.tar.gz"
      sha256 "ded3393138f2e384936d8b49708b1366c86b8548523d071802dbb65e39e33106"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.8/trustwatch_0.3.8_darwin_amd64.tar.gz"
      sha256 "add76fa7a39eb128f56fdeeaedaa88658b8ed0296625eb61654b345501fed0ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.8/trustwatch_0.3.8_linux_arm64.tar.gz"
      sha256 "12390899ea34c019e948e17b1077677f023efc832f4f443c378b93b233b54856"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.8/trustwatch_0.3.8_linux_amd64.tar.gz"
      sha256 "38c2803adeee1eb99f02f3a7e3a67e77b33fb7e312d30513c3fb6c40e308191e"
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
