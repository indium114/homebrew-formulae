class Dotkeeper < Formula
  desc "Dotfile management/symlink farm tool"
  homepage "https://github.com/indium114/dotkeeper"
  url "https://github.com/indium114/dotkeeper/archive/refs/tags/2026.03.22-a.tar.gz"
  version "2026.03.22-a"
  sha256 "49b0bd054e80369b0cf797bc413604a2f6d9dd4b943a44ba834e4e5a4cc1c785"
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
