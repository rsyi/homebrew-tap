class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a27/metaframe-mac.tar.gz"
  sha256 "de78a2da891306222b6d22309945bd67c66575820395b8a2c01b26e3a567ff68"
  version "v0.0.0a27"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/mf"
    libexec.install Dir["dist"]
    libexec.install Dir["fzf/bin/fzf"]
  end
end
