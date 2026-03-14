class Dotkeeper < Formula
  desc "Dotfile management/symlink farm tool"
  homepage "https://github.com/stikypiston/dotkeeper"
  url "https://github.com/StikyPiston/dotkeeper/archive/refs/tags/2026.03.14-a.tar.gz"
  version "2026.03.14-a"
  sha256 "dfa6db027175d47b721a818d7e3654c2a1f6dfb2f9a60a16f0956c3ff8ab24f0"
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
