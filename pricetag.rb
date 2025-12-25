class Pricetag < Formula
  desc "A CLI-based file tagging tool"
  homepage ""
  url "https://github.com/StikyPiston/pricetag/archive/refs/tags/2025.12.25-c.zip"
  sha256 "8e7c0859e5e9d2a828d0aa79a47e4ee107094d0d043f132f8f492c6f15693bee"
  version "2025.12.25-c"
  license "MIT"
  
  depends_on "swift" => :build

  def install
    system "swift build --configuration release"
    bin.install ".build/release/pricetag"
  end

  test do
    system "pricetag"
  end
end
