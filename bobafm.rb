class Bobafm < Formula
  desc "A simple TUI file manager, written in Go, using Bubble Tea."
  homepage ""
  url "https://github.com/indium114/bobafm/archive/refs/tags/2026.01.01-a.zip"
  sha256 "e4976f578fa6bdd3f854c6105c5d3f194db1768d289f7926b26720e2703885f2"
  version "2026.01.01-a"
  license "MIT"
  
  depends_on "go" => :build

  def install
    ENV["CGO_ENABLED"] = "0"
    system "go", "build", "-o", "bobafm"
    bin.install "bobafm"
  end

  test do
    system "bobafm"
  end
end
