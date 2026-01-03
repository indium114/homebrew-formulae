class Decree < Formula
  desc "A declarative package management system for *nix systems"
  homepage ""
  url "https://github.com/StikyPiston/decree/archive/refs/tags/2026.01.03.zip"
  sha256 "bb5d2475970d8ea21a7714e6c24438b2348924ae3226571ebcd8ec7e793b8d0e"
  version "2026.01.03-a"
  license "MIT"
  
  depends_on "swift" => :build

  def install
    system "swift build --configuration release"
    bin.install ".build/release/decree"
  end

  test do
    system "decree"
  end
end
