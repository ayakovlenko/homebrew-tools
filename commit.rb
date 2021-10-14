class Commit < Formula
  desc "git commit on steroids"
  homepage "https://github.com/ayakovlenko/commit"
  url "https://github.com/ayakovlenko/commit/archive/refs/tags/v0.0.1+4.tar.gz"
  sha256 "b9a8c71f5e8536efa58a24021dc1362dc043d27d2765be0096944ebb88bc8e2b"

  depends_on "go" => :build

  def install
    system "./scripts/build.sh"
    bin.install "bin/commit" => "commit"
  end

  test do
    system "#{bin}/commit", "--help"
  end
end
