class Devsweep < Formula
  desc "Find and clean what's eating a developer's disk"
  homepage "https://github.com/thearyanahmed/devsweep"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/thearyanahmed/devsweep/releases/download/v0.2.0/devsweep-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "d9fc396369856fa9cb0985f86a45598701927b81230c788e4b12df331502c07d"
    end
    on_intel do
      url "https://github.com/thearyanahmed/devsweep/releases/download/v0.2.0/devsweep-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "22bda7e4ef776471a77f099c45d362661f3626c4dd608d9d051f28013466c936"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thearyanahmed/devsweep/releases/download/v0.2.0/devsweep-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "190c177ee258d59cd4394d7267f362d44a3c9de50eacff4d110d0117c800d3c2"
    end
    on_intel do
      url "https://github.com/thearyanahmed/devsweep/releases/download/v0.2.0/devsweep-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "52d1242e5f3a1ae1c68af8e12e9d685dd95d1fbe6ea6e3dca17d650e3bc7b462"
    end
  end

  def install
    bin.install "devsweep"
  end

  test do
    system bin/"devsweep", "-h"
  end
end
