# typed: false
# frozen_string_literal: true

class Trustwatch < Formula
  desc "Kubernetes trust surface monitoring — discovers expiring certificates across webhooks, mesh, and more"
  homepage "https://github.com/ppiankov/trustwatch"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.2.2/trustwatch_0.2.2_darwin_arm64.tar.gz"
      sha256 "cb1283cfdbe9afc19089ec477fdb6e2e0fba81b8d6e63f32ba5b8d6cd989924e"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.2.2/trustwatch_0.2.2_darwin_amd64.tar.gz"
      sha256 "5fe7256fc0ba49c29ca7f675069be0c455fa901ae1d0d5beabf242a580d83a3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.2.2/trustwatch_0.2.2_linux_arm64.tar.gz"
      sha256 "d1c3a49fa768831ec77e6da3742e93af145af365852b1fdb8ee1464cddda5d23"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.2.2/trustwatch_0.2.2_linux_amd64.tar.gz"
      sha256 "4a35394f5e6ccc48821f01886fcb84714c3047c9032cc669639f6a7f2ee98cfc"
    end
  end

  def install
    bin.install "trustwatch"
  end

  test do
    assert_match "trustwatch", shell_output("#{bin}/trustwatch version")
  end
end
