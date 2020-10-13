class Whale < Formula
  desc "Data warehouse command line explorer"
  homepage "https://github.com/rsyi/whale"
  url "https://github.com/rsyi/whale/releases/download/v0.0.0b7/whale-mac.tar.gz"
  sha256 "3d682f91395eab5f7c34b61e26351c7519c12496b779725fb751ba347f5b9bba"
  version "v0.0.0b7"

  depends_on "python"
  depends_on "rust"

  def install
    system "make && make install && cp cli/target/release/whale cli/target/release/wh"
    bin.install "cli/target/release/wh"
    libexec.install "databuilder/build_script.py"
    libexec.install "~/.whale/libexec/env"
  end
end
