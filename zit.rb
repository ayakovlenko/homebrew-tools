class Zit < Formula
  desc "Git identity manager"
  homepage "https://github.com/ayakovlenko/zit"
  url "https://github.com/ayakovlenko/zit/archive/v2.2.0+1.tar.gz"
  sha256 "e76e4bb34d9ae61826725da0a235eea9b1f69be2449f4185cdf1b4b95f06bec2"

  depends_on "go" => :build

  def install
    system "./scripts/build.sh"
    bin.install "zit" => "zit"
  end

  test do
    system "#{bin}/zit", "--help"
  end
end
