class Zit < Formula
  desc "Git identity manager"
  homepage "https://github.com/ayakovlenko/zit"
  url "https://github.com/ayakovlenko/zit/archive/refs/tags/v3.1.0-alpha.2.tar.gz"
  sha256 "cd829b375f391ba5c9f7696777f0e2b405ebfc0153d9354d07805f2213a46d5d"

  depends_on "go" => :build

  def install
    system "./scripts/build.sh"
    bin.install "zit" => "zit"
  end

  test do
    system "#{bin}/zit", "--help"
  end
end
