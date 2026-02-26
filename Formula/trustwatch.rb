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
      sha256 "10ec2a85f2facdd3aff35a2309bd232031645ad0bc737f6acd77db548aee695f"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.0/trustwatch_0.3.0_darwin_amd64.tar.gz"
      sha256 "101916d397360ce7fe48c41d0382f6a9dbe5a307ae8814ccc87b37c539e13b12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.0/trustwatch_0.3.0_linux_arm64.tar.gz"
      sha256 "a5191c1681f557e93d34203cff56b7517b6a93d64782589ebb6942bf65fb48bb"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.0/trustwatch_0.3.0_linux_amd64.tar.gz"
      sha256 "4f3b1336fe8f22e4d86453a1e8f23fe1579aaa3d7a3f7c189fa51884162eff11"
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
