class Whale < Formula
  desc "Data warehouse command line explorer"
  homepage "https://github.com/rsyi/whale"
  url "https://github.com/rsyi/whale/releases/download/v0.0.0b1/whale-mac.tar.gz"
  sha256 "9a09ed03a8ca0989547fb3749980cc71db6b633ffe8b37060a28934bfcf537d3"
  version "v0.0.0b1"

  depends_on "python"
  depends_on "rust"

  def install
    system "make && make install && cp cli/target/release/whale cli/target/release/wh"
    bin.install "cli/target/release/wh"
  end
end
