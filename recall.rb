class Recall < Formula
  desc "A simple to-do list for the terminal. Written in Swift."
  url "https://github.com/StikyPiston/recall/archive/refs/tags/161225b.zip"
  homepage ""
  sha256 "d80a7754ecfb837b1fccc49f4fc58bb85f747b132b04a4213d76ce133025b77a"
  version "161225b"
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
