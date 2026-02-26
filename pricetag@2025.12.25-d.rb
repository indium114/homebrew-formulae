class PricetagAT20251225D < Formula
  desc "A CLI-based file tagging tool"
  homepage ""
  url "https://github.com/StikyPiston/pricetag/archive/refs/tags/2025.12.25-d.zip"
  sha256 "9111c6b3efc937833290c5d8bde71a279bfabf5cf5239423518ec2a8ddd1b034"
  version "2025.12.25-d"
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
