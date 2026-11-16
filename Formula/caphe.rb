# typed: strict
# frozen_string_literal: true

# Caphe is a CPU-native compiled security workflow engine.
class Caphe < Formula
  desc "CPU-native compiled security workflow engine"
  homepage "https://github.com/andrew-ships-stuff/caphe"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrew-ships-stuff/caphe/releases/download/v0.1.3/caphe_v0.1.3_darwin_arm64.tar.gz"
      sha256 "6dba5dc161dea394223f9028efd45f72839a9c62e4c083c68a0ff48d0b7ea177"
    else
      url "https://github.com/andrew-ships-stuff/caphe/releases/download/v0.1.3/caphe_v0.1.3_darwin_amd64.tar.gz"
      sha256 "41fb06869d3f1da1773399f19065a85a0e8fe88e6d1c2309fcaee65fc3543c87"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andrew-ships-stuff/caphe/releases/download/v0.1.3/caphe_v0.1.3_linux_arm64.tar.gz"
      sha256 "d242990b62dad725e3212067a73697a30259420c627e2de263b6b529c6b2d020"
    else
      url "https://github.com/andrew-ships-stuff/caphe/releases/download/v0.1.3/caphe_v0.1.3_linux_amd64.tar.gz"
      sha256 "343cba24f48eb9712c161f87d4e87773f93b4a1de9c6a18a2524ab7bd22a6ce7"
    end
  end

  def install
    bin.install "caphe"
  end

  test do
    assert_match "compilerVersion", shell_output("#{bin}/caphe version")
  end
end
