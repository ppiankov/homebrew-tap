# typed: false
# frozen_string_literal: true

class Clickspectre < Formula
  desc "ClickHouse usage analyzer — identifies unused tables, service dependencies, and cleanup recommendations"
  homepage "https://github.com/ppiankov/clickspectre"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/clickspectre/releases/download/v1.0.1/clickspectre_1.0.1_darwin_arm64.tar.gz"
      sha256 "6b257652ae757dc859725072a38c58071da1bd6845998f241dd0cf72170944db"
    end
    on_intel do
      url "https://github.com/ppiankov/clickspectre/releases/download/v1.0.1/clickspectre_1.0.1_darwin_amd64.tar.gz"
      sha256 "7065c2a5f0f7687b46e7b861d3d15532bb03f7a8ee6ca2c1869e6986a86dc640"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/clickspectre/releases/download/v1.0.1/clickspectre_1.0.1_linux_arm64.tar.gz"
      sha256 "640a91ed10c680a4d93336aaad9dbc7d12da311151048e040e94667e6c671cdc"
    end
    on_intel do
      url "https://github.com/ppiankov/clickspectre/releases/download/v1.0.1/clickspectre_1.0.1_linux_amd64.tar.gz"
      sha256 "33b389afdffe4adf10a505e1bace4ddd410ca7c4af38b9bb4bc14fc16a87380e"
    end
  end

  def install
    bin.install "clickspectre"
  end

  test do
    assert_match "clickspectre", shell_output("#{bin}/clickspectre version")
  end
end
