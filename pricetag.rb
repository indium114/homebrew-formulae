class Pricetag < Formula
  desc "A CLI-based file tagging tool"
  homepage ""
  url "https://github.com/indium114/pricetag/archive/refs/tags/2026.02.26-a.zip"
  sha256 "0290d863b7a1406abdd89e6de467fe96daa1a313f97148288a2fb23f5ad5bedd"
  version "2026.02.26-a"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go build"
    bin.install "pricetag"
  end

  test do
    system "pricetag"
  end
end
