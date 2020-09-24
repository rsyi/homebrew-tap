class Whale < Formula
  desc "Data warehouse command line explorer"
  homepage "https://github.com/rsyi/whale"
  url "https://github.com/rsyi/whale/releases/download/v0.0.0a32/whale-mac.tar.gz"
  sha256 "3f33331207c6d83aa1fe22de3a630f800d65bc1b35ae310285e171d17bcffbbf"
  version "v0.0.0b1"

  depends_on "python"

  def install
    system "make && make install && cp cli/target/release/whale cli/target/release/wh"
    bin.install "cli/target/release/wh"
  end
end
