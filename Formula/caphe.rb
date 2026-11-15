# typed: strict
# frozen_string_literal: true

# Caphe is a CPU-native compiled security workflow engine.
class Caphe < Formula
  desc "CPU-native compiled security workflow engine"
  homepage "https://github.com/andrew-ships-stuff/caphe"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrew-ships-stuff/caphe/releases/download/v0.1.0/caphe_v0.1.0_darwin_arm64.tar.gz"
      sha256 "3102f8d81fbee3aa68aafc130b218dc2ecbf82981f0929957e52380a79220fea"
    else
      url "https://github.com/andrew-ships-stuff/caphe/releases/download/v0.1.0/caphe_v0.1.0_darwin_amd64.tar.gz"
      sha256 "e5858b24f6cd4bd28df732c2b3c2badc3f29769c539817e2cf1698de9ea50780"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andrew-ships-stuff/caphe/releases/download/v0.1.0/caphe_v0.1.0_linux_arm64.tar.gz"
      sha256 "7ec69d341715e40af7d59c1f946104f25cb1ded8ed06360ecf769998ff916dec"
    else
      url "https://github.com/andrew-ships-stuff/caphe/releases/download/v0.1.0/caphe_v0.1.0_linux_amd64.tar.gz"
      sha256 "bbbddb4c5db38136aa55ed6f4ed0fe5f75cc6db98d1327059fcc543f29c1d4cf"
    end
  end

  def install
    bin.install "caphe"
  end

  test do
    assert_match "compilerVersion", shell_output("#{bin}/caphe version")
  end
end
