class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a21/metaframe-mac.tar.gz"
  sha256 "d7dd05d08ba7104a24c3fc2a77a961ebb049defa92215a557213019752bd9fab"
  version "v0.0.0a21"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/mf"
    libexec.install Dir["dist"]
    libexec.install Dir["fzf/bin/fzf"]
  end
end
