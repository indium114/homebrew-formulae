class Fastcards < Formula
  desc "A CLI-based spaced repetition flashcard study tool"
  homepage ""
  url "https://github.com/StikyPiston/fastcards/archive/refs/tags/2025.12.23-a.zip"
  sha256 "6391912c13aa7a9048a542681e98b4fc3a46097a3c3760359944ddb5e34e72c0"
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
