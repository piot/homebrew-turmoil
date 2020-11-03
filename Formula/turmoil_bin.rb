class TurmoilBin < Formula
  desc "2D Engine"
  homepage "https://spelmotor.com"

  url "https://github.com/piot/turmoil-dist/releases/download/0.0.0/turmoil.0.0.8.tar.bz2"
  sha256 "d23f0f4225f6e398469502d877d19bf186c29db8a442d2207d993ca76b62b8a1"

 # bottle :unneeded

  def install
    bin.install "bin/swamp"
    bin.install "bin/turmoilc"
    bin.install "bin/turmoil_linux" => "turmoil" if OS.linux?
    bin.install "bin/turmoil_mac" => "turmoil" if OS.mac?
  end

  test do
    system "#{bin}/swamp", "version"
    system "#{bin}/turmoil", "version"
  end
end
