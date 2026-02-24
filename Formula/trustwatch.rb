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
      sha256 "537267d22fa1fe988a03be0dea14411c2514cc6504da5fd667beba6526e28b4d"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.3/trustwatch_0.3.3_darwin_amd64.tar.gz"
      sha256 "766b35fc2c03b0a372ae23238b22ca4e109b466b2ab2ee2e91e7a48490b9526c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.3/trustwatch_0.3.3_linux_arm64.tar.gz"
      sha256 "b95cd01a5de1185e4353d737e356701152fa3429eb4064445deaba487ff7da07"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.3/trustwatch_0.3.3_linux_amd64.tar.gz"
      sha256 "88650d1a2cfdcd5367ecf138e2ee3ca2f4aae4542e2277903ebfb9632fe20b14"
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
