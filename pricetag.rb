class Pricetag < Formula
  desc "A CLI-based file tagging tool"
  homepage ""
  url "https://github.com/StikyPiston/pricetag/archive/refs/tags/2025.12.25-a.zip"
  sha256 "b496cbbc15f0cebe12e5d3ef323ca96041b6e06086661b03c2fdf34e0de5e4b9"
  version "2025.12.25-a"
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
