class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a13/metaframe-mac.tar.gz"
  sha256 "410d4c4043f6bbfd151bf12a281732a4f689149b3572b86d8c75940d41fcdc68"
  version "v0.0.0a13"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/mf"
    libexec.install Dir["dist"]
    libexec.install Dir["fzf/bin/fzf"]
  end
end
