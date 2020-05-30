class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a8/metaframe-mac.tar.gz"
  sha256 "a3afd46f906bd40e7a22213dc2a1606e9823578334d6a393985f287060163add"
  version "v0.0.0a8"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/mf"
    libexec.install Dir["dist"]
    libexec.install Dir["fzf/bin/fzf"]
  end
end
