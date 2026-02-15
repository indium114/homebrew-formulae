class Fastcards < Formula
  desc "A CLI-based spaced repetition flashcard study tool"
  homepage ""
  url "https://github.com/StikyPiston/fastcards/archive/refs/tags/2026.02.15-a.zip"
  sha256 "cd3361dbfd438dcd399d46810ab4782eca23f697b97380c2b3a6f14ba8c0510a"
  version "2026.02.15-a"
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
