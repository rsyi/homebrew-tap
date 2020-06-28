class Metaframe < Formula
  desc "A command line tool to run ETL jobs and view metadata"
  homepage "https://github.com/rsyi/metaframe"
  url "https://github.com/rsyi/metaframe/releases/download/v0.0.0a32/metaframe-mac.tar.gz"
  sha256 "3f33331207c6d83aa1fe22de3a630f800d65bc1b35ae310285e171d17bcffbbf"
  version "v0.0.0a32"

  depends_on "golang"
  depends_on "python"

  def install
    system "make"
    bin.install "shell/mf"
    libexec.install Dir["dist"]
    libexec.install Dir["fzf/bin/fzf"]
  end
end
