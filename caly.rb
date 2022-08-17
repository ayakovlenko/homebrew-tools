class Caly < Formula
  desc "Command-line calendar"
  homepage "https://github.com/ayakovlenko/caly"
  url "https://github.com/ayakovlenko/caly/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "6b79d6c662ea2adf888ca6c9b074575f5287fbeb8c7d63d952f4b1ae2424af36"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "caly", "cmd/caly/main.go"
    bin.install "caly" => "caly"
  end

  test do
    system "#{bin}/caly", "-h"
  end
end
