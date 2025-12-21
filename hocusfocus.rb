class Hocusfocus < Formula
  desc "A simple productivity-tracking tool"
  homepage ""
  url "https://github.com/StikyPiston/hocusfocus/archive/refs/tags/2025.12.21-b.zip"
  sha256 "cc81377426fb40ce0df652cd0ba2e738c4297ca6773b1b8721d9250e43765630"
  version "2025.12.21-b"
  license "MIT"
  
  depends_on "swift" => :build

  def install
    system "swift build --configuration release"
    bin.install ".build/release/hocusfocus"
  end

  test do
    system "hocusfocus"
  end
end
