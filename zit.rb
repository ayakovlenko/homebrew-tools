class Zit < Formula
  desc "Git identity manager"
  homepage "https://github.com/ayakovlenko/zit"
  url "https://github.com/ayakovlenko/zit/archive/refs/tags/v3.0.0.tar.gz"
  sha256 "6335505b876753908bd34e08b4974aa5a993108e8a14a654d4c4f305f2a614ca"

  depends_on "go" => :build

  def install
    system "./scripts/build.sh"
    bin.install "zit" => "zit"
  end

  test do
    system "#{bin}/zit", "--help"
  end
end
