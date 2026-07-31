class Iamspectre < Formula
  desc "Cross-cloud IAM auditor — finds unused, over-permissioned, and stale identities"
  homepage "https://github.com/ppiankov/iamspectre"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.8.2/iamspectre_0.8.2_darwin_arm64.tar.gz"
      sha256 "7116bda4e1b8159a3c885f265d5681b03d7a7c28e711814d6147220db0fe9676"
    end
    on_intel do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.8.2/iamspectre_0.8.2_darwin_amd64.tar.gz"
      sha256 "9d3d8db4b3ef25b3920c48af840ea2ed9997e93f1b8774592a78a13867a19bf9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.8.2/iamspectre_0.8.2_linux_arm64.tar.gz"
      sha256 "799208f127e76644ea38ba3dae027d9a9c5c2048fbd4f6e299430ba8e50ddb8b"
    end
    on_intel do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.8.2/iamspectre_0.8.2_linux_amd64.tar.gz"
      sha256 "7426186a69a0fc620699fa48002ef960ce1b180dbb5779d915718f588db62ad1"
    end
  end

  def install
    bin.install "iamspectre"
  end

  test do
    system "#{bin}/iamspectre", "version"
  end
end
