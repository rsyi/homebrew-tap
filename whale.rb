class Whale < Formula
  desc "Data warehouse command line explorer"
  homepage "https://github.com/rsyi/whale"
  url "https://github.com/rsyi/whale/releases/download/v0.0.0b3/whale-mac.tar.gz"
  sha256 "2b5fb27767dd6023ec78cc51eabad0b4cf1b04707a3b7280e3592131f927bd75"
  version "v0.0.0b3"

  depends_on "python"
  depends_on "rust"

  def install
    system "make && make install && cp cli/target/release/whale cli/target/release/wh"
    bin.install "cli/target/release/wh"
  end
end
