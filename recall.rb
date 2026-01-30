class Recall < Formula
  desc "A simple to-do list for the terminal. Written in Swift."
  url "https://github.com/StikyPiston/recall/archive/refs/tags/2026.01.30-a.zip"
  homepage ""
  sha256 "333de942af4267b59b3bb7f420566d22ee970c8c42e36768548f2b4249606e6f"
  version "2026.01.30-a"
  license "MIT"
  
  depends_on "go" => :build

  def install
    system "go build"
    bin.install "recall"
  end

  test do
    system "recall"
  end
end
