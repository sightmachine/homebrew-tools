class Stern < Formula
  desc "Tail multiple pods and containers from Kubernetes"
  homepage "https://github.com/sightmachine/stern"
  url "https://github.com/sightmachine/stern/releases/download/1.6.1/stern-darwin-amd64"
  version "1.6.1"
  sha256 "87a6c71d02bcf803a49154b57b8c346ba3d67a3714373f2ddee5dc75566765aa"
  
  def install
    mv Dir.glob("stern-*").first, "foo"

    bin.install "stern"
  end

  test do
    system "stern -h"
  end
end