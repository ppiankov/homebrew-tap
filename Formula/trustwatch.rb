# typed: false
# frozen_string_literal: true

class Trustwatch < Formula
  desc "Kubernetes trust surface monitoring — discovers expiring certificates across webhooks, mesh, and more"
  homepage "https://github.com/ppiankov/trustwatch"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.6/trustwatch_0.3.6_darwin_arm64.tar.gz"
      sha256 "40a6ee069b442d6d2fa606c20195c015e0f2b5b950b5af59bbbe699d0e1c942a"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.6/trustwatch_0.3.6_darwin_amd64.tar.gz"
      sha256 "3832bd84c44c7ff9512e3dfc1cbb985ebf6625e7195c853cb1533b1c6a133b24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.6/trustwatch_0.3.6_linux_arm64.tar.gz"
      sha256 "ec426ba25083b97093a1045196f189ba453582b468484ffaacecf18ba4a4a708"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.6/trustwatch_0.3.6_linux_amd64.tar.gz"
      sha256 "8a0279da38fae86814d290189c36738ba7b5130b8841d8af7f83570d4a40901a"
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
