class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a17/metaframe-mac.tar.gz"
  sha256 "da9982c5bbd508e00e3ce02fd1b039702cd76284a04ba73198fa82b0cc2baa07"
  version "v0.0.0a17"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/mf"
    libexec.install Dir["dist"]
    libexec.install Dir["fzf/bin/fzf"]
  end
end
