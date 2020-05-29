class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a1/metaframe-mac.tar.gz"
  sha256 "1696396aeb14f881e9ec6100c357f17c53e9717950937252e5d15b592f7c6feb"
  version "v0.0.0a0"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/metaframe.sh"
    libexec.install Dir["dist"]
    libexec.install Dir["bin/fzf"]
  end
end
