class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a9/metaframe-mac.tar.gz"
  sha256 "26a8f2f760e52b9c3968f2e11d91d9f393586cdd7facd16c5120db79f016fc83"
  version "v0.0.0a9"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/mf"
    libexec.install Dir["dist"]
    libexec.install Dir["fzf/bin/fzf"]
  end
end
