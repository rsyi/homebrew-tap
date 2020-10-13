class Whale < Formula
  desc "Data warehouse command line explorer"
  homepage "https://github.com/rsyi/whale"
  url "https://github.com/rsyi/whale/releases/download/v0.0.0b8/whale-mac.tar.gz"
  sha256 "cf7b75b664229c26aaf3cb22c06a51ac0034b491887dd24b646e107723dfab3c"
  version "v0.0.0b8"

  depends_on "python"
  depends_on "rust"

  def install
    system "make && make install && cp cli/target/release/whale cli/target/release/wh"
    bin.install "cli/target/release/wh"
    libexec.install "databuilder/build_script.py"
    libexec.install "~/.whale/libexec/env"
  end
end
