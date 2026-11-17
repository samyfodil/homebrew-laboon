class Laboon < Formula
  desc "Run untrusted Linux programs and containers safely, with no VM"
  homepage "https://laboon.sh"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/samyfodil/laboon/releases/download/v0.1.0/laboon_0.1.0_darwin_arm64.tar.gz"
      sha256 "1116d234f49b3f5f3c7ce363ddb98c4d084a4e6d11342a613386a4d89203f279"
    end
    on_intel do
      url "https://github.com/samyfodil/laboon/releases/download/v0.1.0/laboon_0.1.0_darwin_amd64.tar.gz"
      sha256 "bd3c10db9086d5c0c688c502b7a80607c62f5ad1a9ec510f9146d9fece6ba89e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/samyfodil/laboon/releases/download/v0.1.0/laboon_0.1.0_linux_arm64.tar.gz"
      sha256 "8459d1d6a00df841d4fff3419beb02e20cf61a37357c4cb5f720ca5384c1955a"
    end
    on_intel do
      url "https://github.com/samyfodil/laboon/releases/download/v0.1.0/laboon_0.1.0_linux_amd64.tar.gz"
      sha256 "842fe5620db4592498ff599a080c9f8f31b710a27face7ac2ffa13799d5312c8"
    end
  end

  def install
    bin.install "laboon"
  end

  test do
    system "#{bin}/laboon", "version"
  end
end
