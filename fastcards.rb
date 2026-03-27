class Fastcards < Formula
  desc "A CLI-based spaced repetition flashcard study tool"
  homepage ""
  url "https://github.com/indium114/fastcards/archive/refs/tags/2026.02.18-a.zip"
  sha256 "f794b87a6ea47ef43eb3a0a3a6a989d2b28620fc0376d9a814eaf7384de84d9f"
  version "2026.02.18-a"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go build"
    bin.install "fastcards"
  end

  test do
    system "fastcards amount"
  end
end
