class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a9/metaframe-mac.tar.gz"
  sha256 "08aa5aa50c8c364624a41344cc46f500e27bf9d4976dc1a889c3002733b620d7"
  version "v0.0.0a9"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/metaframe.sh"
    libexec.install Dir["dist"]
    libexec.install Dir["bin/fzf"]
  end
end
