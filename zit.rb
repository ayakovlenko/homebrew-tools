class Zit < Formula
  desc "Git identity manager"
  homepage "https://github.com/ayakovlenko/zit"
  url "https://github.com/ayakovlenko/zit/archive/v2.2.0+1.tar.gz"
  sha256 "dfc6c008f08409ff9aec7348276d501dca950204fb28274f2f8ac30dd622d7b2"

  depends_on "go" => :build

  def install
    system "./scripts/build.sh"
    bin.install "zit" => "zit"
  end

  test do
    system "#{bin}/zit", "--help"
  end
end
