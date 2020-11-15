class TurmoilBin < Formula
  desc "2D Engine"
  homepage "https://spelmotor.com"

  url "https://github.com/piot/turmoil-dist/releases/download/0.0.0/turmoil.0.0.10.tar.bz2"
  sha256 "8d4a23e3f4e20d396495472b69370dfc0a0edeaa9c0f97b8258a20a32047bc4b"

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
