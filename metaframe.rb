class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a2/metaframe-mac.tar.gz"
  sha256 "d0510e6cae63a6cd2705ed2c7a473bd33b266d69f236cff78b878c725988c0b3"
  version "v0.0.0a2"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/metaframe"
    libexec.install Dir["dist"]
    libexec.install Dir["bin/fzf"]
  end
end
