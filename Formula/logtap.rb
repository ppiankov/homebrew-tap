# typed: false
# frozen_string_literal: true

class Logtap < Formula
  desc "Ephemeral log mirror for load testing"
  homepage "https://github.com/ppiankov/logtap"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/logtap/releases/download/v1.0.0/logtap_1.0.0_darwin_arm64.tar.gz"
      sha256 "164b4927d2580d2ac54e5eca2b04faed8ab039a4cf338302db7ed676ab3c42de"
    end
    on_intel do
      url "https://github.com/ppiankov/logtap/releases/download/v1.0.0/logtap_1.0.0_darwin_amd64.tar.gz"
      sha256 "32a8a36552974858f263726a143b87d0eae8a53b6db78b6093c50dc569c056a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/logtap/releases/download/v1.0.0/logtap_1.0.0_linux_arm64.tar.gz"
      sha256 "6881235de679d14f6701d5544fcb0bab5cc093c3f00b66df16e7ddce97e61e86"
    end
    on_intel do
      url "https://github.com/ppiankov/logtap/releases/download/v1.0.0/logtap_1.0.0_linux_amd64.tar.gz"
      sha256 "283ee03de445c550aa126bbeef6c6427ece8c24da65b93cf1102729df111cac8"
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
