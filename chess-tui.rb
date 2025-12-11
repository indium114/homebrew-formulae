class ChessTui < Formula
  desc "Play chess from your terminal"
  homepage "https://thomas-mauran.github.io/chess-tui/"
  url "https://github.com/thomas-mauran/chess-tui/releases/download/2.0.0/chess-tui-2.0.0-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "cf71ab1787349c5c226397c31a1eebc5cdae89605db36c791a2a0b01070a02bc"
  version "2.0.0"
  license "MIT"

  def install
    bin.install "chess-tui"
  end

  test do
    system "chess-tui --version"
  end
end
