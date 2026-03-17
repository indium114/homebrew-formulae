class Dotkeeper < Formula
  desc "Dotfile management/symlink farm tool"
  homepage "https://github.com/stikypiston/dotkeeper"
  url "https://github.com/StikyPiston/dotkeeper/archive/refs/tags/2026.03.17-b.tar.gz"
  version "2026.03.17-b"
  sha256 "0ed36d22d74b1293bdcc9e9f3fa31be2d5cfd9c9cbf774f818f6a354c8567e7a"
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
