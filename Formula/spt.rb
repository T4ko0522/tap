class Spt < Formula
  desc "Control Spotify from your terminal. TUI + CLI"
  homepage "https://github.com/T4ko0522/Spotify-CLI"
  version "1.2.0"
  license "Apache-2.0"

  on_linux do
    on_intel do
      url "https://github.com/T4ko0522/Spotify-CLI/releases/download/v1.2.0/spt-v1.2.0-linux-amd64.tar.gz"
      sha256 "d174aadec0112aa47b82cb6580b9cdd7527223d60be8c64cdba1d35ed0c49f9d"
    end
    on_arm do
      url "https://github.com/T4ko0522/Spotify-CLI/releases/download/v1.2.0/spt-v1.2.0-linux-arm64.tar.gz"
      sha256 "241c9ff24753c59e7d3491dcf6e35907a915d60ed3f816f648f777a64f32aee0"
    end
  end

  def install
    bin.install "spt"
  end

  test do
    system bin/"spt", "--help"
  end
end
