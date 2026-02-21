# typed: false
# frozen_string_literal: true

class Kubenow < Formula
  desc "Kubernetes resource analysis and cost optimization — deterministic analysis, policy-gated apply, real-time monitoring"
  homepage "https://github.com/ppiankov/kubenow"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/kubenow/releases/download/v0.3.3/kubenow_0.3.3_darwin_arm64.tar.gz"
      sha256 "9869d0bd12746d27ea61bb60ec9a1f4bec8da8405945b408d644045c0e500b46"
    end
    on_intel do
      url "https://github.com/ppiankov/kubenow/releases/download/v0.3.3/kubenow_0.3.3_darwin_amd64.tar.gz"
      sha256 "9866a9cb32225259a3ea16b57814ff9e38a3635900d548bde81657618e8de11b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/kubenow/releases/download/v0.3.3/kubenow_0.3.3_linux_arm64.tar.gz"
      sha256 "6c17ca67ca5e469196d685dd85faad68eae7eefac5714f33a8d4d2868fbb42ca"
    end
    on_intel do
      url "https://github.com/ppiankov/kubenow/releases/download/v0.3.3/kubenow_0.3.3_linux_amd64.tar.gz"
      sha256 "87e0a7634c3d6610b9484ebdd8bbb1ebfe56af39c43b56e484a7c36df2732b69"
    end
  end

  def install
    bin.install "kubenow"
  end

  test do
    assert_match "kubenow version 0.3.3", shell_output("#{bin}/kubenow version")
  end
end
