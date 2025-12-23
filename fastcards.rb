class Fastcards < Formula
  desc "A CLI-based spaced repetition flashcard study tool"
  homepage ""
  url "https://github.com/StikyPiston/fastcards/archive/refs/tags/2025.12.23-a.zip"
  sha256 "cc81377426fb40ce0df652cd0ba2e738c4297ca6773b1b8721d9250e43765630"
  version "2025.12.23-a"
  license "MIT"
  
  depends_on "swift" => :build

  def install
    system "swift build --configuration release"
    bin.install ".build/release/fastcards"
  end

  test do
    system "fastcards amount"
  end
end
