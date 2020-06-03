class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a20/metaframe-mac.tar.gz"
  sha256 "8f1a86eab77e894c1c0e65783b35aa7dbad13672cd19f71356719cbfe052b6d5"
  version "v0.0.0a20"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/mf"
    libexec.install Dir["dist"]
    libexec.install Dir["fzf/bin/fzf"]
  end
end
