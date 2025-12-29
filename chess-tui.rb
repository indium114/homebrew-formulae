class ChessTui < Formula
  desc "Play chess from your terminal"
  homepage "https://thomas-mauran.github.io/chess-tui/"
  url "https://github.com/thomas-mauran/chess-tui/releases/download/2.2.0/chess-tui-2.2.0-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "d86c62d1663db2f0c2197feb437c35b890bdc54c294d19089a9b24727e420440"
  version "2.2.0"
  license "MIT"

  def install
    bin.install "chess-tui"
  end

  test do
    system "chess-tui --version"
  end
end
