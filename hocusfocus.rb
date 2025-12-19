class Hocusfocus < Formula
  desc "A simple productivity-tracking tool"
  homepage ""
  url "https://github.com/StikyPiston/hocusfocus/archive/refs/tags/191225b.zip"
  sha256 "084c1113164f249c478e7987e19251581b42b31ad593855131064c22ded0504d"
  version "191225b"
  license "MIT"
  
  depends_on "swift" => :build
  depends_on "gnuplot"

  def install
    system "swift build --configuration release"
    bin.install ".build/release/hocusfocus"
  end

  test do
    system "hocusfocus"
  end
end
