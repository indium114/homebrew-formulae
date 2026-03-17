class Dotkeeper < Formula
  desc "Dotfile management/symlink farm tool"
  homepage "https://github.com/stikypiston/dotkeeper"
  url "https://github.com/StikyPiston/dotkeeper/archive/refs/tags/2026.03.17-b.tar.gz"
  version "2026.03.17-b"
  sha256 "b930955aab5a66d51c12f53f1f3dc87165d163e69c14574695d2571e09178ff3"
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
