class Zit < Formula
  desc "Git identity manager"
  homepage "https://github.com/ayakovlenko/zit"
  url "https://github.com/ayakovlenko/zit/archive/v2.3.0.tar.gz"
  sha256 "ee71f51880c0d0a7b148fbdce7d544fdb5ff960d069654de05a306c51f5026c7"

  depends_on "go" => :build

  def install
    system "./scripts/build.sh"
    bin.install "zit" => "zit"
  end

  test do
    system "#{bin}/zit", "--help"
  end
end
