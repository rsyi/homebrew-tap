class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a4/metaframe-mac.tar.gz"
  sha256 "41b5730bd943b64755725013d881d3224b987d03fe9f11e9e19781c7a7cd5695"
  version "v0.0.0a4"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/metaframe"
    libexec.install Dir["dist"]
    libexec.install Dir["bin/fzf"]
  end
end
