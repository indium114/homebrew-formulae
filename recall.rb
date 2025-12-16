class Recall < Formula
  desc "A simple to-do list for the terminal. Written in Swift."
  url "https://github.com/StikyPiston/recall/archive/refs/tags/161225a.zip"
  homepage ""
  sha256 "8fcb744c8554078c80e42c3671dd08ce2b7bbcc8fd06c19c729ea57d3ba78ac7"
  version "161225a"
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
