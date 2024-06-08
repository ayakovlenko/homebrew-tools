class Zit < Formula
  desc "Git identity manager"
  homepage "https://github.com/ayakovlenko/zit"
  url "https://github.com/ayakovlenko/zit/archive/refs/tags/v3.0.1.tar.gz"
  sha256 "1b595357c0f602ce4d929ddc870ff9cfeffb8c06c55c203afb385d97ad45ef63"

  depends_on "go" => :build

  def install
    system "./scripts/build.sh"
    bin.install "zit" => "zit"
  end

  test do
    system "#{bin}/zit", "--help"
  end
end
