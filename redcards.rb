class Redcards < Formula
  desc "A simple spaced repetition flashcard study tool"
  homepage ""
  url "https://codeberg.org/indium114/Redcards/archive/231125a.zip"
  sha256 "a5b8b2d6829ed96f75c8f01b23971239692f5216528166c42a2a06e192d6f526"
  version "231125a"
  license "MIT"
  
  depends_on "ruby"

  def install
    system "gem install tty-prompt"
    bin.install "redcards"
  end

  test do
    system "redcards amount"
  end
end
