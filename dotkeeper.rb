class Dotkeeper < Formula
  desc "Dotfile management/symlink farm tool"
  homepage "https://github.com/stikypiston/dotkeeper"
  url "https://github.com/StikyPiston/dotkeeper/archive/refs/tags/2026.03.17-a.tar.gz"
  version "2026.03.17-a"
  sha256 "7691349a6e97c24d2578acc865ed1afd7de6eb9465554e780a89c58c73dc8d2a"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build"
    bin.install "dotkeeper"
  end

  test do
    system bin/"dotkeeper"
  end
end
