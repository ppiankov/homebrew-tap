# typed: false
# frozen_string_literal: true

class Logtap < Formula
  desc "Ephemeral log mirror for load testing"
  homepage "https://github.com/ppiankov/logtap"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/logtap/releases/download/v0.3.0/logtap_0.3.0_darwin_arm64.tar.gz"
      sha256 "49dba2867ad2e71756c82e9e6ee2cb3e5503878508f4cf2d0d51568043c6d283"
    end
    on_intel do
      url "https://github.com/ppiankov/logtap/releases/download/v0.3.0/logtap_0.3.0_darwin_amd64.tar.gz"
      sha256 "43d78615878dc48f92bce66a21634c4763c68e47707b7fc393a5f3c3316e514c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/logtap/releases/download/v0.3.0/logtap_0.3.0_linux_arm64.tar.gz"
      sha256 "690cae07cee3df43757c62e1e94ea8184123a2da0468d7ee12fe114e06e8fc26"
    end
    on_intel do
      url "https://github.com/ppiankov/logtap/releases/download/v0.3.0/logtap_0.3.0_linux_amd64.tar.gz"
      sha256 "9a5a7e1187202aa2334d6f4199af8fad7dca50d15685e808214d4e8838b9324f"
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
