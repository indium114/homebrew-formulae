class Hocusfocus < Formula
  desc "A simple productivity-tracking tool"
  homepage ""
  url "https://github.com/StikyPiston/hocusfocus/archive/refs/tags/2026.02.06-a.zip"
  sha256 "b728aa04d737dac705a4b206bec88d2e6d08d19fec92ce0c7031f5961d057b3a"
  version "2026.02.06-b"
  license "MIT"
  
  depends_on "go" => :build

  def install
    system "go build"
    bin.install "hocusfocus"
  end

  test do
    system "hocusfocus"
  end
end
