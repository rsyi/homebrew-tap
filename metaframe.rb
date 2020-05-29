class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a3/metaframe-mac.tar.gz"
  sha256 "716c80f7eb94aa5b53e053c79f9b6d301a6a41fade005b51ce772bfdf0d1c75e"
  version "v0.0.0a3"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/metaframe"
    libexec.install Dir["dist"]
    libexec.install Dir["bin/fzf"]
  end
end
