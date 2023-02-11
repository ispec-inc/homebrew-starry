class Starry < Formula
  desc 'Initialize ispec packages'
  homepage 'https://github.com/ispec-inc/starry'
  version '0.1.1'

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ispec-inc/starry/releases/download/0.1.1/starry-x86_64-apple-darwin"

      def install
        bin.install "starry-x86_64-apple-darwin" => "starry"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/ispec-inc/starry/releases/download/0.1.1/starry-aarch64-apple-darwin"

      def install
        bin.install "starry-aarch64-apple-darwin" => "starry"
      end
    end

  end

  on_linux do
    t = "x86_64-unknown-linux-gnu"
    url "https://github.com/ispec-inc/starry/releases/download/0.1.1/starry-x86_64-unknown-linux-gnu"

    def install
      bin.install "starry-x86_64-unknown-linux-gnu" => "starry"
    end
  end
end
