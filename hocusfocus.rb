class Hocusfocus < Formula
  desc "A simple productivity-tracking tool"
  homepage ""
  url "https://github.com/StikyPiston/hocusfocus/archive/refs/tags/2025.12.19-c.zip"
  sha256 "0a618bbe70581d89e758cf2fe2414567118059ebf54f4e67af5f4f61e8726346"
  version "2025.12.19-c"
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
