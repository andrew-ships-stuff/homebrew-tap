# typed: strict
# frozen_string_literal: true

# Caphe is a CPU-native compiled security workflow engine.
class Caphe < Formula
  desc "CPU-native compiled security workflow engine"
  homepage "https://github.com/andrew-ships-stuff/caphe"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrew-ships-stuff/caphe/releases/download/v0.1.4/caphe_v0.1.4_darwin_arm64.tar.gz"
      sha256 "cf07086df50ebc9556c02db7e8d2189da7c7c24ada73acf6da3e7ce773476a03"
    else
      url "https://github.com/andrew-ships-stuff/caphe/releases/download/v0.1.4/caphe_v0.1.4_darwin_amd64.tar.gz"
      sha256 "fe6a2e960d126f93ce409bffac2449fc4a2794836fef2c2a6dc4fc038333bdaf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andrew-ships-stuff/caphe/releases/download/v0.1.4/caphe_v0.1.4_linux_arm64.tar.gz"
      sha256 "ed626cdef5a4e0424cf1cf6b370a82e19666b86b0ca166fa3f35b3380ac02eb9"
    else
      url "https://github.com/andrew-ships-stuff/caphe/releases/download/v0.1.4/caphe_v0.1.4_linux_amd64.tar.gz"
      sha256 "bc5dacaee9bd3ddb0251419e90102ae2da794fecb0d2c7a91b82cb538b78a443"
    end
  end

  def install
    bin.install "caphe"
  end

  test do
    assert_match "compilerVersion", shell_output("#{bin}/caphe version")
  end
end
