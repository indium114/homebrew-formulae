class Termfarm < Formula
  desc "CLI idle farming game"
  homepage "https://github.com/stikypiston/termfarm"
  url "https://github.com/StikyPiston/termfarm/archive/refs/tags/2026.01.14-a.tar.gz"
  version "2026.01.14-a"
  sha256 "3d1b38b9a45f4ebe5f197b5720c0e9af13c22fa8a4549601881dfabe93a3cdae"
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
