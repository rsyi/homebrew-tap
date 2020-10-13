class Whale < Formula
  desc "Data warehouse command line explorer"
  homepage "https://github.com/rsyi/whale"
  url "https://github.com/rsyi/whale/releases/download/v0.0.0b8/whale-mac.tar.gz"
  sha256 "eee5ef2c10d67171e220cafe5146e492622ca213982166dd5ed3db2f1e297949"
  version "v0.0.0b8"

  depends_on "python"
  depends_on "rust"

  def install
    system "make build_dir=./libexec"
    system "cp cli/target/release/whale cli/target/release/wh"
    bin.install "cli/target/release/wh"
    prefix.install Dir["libexec"]
  end
end
