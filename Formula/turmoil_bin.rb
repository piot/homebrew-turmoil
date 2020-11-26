class TurmoilBin < Formula
  desc "2D Engine"
  homepage "https://spelmotor.com"

  url "https://github.com/piot/turmoil-dist/releases/download/0.0.0/turmoil.0.0.11.tar.bz2"
  sha256 "ca459ebe6f589d10c6eebe80182f3685fbc43e0eb0e9512e25994870157a265f"

  bottle :unneeded

  def install
    os_extension = ""
    if OS.linux?
      os_extension = "linux_amd64"
    elsif OS.mac?
      os_extension = "darwin_amd64"
    end
    bin.install "bin/turmoil_#{os_extension}" => "turmoil"
    bin.install "bin/swamp_#{os_extension}" => "swamp"
    bin.install "bin/turmoilc"

    opt_prefix.install "packages/"
  end

  test do
    system "#{bin}/swamp", "version"
    system "#{bin}/turmoil", "version"
  end
end
