class Zit < Formula
  desc "Git identity manager"
  homepage "https://github.com/ayakovlenko/zit"
  url "https://github.com/ayakovlenko/zit/archive/refs/tags/v3.1.0.tar.gz"
  sha256 "97f58c7ff762d828129c8cfa9862b48103bbd4caeb06cff5da8ff9e96906a315"

  depends_on "go" => :build

  def install
    system "./scripts/build.sh"
    bin.install "zit" => "zit"
  end

  test do
    system "#{bin}/zit", "--help"
  end
end
