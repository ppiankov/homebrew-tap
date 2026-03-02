# typed: false
# frozen_string_literal: true

class Kubenow < Formula
  desc "Kubernetes resource analysis and cost optimization — deterministic analysis, policy-gated apply, real-time monitoring"
  homepage "https://github.com/ppiankov/kubenow"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/kubenow/releases/download/v0.4.0/kubenow_0.4.0_darwin_arm64.tar.gz"
      sha256 "e40976ae818b0be98807e91dec6326a971145c4b6638746fad53d24dff0e0c01"
    end
    on_intel do
      url "https://github.com/ppiankov/kubenow/releases/download/v0.4.0/kubenow_0.4.0_darwin_amd64.tar.gz"
      sha256 "1855c87e53b58f0196c3dc3caf6da0d0b57c2ee121954094b655c25ddb2ab386"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/kubenow/releases/download/v0.4.0/kubenow_0.4.0_linux_arm64.tar.gz"
      sha256 "174c0480fb8912f20fae789c1ff8135eb650dcf6e5439dbefe17356571ff6cf3"
    end
    on_intel do
      url "https://github.com/ppiankov/kubenow/releases/download/v0.4.0/kubenow_0.4.0_linux_amd64.tar.gz"
      sha256 "d3617d67a32703d30f6d5197cf8be8d4396ba011b53153ba55b00b3ecd4424cb"
    end
  end

  def install
    bin.install "kubenow"
  end

  test do
    assert_match "kubenow 0.4.0", shell_output("#{bin}/kubenow version")
  end
end
