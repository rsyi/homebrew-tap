class Whale < Formula
  desc "Data warehouse command line explorer"
  homepage "https://github.com/rsyi/whale"
  url "https://github.com/rsyi/whale/releases/download/v0.0.0b3/whale-mac.tar.gz"
  sha256 "c64b2ea47057f28319f6ad6729ad5ca478f71e546f6b229fbebfc9f07e1353be"
  version "v0.0.0b3"

  depends_on "python"
  depends_on "rust"

  def install
    system "make && make install && cp cli/target/release/whale cli/target/release/wh"
    bin.install "cli/target/release/wh"
  end
end
