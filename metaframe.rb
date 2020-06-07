class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a24/metaframe-mac.tar.gz"
  sha256 "1052eabbd0f5d10966bbd8c38448295316ebf68c0c9d604c2265d02fcd5f1752"
  version "v0.0.0a24"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/mf"
    libexec.install Dir["dist"]
    libexec.install Dir["fzf/bin/fzf"]
  end
end
