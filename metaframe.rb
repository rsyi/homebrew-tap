class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a18/metaframe-mac.tar.gz"
  sha256 "75092463da69a47fbdeec20c64b9d279c05bb99b42d4831eb7df8e97ba86a8ef"
  version "v0.0.0a18"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/mf"
    libexec.install Dir["dist"]
    libexec.install Dir["fzf/bin/fzf"]
  end
end
