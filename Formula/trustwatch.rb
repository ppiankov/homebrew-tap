# typed: false
# frozen_string_literal: true

class Trustwatch < Formula
  desc "Kubernetes trust surface monitoring — discovers expiring certificates across webhooks, mesh, and more"
  homepage "https://github.com/ppiankov/trustwatch"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.2.0/trustwatch_0.2.0_darwin_arm64.tar.gz"
      sha256 "01a01098cd275b5cedec6107e92210269ba23ebdcd81025a64fe1ec043b34de7"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.2.0/trustwatch_0.2.0_darwin_amd64.tar.gz"
      sha256 "7b3000f94aa86d1cec7decc4a9e0e8b3e85ef96f394181feef3dafcb9d7e2071"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.2.0/trustwatch_0.2.0_linux_arm64.tar.gz"
      sha256 "c308fe0cf710dbcccea491e188ca99b361892d274f920aa7c57d8235becc4aca"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.2.0/trustwatch_0.2.0_linux_amd64.tar.gz"
      sha256 "586b496b6087ca4befa409a4cb71012dafe1d070aa09156a6b9c0aa63413f98c"
    end
  end

  def install
    bin.install "trustwatch"
  end

  test do
    assert_match "trustwatch", shell_output("#{bin}/trustwatch version")
  end
end
