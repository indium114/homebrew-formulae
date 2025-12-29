class ChessTui < Formula
  desc "Play chess from your terminal"
  homepage "https://thomas-mauran.github.io/chess-tui/"
  url "https://github.com/thomas-mauran/chess-tui/archive/refs/tags/2.2.0.zip"
  sha256 "c1942e4ee40ca96e30275672e3b6dc1c56e507e44fbb60cfea9c4d8fa5a05d9a"
  version "2.2.0"
  license "MIT"

  def install
    system "cargo build --release"
    bin.install "target/release/chess-tui"
  end

  test do
    system "chess-tui --version"
  end
end
