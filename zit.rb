class Zit < Formula
  desc "Git identity manager"
  homepage "https://github.com/ayakovlenko/zit"
  url "https://github.com/ayakovlenko/zit/archive/v2.4.0+1.tar.gz"
  sha256 "975a9bfd47e7b4fbfaeb681b9a7dc6d3ec986b8a40bc4a190a309914bc56d5d0"

  depends_on "go" => :build

  def install
    system "./scripts/build.sh"
    bin.install "zit" => "zit"
  end

  test do
    system "#{bin}/zit", "--help"
  end
end
