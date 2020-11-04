class TurmoilBin < Formula
  desc "2D Engine"
  homepage "https://spelmotor.com"

  url "https://github.com/piot/turmoil-dist/releases/download/0.0.0/turmoil.0.0.9.tar.bz2"
  sha256 "14eb51c7886b285bbdeb67753412bf7aa2eca7a2840c651753df5e4dd44c1cb6"

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

    opt_prefix.install Dir["packages/"]
  end

  test do
    system "#{bin}/swamp", "version"
    system "#{bin}/turmoil", "version"
  end
end
