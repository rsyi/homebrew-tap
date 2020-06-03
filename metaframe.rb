class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a23/metaframe-mac.tar.gz"
  sha256 "60ce0d7aaf9b98c6d495ccfba39def4083dc05067b4ca5bd9517987cb0c9cf51"
  version "v0.0.0a23"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/mf"
    libexec.install Dir["dist"]
    libexec.install Dir["fzf/bin/fzf"]
  end
end
