class Zit < Formula
  desc "Git identity manager"
  homepage "https://github.com/ayakovlenko/zit"
  url "https://github.com/ayakovlenko/zit/archive/refs/tags/v3.1.2.tar.gz"
  sha256 "c8427148f6b5e87c44dce3b428fa004e75a9e92f3aa8be6c452e0f4033470ee9"

  depends_on "go" => :build

  def install
    system "./scripts/build.sh"
    bin.install "zit" => "zit"
  end

  test do
    system "#{bin}/zit", "--help"
  end
end
