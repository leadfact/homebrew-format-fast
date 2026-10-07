# Generated from the release archives; do not edit checksums manually.
class Formatfast < Formula
  desc "Fast, lossless JSON formatter and multiline log viewer"
  homepage "https://github.com/leadfact/format-fast"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/leadfact/format-fast/releases/download/v0.3.0/formatfast_0.3.0_darwin_arm64.tar.gz"
      sha256 "fcada4712ed8994b4a11f65d11017fdbabb345ff99959eb841938eb578e4c4c7"
    end
    on_intel do
      url "https://github.com/leadfact/format-fast/releases/download/v0.3.0/formatfast_0.3.0_darwin_amd64.tar.gz"
      sha256 "9c3f8a045dd8869c02733366405dce0e2459b2e02d4d8baca1c4afcf6501bbe5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leadfact/format-fast/releases/download/v0.3.0/formatfast_0.3.0_linux_arm64.tar.gz"
      sha256 "ce4ab43ef9fef0e52e07807375f7b6dd6d927a1f0e0309367401b91466f1e203"
    end
    on_intel do
      url "https://github.com/leadfact/format-fast/releases/download/v0.3.0/formatfast_0.3.0_linux_amd64.tar.gz"
      sha256 "4bab2a46fa1e8ae893c6d3ab6e95a7dcd3235594a924c2785e2353e486dacfc1"
    end
  end

  def install
    bin.install "formatfast"
  end

  test do
    assert_match "formatfast #{version}", shell_output("#{bin}/formatfast --version")
    assert_equal "{\"amount\":1.2300,\"id\":9007199254740993}\n",
                 shell_output("#{bin}/formatfast --compact '{\"amount\":1.2300,\"id\":9007199254740993}'")
  end
end
