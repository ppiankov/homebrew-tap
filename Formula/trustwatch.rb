# typed: false
# frozen_string_literal: true

class Trustwatch < Formula
  desc "Kubernetes trust surface monitoring — discovers expiring certificates across webhooks, mesh, and more"
  homepage "https://github.com/ppiankov/trustwatch"
  version "0.3.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.9/trustwatch_0.3.9_darwin_arm64.tar.gz"
      sha256 "2260d59bcf5789fec024de0b75ae6e20c236f68ab218e19c5ab245f8b441ee0b"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.9/trustwatch_0.3.9_darwin_amd64.tar.gz"
      sha256 "8a0c30014eab5b75451779b8c01c626e3f7aa672a044bc3f92efe18ee29fc680"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.9/trustwatch_0.3.9_linux_arm64.tar.gz"
      sha256 "844f78f584685ddfa044d5248698e9e9bfb3ba98e4ad75cfe09da7df6f81fd83"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.9/trustwatch_0.3.9_linux_amd64.tar.gz"
      sha256 "992ae80d76255e5732031627ecc2c171ff25df4d60ca710970f0ca366fd66436"
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
