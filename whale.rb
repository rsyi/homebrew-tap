class Whale < Formula
  desc "Data warehouse command line explorer"
  homepage "https://github.com/rsyi/whale"
  url "https://github.com/rsyi/whale/releases/download/v0.0.0b6/whale-mac.tar.gz"
  sha256 "a8736d039bf771d7061fd19d90798b71bf0ad0ff258f126dd3bc1d8d18e676dc"
  version "v0.0.0b6"

  depends_on "python"
  depends_on "rust"

  def install
    system "make && make install && cp cli/target/release/whale cli/target/release/wh"
    bin.install "cli/target/release/wh"
    libexec.install "databuilder/build_script.py"
    libexec.install "~/.whale/libexec/env"
  end
end
