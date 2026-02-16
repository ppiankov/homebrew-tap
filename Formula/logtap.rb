# typed: false
# frozen_string_literal: true

class Logtap < Formula
  desc "Ephemeral log mirror for load testing"
  homepage "https://github.com/ppiankov/logtap"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/logtap/releases/download/v0.3.1/logtap_0.3.1_darwin_arm64.tar.gz"
      sha256 "30ca100bb1a619d869e46f68b447162d7a99a9ffcd618898c62f7b424394c029"
    end
    on_intel do
      url "https://github.com/ppiankov/logtap/releases/download/v0.3.1/logtap_0.3.1_darwin_amd64.tar.gz"
      sha256 "66103bc1fe88b598a9626717eb718375190e0fdff15c389901934ce43a16edbf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/logtap/releases/download/v0.3.1/logtap_0.3.1_linux_arm64.tar.gz"
      sha256 "9eacf56660dbbe553cf49c3ea0a377b9beb72794f91ad2feb8369962b6837fb5"
    end
    on_intel do
      url "https://github.com/ppiankov/logtap/releases/download/v0.3.1/logtap_0.3.1_linux_amd64.tar.gz"
      sha256 "71460e7c6ca597f4ad3931e59bd3670e38aa34463f9da071b3e8a355c632d93d"
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
