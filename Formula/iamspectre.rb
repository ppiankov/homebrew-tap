class Iamspectre < Formula
  desc "Cross-cloud IAM auditor — finds unused, over-permissioned, and stale identities"
  homepage "https://github.com/ppiankov/iamspectre"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.7.0/iamspectre_0.7.0_darwin_arm64.tar.gz"
      sha256 "615ae8492b1a677a5f685f89ecd549df860616e404f681950608cbf3a91eceab"
    end
    on_intel do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.7.0/iamspectre_0.7.0_darwin_amd64.tar.gz"
      sha256 "a53e84b775caf91c61513b7945e9140fd1c315d069f9b01469f895c0e67d44d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.7.0/iamspectre_0.7.0_linux_arm64.tar.gz"
      sha256 "8999c8fe9f851c108c9348493bd26efae295a209856efea430cb6a136b813358"
    end
    on_intel do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.7.0/iamspectre_0.7.0_linux_amd64.tar.gz"
      sha256 "c4b7273c450dfabeea9b0425d53fd11a4c01cc4ba44be70b826ce6a2e4e0f4b3"
    end
  end

  def install
    bin.install "iamspectre"
  end

  test do
    system "#{bin}/iamspectre", "version"
  end
end
