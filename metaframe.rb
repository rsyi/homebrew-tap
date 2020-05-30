class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a10/metaframe-mac.tar.gz"
  sha256 "55ec4ffb405c25bc7a6ae4e6a6a87e9847a008e45e3e9d0cd0a72ab76a0b49ff"
  version "v0.0.0a10"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/mf"
    libexec.install Dir["dist"]
    libexec.install Dir["fzf/bin/fzf"]
  end
end
