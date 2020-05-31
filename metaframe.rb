class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a11/metaframe-mac.tar.gz"
  sha256 "30f28f35e9730435d348ecfc9cbab6249f952fd87464e79a569e74c22ca2838a"
  version "v0.0.0a11"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/mf"
    libexec.install Dir["dist"]
    libexec.install Dir["fzf/bin/fzf"]
  end
end
