# typed: false
# frozen_string_literal: true

class Trustwatch < Formula
  desc "Kubernetes trust surface monitoring — discovers expiring certificates across webhooks, mesh, and more"
  homepage "https://github.com/ppiankov/trustwatch"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.3/trustwatch_0.3.3_darwin_arm64.tar.gz"
      sha256 "a7a05690c5aacc6f4da956f0f5e1f80d912c3fd594eeb8c9ff4a39e7a139a64c"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.3/trustwatch_0.3.3_darwin_amd64.tar.gz"
      sha256 "343c1e18818309750f72d996204f770489dda5d0e72b6e6c925d5d4002b33a8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.3/trustwatch_0.3.3_linux_arm64.tar.gz"
      sha256 "a3624f294b0c94db3aa5726642c9c421097f0c2d8c1ab6db77e4ddcaeeaaffe9"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.3/trustwatch_0.3.3_linux_amd64.tar.gz"
      sha256 "13723a45a724c5214188b9b4a52a36c9a751b97721a93bc6c405d8654d0ec68c"
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
