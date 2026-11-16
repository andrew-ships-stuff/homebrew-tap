# typed: strict
# frozen_string_literal: true

# Caphe is a CPU-native compiled security workflow engine.
class Caphe < Formula
  desc "CPU-native compiled security workflow engine"
  homepage "https://github.com/andrew-ships-stuff/caphe"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrew-ships-stuff/caphe/releases/download/v0.1.2/caphe_v0.1.2_darwin_arm64.tar.gz"
      sha256 "fdcfda5b3c352812ef0478b89f3e81562a10111b7bf80e665bbb359a6530c7ed"
    else
      url "https://github.com/andrew-ships-stuff/caphe/releases/download/v0.1.2/caphe_v0.1.2_darwin_amd64.tar.gz"
      sha256 "60bb036e7c3bf76f1cbdd9d86b24dfbf29c270443c5b811539fd325903b8446c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andrew-ships-stuff/caphe/releases/download/v0.1.2/caphe_v0.1.2_linux_arm64.tar.gz"
      sha256 "be28e2a518d908d701c141a0f15d30ff12d1c56e924fffdfdbb0698934ebc8d8"
    else
      url "https://github.com/andrew-ships-stuff/caphe/releases/download/v0.1.2/caphe_v0.1.2_linux_amd64.tar.gz"
      sha256 "2affad28fec3776fffd0dd746ca0f99285493aa046ad5e64dc0084856d285eb1"
    end
  end

  def install
    bin.install "caphe"
  end

  test do
    assert_match "compilerVersion", shell_output("#{bin}/caphe version")
  end
end
