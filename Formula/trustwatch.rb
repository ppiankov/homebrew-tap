# typed: false
# frozen_string_literal: true

class Trustwatch < Formula
  desc "Kubernetes trust surface monitoring — discovers expiring certificates across webhooks, mesh, and more"
  homepage "https://github.com/ppiankov/trustwatch"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.2.0/trustwatch_0.2.0_darwin_arm64.tar.gz"
      sha256 "70c62a5e4bc3d29955228b7a2ee0e9b620d4410f3dfc7de2667e78ee15c3fff7"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.2.0/trustwatch_0.2.0_darwin_amd64.tar.gz"
      sha256 "7bbab77d9a32e48f270c3882226912b8e5b7903bc790b8c5598e8402b90c671f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.2.0/trustwatch_0.2.0_linux_arm64.tar.gz"
      sha256 "fd29c20804ad0b6b3831cf7ea7995301c15d384703b6b1c935a21919d9db73a4"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.2.0/trustwatch_0.2.0_linux_amd64.tar.gz"
      sha256 "95f7ddd6c6f99e7706a38eb1d3344cc3c0ce9068be59ff2dd1f938a47febbbb2"
    end
  end

  def install
    bin.install "trustwatch"
  end

  test do
    assert_match "trustwatch", shell_output("#{bin}/trustwatch version")
  end
end
