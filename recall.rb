class Recall < Formula
  desc "A simple to-do list for the terminal. Written in Swift."
  url "https://github.com/StikyPiston/recall/archive/refs/tags/2025.12.21-a.zip"
  homepage ""
  sha256 "ddaad0c65063c8d607d68a8cc4c8f6eade6a9e4a1e5c441db07a6c3b8ce1f299"
  version "2025.12.21-a"
  license "MIT"
  
  depends_on "swift" => :build

  def install
    system "swift build --configuration release"
    bin.install ".build/release/recall"
  end

  test do
    system "recall"
  end
end
