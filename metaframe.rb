class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a5/metaframe-mac.tar.gz"
  sha256 "0b716ab9a158240dc508a80307fe5d0a70c05192672f436b646236c6d05a1a66"
  version "v0.0.0a5"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/mf"
    libexec.install Dir["dist"]
    libexec.install Dir["fzf/bin/fzf"]
  end
end
