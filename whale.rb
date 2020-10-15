class Whale < Formula
  desc "Data warehouse command line explorer"
  homepage "https://github.com/rsyi/whale"
  url "https://github.com/dataframehq/whale/releases/download/v1.0.0b0/whale-mac.tar.gz"
  sha256 "5c41508d1a96931c9547fd24951aac092572246d06e74ab302e2635aa929e068"
  version "v1.0.0b0"

  depends_on "python"
  depends_on "rust"

  def install
    system "make build_dir=./libexec"
    system "cp cli/target/release/whale cli/target/release/wh"
    bin.install "cli/target/release/wh"
    prefix.install Dir["libexec"]
  end
end
