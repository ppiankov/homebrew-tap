# typed: false
# frozen_string_literal: true

class Trustwatch < Formula
  desc "Kubernetes trust surface monitoring — discovers expiring certificates across webhooks, mesh, and more"
  homepage "https://github.com/ppiankov/trustwatch"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.2.2/trustwatch_0.2.2_darwin_arm64.tar.gz"
      sha256 "cae56f9b49e3f797b94aedaae2f555bec66e65bc7becfc1d1ba8efb083a15980"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.2.2/trustwatch_0.2.2_darwin_amd64.tar.gz"
      sha256 "ade796317b6b4bee323334b8ba7b742f6f474172ce555994597a491d2a66b642"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.2.2/trustwatch_0.2.2_linux_arm64.tar.gz"
      sha256 "668a2abd72cbe4de2aba36eb84d3fa41846821454ba5eeb6d82d780342d9daed"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.2.2/trustwatch_0.2.2_linux_amd64.tar.gz"
      sha256 "2284ddd974a7509f3aa9608950f1592c563ae486bf33655967c67a3292264eed"
    end
  end

  def install
    bin.install "trustwatch"
  end

  test do
    assert_match "trustwatch", shell_output("#{bin}/trustwatch version")
  end
end
