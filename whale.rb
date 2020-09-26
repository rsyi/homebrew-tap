class Whale < Formula
  desc "Data warehouse command line explorer"
  homepage "https://github.com/rsyi/whale"
  url "https://github.com/rsyi/whale/releases/download/v0.0.0b2/whale-mac.tar.gz"
  sha256 "aa24a4d57b7d7a05f262d5256a73776443f9dbecf0e4585fb64bc2233c8adf42"
  version "v0.0.0b2"

  depends_on "python"
  depends_on "rust"

  def install
    system "make && make install && cp cli/target/release/whale cli/target/release/wh"
    bin.install "cli/target/release/wh"
  end
end
