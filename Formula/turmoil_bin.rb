class TurmoilBin < Formula
  desc "2D Engine"
  homepage "https://spelmotor.com"

  url "https://github.com/piot/turmoil-dist/releases/download/0.0.0/turmoil.0.0.8.tar.bz2"
  sha256 "2398819a6c6ae26424ad0360409b9af93be92b401a764957b2f8b14943b0ed49"

  bottle :unneeded

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
