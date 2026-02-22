# typed: false
# frozen_string_literal: true

class S3spectre < Formula
  desc "S3 bucket auditor — detects drift, unused resources, and lifecycle misconfigurations"
  homepage "https://github.com/ppiankov/s3spectre"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/s3spectre/releases/download/v0.2.0/s3spectre_0.2.0_darwin_arm64.tar.gz"
      sha256 "63e34a68b1c6925a2b82a0c61d955e945fc2a5c2a6d0b951ed339baa9f2e4703"
    end
    on_intel do
      url "https://github.com/ppiankov/s3spectre/releases/download/v0.2.0/s3spectre_0.2.0_darwin_amd64.tar.gz"
      sha256 "43e8a877e70174debdaf5f190f2aee48ea5aeb8206dfff5fdf1c7012d95538e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/s3spectre/releases/download/v0.2.0/s3spectre_0.2.0_linux_arm64.tar.gz"
      sha256 "a28b0a360eeae6572c3582ec2de8a9f7411e9f5bc4cde5703922a36eef814f04"
    end
    on_intel do
      url "https://github.com/ppiankov/s3spectre/releases/download/v0.2.0/s3spectre_0.2.0_linux_amd64.tar.gz"
      sha256 "6520ae373d25132c9a1f43729b06bdbb4de53806aeeb072a7cb279dd2dc64890"
    end
  end

  def install
    bin.install "s3spectre"
  end

  test do
    assert_match "s3spectre", shell_output("#{bin}/s3spectre version")
  end
end
