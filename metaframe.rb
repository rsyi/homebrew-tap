class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a12/metaframe-mac.tar.gz"
  sha256 "fc7bab302b0e3f6dc3f415dfcfb7467c60431013217e2ad966baa4262ef1d662"
  version "v0.0.0a12"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/mf"
    libexec.install Dir["dist"]
    libexec.install Dir["fzf/bin/fzf"]
  end
end
