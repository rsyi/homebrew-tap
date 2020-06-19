class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a30/metaframe-mac.tar.gz"
  sha256 "4d0d4d2493ca2c40f8a676a0e863f3d6ea53c4756dd99c8724fa58cc545f4706"
  version "v0.0.0a30"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/mf"
    libexec.install Dir["dist"]
    libexec.install Dir["fzf/bin/fzf"]
  end
end
