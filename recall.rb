class Recall < Formula
  desc "A simple to-do list for the terminal. Written in Swift."
  url "https://github.com/StikyPiston/recall/archive/refs/tags/2026.03.04-b.zip"
  homepage ""
  sha256 "4a6e2b73007427873b6f79f555e2fb6630713a39f3a3e5a13cfe289c2a65ea49"
  version "2026.03.04-b"
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
