class TurmoilBin < Formula
  desc "2D Engine"
  homepage "https://spelmotor.com"

  url "https://github.com/piot/turmoil-dist/releases/download/0.0.0/turmoil.0.0.6.tar.gz"
  sha256 "bcd778a64605b6645ccb21be5823189a58e15799ecd0624e95c9c29d23ffa595"

  bottle :unneeded

  def install
    bin.install "bin/swamp"
  end

  test do
    system "#{bin}/swamp", "version"
  end
end
