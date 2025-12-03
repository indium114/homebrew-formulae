class Dotkeeper-tui < Formula
  desc "A TUI interface for Dotkeeper"
  homepage ""
  url "https://codeberg.org/StikyPiston/dotkeeper-tui/archive/031225a.zip"
  sha256 "1152c2c614d9c9ea2dc60e22d3a4a3d252ef1a1f0c8002b017151db11d5acd3b"
  version "031225a"
  license "MIT"
  
  depends_on "stikypiston/formulae/dotkeeper"
  depends_on "gum"

  def install
    bin.install "dotkeeper-tui"
  end

  test do
    system "dotkeeper-tui"
  end
end
