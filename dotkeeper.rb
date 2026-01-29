class Dotkeeper < Formula
  desc "Dotfile management/symlink farm tool"
  homepage "https://github.com/stikypiston/dotkeeper"
  url "https://github.com/StikyPiston/dotkeeper/archive/refs/tags/2026.01.29-a.tar.gz"
  version "2026.01.29-a"
  sha256 "3d6585c187bfa7aca3e6ec01ce4593db0ab25cdd45193626b0857f30ab4e5ae3"
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
