class TurmoilBin < Formula
  desc "2D Engine"
  homepage "https://spelmotor.com"

  url "https://github.com/piot/turmoil-dist/releases/download/0.0.0/turmoil.0.0.9.tar.bz2"
  sha256 "f63b50fd66a3cf32564ac09377c39ae203307ddeb4111b759ed257b6fe68ca9d"

  bottle :unneeded

  def install
    os_extension = "darwin_amd64"
    if OS.linux?
      os_extension = "linux_amd64"
    elsif OS.mac?
    end
    bin.install "bin/turmoil_#{os_extension}" => "turmoil"
    bin.install "bin/swamp_#{os_extension}" => "swamp"
    bin.install "bin/turmoilc"

    opt_prefix.install Dir["packages/"]
  end

  test do
    system "#{bin}/swamp", "version"
    system "#{bin}/turmoil", "version"
  end
end
