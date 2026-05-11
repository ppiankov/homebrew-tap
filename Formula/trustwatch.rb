# typed: false
# frozen_string_literal: true

class Trustwatch < Formula
  desc "Kubernetes trust surface monitoring — discovers expiring certificates across webhooks, mesh, and more"
  homepage "https://github.com/ppiankov/trustwatch"
  version "0.3.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.10/trustwatch_0.3.10_darwin_arm64.tar.gz"
      sha256 "be54f6ff4556aae97a0c68bb14f98ce8b0def1b8ea08977014a8c12a008a9126"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.10/trustwatch_0.3.10_darwin_amd64.tar.gz"
      sha256 "24a9db3e041f2bb0caec611d485c10fca71feb04a8470f367a6d2e8c39176189"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.10/trustwatch_0.3.10_linux_arm64.tar.gz"
      sha256 "b46783c1a842b133d8e431177a531466cf485e8520e678ccb6ef8696cfcce41b"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.10/trustwatch_0.3.10_linux_amd64.tar.gz"
      sha256 "377b29e2c5b3a7122379dfaf8a49806d3e5777013eccba4f7d1bd9a63d61649c"
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
