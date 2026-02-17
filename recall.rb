class Recall < Formula
  desc "A simple to-do list for the terminal. Written in Swift."
  url "https://github.com/StikyPiston/recall/archive/refs/tags/2026.02.17-a.zip"
  homepage ""
  sha256 "a1b9cb74a3727341bb8adccb8f6e7900f5845280405a083bfe292b1ed5057e45"
  version "2026.02.17-a"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go build"
    bin.install "recall"
  end

  test do
    system "recall"
  end
end
