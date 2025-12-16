class Recall < Formula
  desc "A simple to-do list for the terminal. Written in Swift."
  url "https://github.com/StikyPiston/recall/archive/refs/tags/161225c.zip"
  homepage ""
  sha256 "b6a0e20db606d8dc4ea8f432c1c1770e249d309841e1101bfa0226444871481c"
  version "161225c"
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
