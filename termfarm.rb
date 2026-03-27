class Termfarm < Formula
  desc "CLI idle farming game"
  homepage "https://github.com/indium114/termfarm"
  url "https://github.com/indium114/termfarm/archive/refs/tags/2026.01.16-a.tar.gz"
  version "2026.01.16-a"
  sha256 "6c1db16364d99194715155124c734a74de28633b8620b9347e4309f41c7ceeb4"
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
