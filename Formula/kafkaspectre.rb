# typed: false
# frozen_string_literal: true

class Kafkaspectre < Formula
  desc "Kafka cluster auditor — identifies unused, orphaned, and misconfigured topics"
  homepage "https://github.com/ppiankov/kafkaspectre"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/kafkaspectre/releases/download/v0.2.0/kafkaspectre_0.2.0_darwin_arm64.tar.gz"
      sha256 "23bca69bea47593590747a8351cddeeae7f232a256f17379d20feab9ab360ee1"
    end
    on_intel do
      url "https://github.com/ppiankov/kafkaspectre/releases/download/v0.2.0/kafkaspectre_0.2.0_darwin_amd64.tar.gz"
      sha256 "5b5b615bf156b4e48da4814105a66b2ab12baa3ed3be109abbb85065ec07e99d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/kafkaspectre/releases/download/v0.2.0/kafkaspectre_0.2.0_linux_arm64.tar.gz"
      sha256 "18aa09d7fbe77a590919d60a9ee15472e3030f81913790d4890e99f247e01544"
    end
    on_intel do
      url "https://github.com/ppiankov/kafkaspectre/releases/download/v0.2.0/kafkaspectre_0.2.0_linux_amd64.tar.gz"
      sha256 "714417bbcf855e681616dde65f01e932d176cc0680bc48cb264838c999306c90"
    end
  end

  def install
    bin.install "kafkaspectre"
  end

  test do
    assert_match "kafkaspectre", shell_output("#{bin}/kafkaspectre version")
  end
end
