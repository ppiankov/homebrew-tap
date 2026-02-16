# typed: false
# frozen_string_literal: true

class Logtap < Formula
  desc "Ephemeral log mirror for load testing"
  homepage "https://github.com/ppiankov/logtap"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/logtap/releases/download/v0.4.0/logtap_0.4.0_darwin_arm64.tar.gz"
      sha256 "64c2d859ca30be403c39c862f3eab202675815e27345f907e499d4195545a82d"
    end
    on_intel do
      url "https://github.com/ppiankov/logtap/releases/download/v0.4.0/logtap_0.4.0_darwin_amd64.tar.gz"
      sha256 "e383d75be8471c27288135e809af431ff81d0d4d6d5dc8d2bb778470cd9ecac3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/logtap/releases/download/v0.4.0/logtap_0.4.0_linux_arm64.tar.gz"
      sha256 "232f66c034a33f6b52ed496ea1ec10fc7908f17a3a6e639d6170b46ebfe4e07d"
    end
    on_intel do
      url "https://github.com/ppiankov/logtap/releases/download/v0.4.0/logtap_0.4.0_linux_amd64.tar.gz"
      sha256 "cab9352469b16b445b944079d16e0fb56208eb224b2d2b8439d900ed81ed2e4c"
    end
  end

  def install
    bin.install "logtap"

    generate_completions_from_executable(bin/"logtap", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/logtap --version")
  end
end
