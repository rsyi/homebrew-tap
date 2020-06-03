class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a19/metaframe-mac.tar.gz"
  sha256 "ed110f47410974e0fe6cb626f12a33403456c6c45d0c3a672f2ebd98a4c460b5"
  version "v0.0.0a19"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/mf"
    libexec.install Dir["dist"]
    libexec.install Dir["fzf/bin/fzf"]
  end
end
