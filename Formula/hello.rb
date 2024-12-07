# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Hello < Formula
    desc "Homebrew Test Package"
    homepage "https://github.com/abroudoux/hello"
    url "https://github.com/abroudoux/hello/archive/refs/tags/1.1.0.tar.gz"
    sha256 "d13d9a3ffaeccafa25ddd4d744d69c9b0132b95c5c7881b9aa8231f19e5e82b0"
    license "MIT"
  
    def install
      bin.install "hello"
    end
  
    test do
      assert_match "Hello, world!", shell_output("#{bin}/hello")
    end
  end
  