# typed: false
# frozen_string_literal: true

class Kubenow < Formula
  desc "Kubernetes resource analysis and cost optimization — deterministic analysis, policy-gated apply, real-time monitoring"
  homepage "https://github.com/ppiankov/kubenow"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/kubenow/releases/download/v0.4.1/kubenow_0.4.1_darwin_arm64.tar.gz"
      sha256 "26163bc0dcf40cb020f16ad409c1313c54e14224431178a25a47f987b9fb80d1"
    end
    on_intel do
      url "https://github.com/ppiankov/kubenow/releases/download/v0.4.1/kubenow_0.4.1_darwin_amd64.tar.gz"
      sha256 "862005a4e24922847c40ba1dff7091088b7c647cbf7704fe677c0362035ef319"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/kubenow/releases/download/v0.4.1/kubenow_0.4.1_linux_arm64.tar.gz"
      sha256 "ab83ea21094c2bad05f726719090c8dad1d22e2b808c53830d89715fcb269e33"
    end
    on_intel do
      url "https://github.com/ppiankov/kubenow/releases/download/v0.4.1/kubenow_0.4.1_linux_amd64.tar.gz"
      sha256 "30506a031a17b59f16f38a45e8f5eb9cc8e725c76f4d0bd4b14edd919e3c72bd"
    end
  end

  def install
    bin.install "kubenow"
  end

  test do
    assert_match "kubenow 0.4.1", shell_output("#{bin}/kubenow version")
  end
end
