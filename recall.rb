class Recall < Formula
  desc "A simple to-do list for the terminal. Written in Go."
  url "https://github.com/indium114/recall/archive/refs/tags/2026.03.22-a.zip"
  homepage ""
  sha256 "f4000d9589692a120f45748045a56bfced9311a7ee6e7d254f52e613d9ff869e"
  version "2026.03.22-a"
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
