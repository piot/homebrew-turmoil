class Turmoil < Formula
  desc "2D Engine"
  homepage "https://spelmotor.com"

  url "https://github.com/piot/turmoil-dist/releases/download/0.0.0/turmoil.0.0.6.tar.bz2"
  sha256 "2ffdcbfeb2132dd9bc8e98d319142b9397807fb4c24d6bccab2c468fa236e310"

  bottle :unneeded

  def install
    bin.install "bin/swamp"
  end

  test do
    system "#{bin}/swamp", "version"
  end
end
