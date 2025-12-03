class Dotkeeper < Formula
  desc "A dotfile management/symlink farm tool. Successor to rancher."
  homepage ""
  url "https://codeberg.org/StikyPiston/dotkeeper-tui/archive/031225a.zip"
  sha256 "8cacd1dd27eb126b288bfc1e2122d9b18e48a374d839ca906ddbc99d4a3615ee"
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
