class Termfarm < Formula
  desc "CLI idle farming game"
  homepage "https://github.com/stikypiston/termfarm"
  url "https://github.com/StikyPiston/termfarm/archive/refs/tags/2026.01.14-b.tar.gz"
  version "2026.01.14-b"
  sha256 "f5586dfadcc4c548a86b227940430da653dd3ded39d7c415350ebdbc47feac36"
  license "MIT"

  depends_on "swift" => :build

  def install
    system "swift", "build", "--configuration", "release", "-Xswiftc", "-static-stdlib"
    bin.install ".build/release/termfarm"
  end

  test do
    system bin/"termfarm"
  end
end
