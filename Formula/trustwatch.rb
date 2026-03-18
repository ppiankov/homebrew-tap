# typed: false
# frozen_string_literal: true

class Trustwatch < Formula
  desc "Kubernetes trust surface monitoring — discovers expiring certificates across webhooks, mesh, and more"
  homepage "https://github.com/ppiankov/trustwatch"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.4/trustwatch_0.3.4_darwin_arm64.tar.gz"
      sha256 "77541ab9193ceaefe304f7eab374091cf4180979773d854d6eff59984ce8d6d9"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.4/trustwatch_0.3.4_darwin_amd64.tar.gz"
      sha256 "7cccd42ceab9d80b6bdffb0240b6431c4566e2d3eac6611f21cc321f7516af78"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.4/trustwatch_0.3.4_linux_arm64.tar.gz"
      sha256 "344c4d5ed38bed7cf974836e9d491142e88367080e3c51dc70b5a5d58d23c04f"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.4/trustwatch_0.3.4_linux_amd64.tar.gz"
      sha256 "a41fe7a9b42b49e1582a42ee807660a160ce303013f4746229802f3c5ca66b27"
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
