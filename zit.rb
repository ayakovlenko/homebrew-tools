class Zit < Formula
  desc "Git identity manager"
  homepage "https://github.com/ayakovlenko/zit"
  url "https://github.com/ayakovlenko/zit/archive/refs/tags/v2.6.1+1.tar.gz"
  sha256 "f15d1b6509ae2d77dec3066805ab3682c2b284d712ebf9c0d5d73ae88bb94bc9"

  depends_on "go" => :build

  def install
    system "./scripts/build.sh"
    bin.install "zit" => "zit"
  end

  test do
    system "#{bin}/zit", "--help"
  end
end
