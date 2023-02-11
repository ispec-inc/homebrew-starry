class Starry < Formula
  desc 'Initialize ispec packages'
  homepage 'https://github.com/ispec-inc/starry'
  version '0.1.0'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/ispec-inc/starry/releases/download/0.1.0/starry-x86_64-apple-darwin'
    end

    if Hardware::CPU.arm?
      url 'https://github.com/ispec-inc/starry/releases/download/0.1.0/starry-aarch64-apple-darwin'
    end

    def install
      system "mv", "starry*", "starry"
      bin.install "starry"
    end
  end

  on_linux do
    url 'https://github.com/ispec-inc/starry/releases/download/0.1.0/x86_64-unknown-linux-gnu'

    def install
      system "mv", "starry*", "starry"
      bin.install "starry"
    end
  end
end
