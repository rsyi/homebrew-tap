class Whale < Formula
  desc "Data warehouse command line explorer"
  homepage "https://github.com/rsyi/whale"
  url "https://github.com/dataframehq/whale/releases/download/v1.0.0b1/whale-mac.tar.gz"
  sha256 "715ac9d362d77d792f85e5545deeeee59e6d5260be6e780a52e2d213f72c7b49"
  version "v1.0.0b1"

  depends_on "python"
  depends_on "rust"

  def install
    system "make build_dir=./libexec"
    system "cp cli/target/release/whale cli/target/release/wh"
    bin.install "cli/target/release/wh"
    prefix.install Dir["libexec"]
  end
end
