class Decree < Formula
  desc "A declarative package management system for *nix systems"
  homepage ""
  url "https://github.com/indium114/decree/archive/refs/tags/2026.01.07-a.zip"
  sha256 "163b251ee4bea8a44c39df7f6518d306e4453dc624134e5535df9a5f4cacea77"
  version "2026.01.07-a"
  license "MIT"
  
  depends_on "ruby"

  def install
    bin.install "decree"
  end

  test do
    system "decree"
  end
end
