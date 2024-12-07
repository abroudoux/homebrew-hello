class Hello < Formula
    desc "Homebrew Test Package"
    homepage "https://github.com/abroudoux/hello"
    url "https://github.com/abroudoux/hello/archive/refs/tags/1.1.0.tar.gz"
    sha256 "40e97baa22bc45b3956425a75906d11533bfb2c167235924402dd14a78a39f98"
    license "MIT"

    def install
      bin.install "hello"
    end

    test do
      assert_match "Hello, world!", shell_output("#{bin}/hello")
    end
  end
  