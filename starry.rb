class Starry < Formula
  desc 'Initialize ispec packages'
  homepage 'https://github.com/ispec-inc/starry'
  version '0.1.0'

  on_macos do
    if Hardware::CPU.intel?
      t = "x86_64-apple-darwin"
      url "https://github.com/ispec-inc/starry/releases/download/0.1.0/starry-#{t}"

      def install
        bin.install "starry-#{t}" => "starry"
      end
    end

    if Hardware::CPU.arm?
      t = "aarch64-apple-darwin"
      url "https://github.com/ispec-inc/starry/releases/download/0.1.0/starry-#{t}"

      def install
        bin.install "starry-#{t}" => "starry"
      end
    end

  end

  on_linux do
    t = "x86_64-unknown-linux-gnu"
    url "https://github.com/ispec-inc/starry/releases/download/0.1.0/starry-#{t}"

    def install
      bin.install "starry-#{t}" => "starry"
    end
  end
end
