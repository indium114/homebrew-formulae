class Termfarm < Formula
  desc "CLI idle farming game"
  homepage "https://github.com/stikypiston/termfarm"
  url "https://github.com/StikyPiston/termfarm/archive/refs/tags/2026.01.15-a.tar.gz"
  version "2026.01.15-a"
  sha256 "5660dfd3af5ac8040d18b4feb45439ef1d91113a31ec7e1040af8dbebd207a0c"
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
