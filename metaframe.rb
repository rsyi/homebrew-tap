class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a16/metaframe-mac.tar.gz"
  sha256 "f6de9b9fb26b95012cc07aa6724e243f85360b99f1a507e4c6bd8f7d12927c66"
  version "v0.0.0a16"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/mf"
    libexec.install Dir["dist"]
    libexec.install Dir["fzf/bin/fzf"]
  end
end
