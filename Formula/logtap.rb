# typed: false
# frozen_string_literal: true

class Logtap < Formula
  desc "Ephemeral log mirror for load testing"
  homepage "https://github.com/ppiankov/logtap"
  version "1.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/logtap/releases/download/v1.3.2/logtap_1.3.2_darwin_arm64.tar.gz"
      sha256 "3b9c473fbb45c5856f8ea23f2def0cd80435f2c2c6aeb77a469294a4a21393db"
    end
    on_intel do
      url "https://github.com/ppiankov/logtap/releases/download/v1.3.2/logtap_1.3.2_darwin_amd64.tar.gz"
      sha256 "eda9e9b1fc725e541c2c293593394f60cc89a017e03f82db05d984432842ec86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/logtap/releases/download/v1.3.2/logtap_1.3.2_linux_arm64.tar.gz"
      sha256 "f23da1ef0c3377aa42dc0c19ad71d99605744564e4f348acb26cbc1237da2922"
    end
    on_intel do
      url "https://github.com/ppiankov/logtap/releases/download/v1.3.2/logtap_1.3.2_linux_amd64.tar.gz"
      sha256 "965170acd2bf5d91810e211e5f767f41e87f1b04e91ac63e6b37cc694107f158"
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
