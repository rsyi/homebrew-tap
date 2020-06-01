class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a15/metaframe-mac.tar.gz"
  sha256 "c8b7cad7dfaed72c6bc28953e9770a0a7a0b1098b99ba66683355df481e65873"
  version "v0.0.0a15"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/mf"
    libexec.install Dir["dist"]
    libexec.install Dir["fzf/bin/fzf"]
  end
end
