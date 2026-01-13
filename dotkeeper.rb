class Dotkeeper < Formula
  desc "A dotfile management/symlink farm tool. Successor to rancher."
  homepage "https://github.com/stikypiston/dotkeeper"
  url "https://github.com/StikyPiston/dotkeeper/archive/refs/tags/2025.12.19-a.zip"
  sha256 "b84d19d95137f5d35d7471968b7fceba65bf89bc9798b150c86dd8fdc776db0f"
  version "2025.12.19-a"
  license "MIT"
  
  depends_on "swift" => :build

  def install
    system "swift" "build" "--configuration" "release"
    bin.install ".build/release/dotkeeper"
  end

  test do
    system "#{bin}/dotkeeper"
  end
end
