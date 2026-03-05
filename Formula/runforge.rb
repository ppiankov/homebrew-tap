# typed: false
# frozen_string_literal: true

# Deprecated: use `brew install ppiankov/tap/tokencontrol` instead.
# The runforge project was renamed to tokencontrol.
class Runforge < Formula
  desc "Deprecated: renamed to tokencontrol"
  homepage "https://github.com/ppiankov/tokencontrol"
  version "0.15.1"
  license "BUSL-1.1"

  depends_on "ppiankov/tap/tokencontrol"

  deprecate! date: "2026-03-02", because: "renamed to tokencontrol"

  def install
    odie "This formula is deprecated. Please use: brew install ppiankov/tap/tokencontrol"
  end
end
