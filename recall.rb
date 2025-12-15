class Recall < Formula
  desc "A simple to-do list for the terminal. Written in Swift."
  homepage "https://github.com/StikyPiston/recall/archive/refs/tags/151225a.zip"
  url ""
  sha256 "797c84b77b82184cd3a1c43d6b3c5fd5a451448063b9fe716fff0ae486a77de"
  version "151225a"
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
