class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a28/metaframe-mac.tar.gz"
  sha256 "431152a5e9e4ab6adf8e886ee613a2f6ce6d4789c38c4c72cd388bb50481e637"
  version "v0.0.0a28"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/mf"
    libexec.install Dir["dist"]
    libexec.install Dir["fzf/bin/fzf"]
  end
end
