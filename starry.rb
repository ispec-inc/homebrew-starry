class Starry < Formula
  desc 'Initialize ispec packages'
  homepage 'https://github.com/ispec-inc/starry'
  url 'https://github.com/ispec-inc/starry.git'
  head 'https://github.com/ispec-inc/starry.git'
  version "0.1.0"

  def install
    karnel = `uname -s`.strip.downcase
    arch = {
      'x86_64'  => 'x86_64',
      'aarch64' => 'aarch64',
      'arm64'   => 'aarch64',
    }.fetch(`uname -m`.strip)

    case karnel
    when "linux"
      target = "x86_64-unknown-linux-gnu"
    when "Darwin"
      case arch
      when "x86_64"
        target = "x86_64-apple-darwin"
      else
        target = "aarch64-apple-darwin"
      end
    end

    system 'curl',
      "-o",
      "starry",
      "-sL",
      "https://github.com/ispec-inc/starry/releases/download/0.1.0/starry-#{target}"

    system 'chmod', "+x", 'starry'

    bin.install 'starry'
  end
end
