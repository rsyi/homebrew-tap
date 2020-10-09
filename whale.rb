class Whale < Formula
  desc "Data warehouse command line explorer"
  homepage "https://github.com/rsyi/whale"
  url "https://github.com/rsyi/whale/releases/download/v0.0.0b4/whale-mac.tar.gz"
  sha256 "bd5d404e9a52f41dc779daf87cb032f1c2cfa108985919ce909100ca393a08a3"
  version "v0.0.0b4"

  depends_on "python"
  depends_on "rust"

  def install
    system "make && make install && cp cli/target/release/whale cli/target/release/wh"
    bin.install "cli/target/release/wh"
  end
end
