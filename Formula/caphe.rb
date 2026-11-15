# typed: strict
# frozen_string_literal: true

# Caphe is a CPU-native compiled security workflow engine.
class Caphe < Formula
  desc "CPU-native compiled security workflow engine"
  homepage "https://github.com/andrew-ships-stuff/caphe"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrew-ships-stuff/caphe/releases/download/v0.1.1/caphe_v0.1.1_darwin_arm64.tar.gz"
      sha256 "4ffc40cd7f0cf98b54d578a7d1318732f66bef4920ec11a1ea064e96fdecb3af"
    else
      url "https://github.com/andrew-ships-stuff/caphe/releases/download/v0.1.1/caphe_v0.1.1_darwin_amd64.tar.gz"
      sha256 "1345734da03240a2b83fab87090ad8ec9e1fe622a29be10ecc5bf0cf8d978701"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andrew-ships-stuff/caphe/releases/download/v0.1.1/caphe_v0.1.1_linux_arm64.tar.gz"
      sha256 "17c763a7252772994f7c7444459c056b8b29eece864e82ee61293ff366d9e2fa"
    else
      url "https://github.com/andrew-ships-stuff/caphe/releases/download/v0.1.1/caphe_v0.1.1_linux_amd64.tar.gz"
      sha256 "2f1287dfd7a8f64b17c2db7a0e0d51f0658500e1348334150badfb30e75d7961"
    end
  end

  def install
    bin.install "caphe"
  end

  test do
    assert_match "compilerVersion", shell_output("#{bin}/caphe version")
  end
end
