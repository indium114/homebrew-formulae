class RecallAT20251222A < Formula
  desc "A simple to-do list for the terminal. Written in Swift."
  url "https://github.com/StikyPiston/recall/archive/refs/tags/2025.12.22-a.zip"
  homepage ""
  sha256 "e200bda963cdf342abc9c0587561e04d593044b878589345a1255dd5396061f2"
  version "2025.12.22-a"
  license "MIT"
  
  depends_on "swift" => :build

  def install
    system "swift build --configuration release"
    bin.install ".build/release/recall"
  end

  test do
    system "recall"
  end
end
