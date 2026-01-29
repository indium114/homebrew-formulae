class Dotkeeper < Formula
  desc "Dotfile management/symlink farm tool"
  homepage "https://github.com/stikypiston/dotkeeper"
  url "https://github.com/StikyPiston/dotkeeper/archive/refs/tags/2026.01.29-a.tar.gz"
  version "2026.01.29-a"
  sha256 "33b774443a905fabd973621742e69d6cf4785b6ad4076a98fe87cc3a4a64d461"
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
