class Whale < Formula
  desc "Data warehouse command line explorer"
  homepage "https://github.com/rsyi/whale"
  url "https://github.com/rsyi/whale/releases/download/v0.0.0b0/whale-mac.tar.gz"
  sha256 "12d448a3757b7f50017032df64f965a785957baa385e4838bb09a91d584980a6"
  version "v0.0.0b0"

  depends_on "python"
  depends_on "rust"

  def install
    system "make && make install && cp cli/target/release/whale cli/target/release/wh"
    bin.install "cli/target/release/wh"
  end
end
