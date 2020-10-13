class Whale < Formula
  desc "Data warehouse command line explorer"
  homepage "https://github.com/rsyi/whale"
  url "https://github.com/rsyi/whale/releases/download/v0.0.0b5/whale-mac.tar.gz"
  sha256 "1c02bdb7e15e6ab355be0036fdcb50891ab14d6f279e15e51222dad77ccd5930"
  version "v0.0.0b5"

  depends_on "python"
  depends_on "rust"

  def install
    system "make && make install && cp cli/target/release/whale cli/target/release/wh"
    bin.install "cli/target/release/wh"
  end
end
