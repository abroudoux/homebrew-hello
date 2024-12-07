class Hello < Formula
    desc "Homebrew Test Package"
    homepage "https://github.com/abroudoux/hello"
    url "https://github.com/abroudoux/hello/archive/refs/tags/1.1.0.tar.gz"
    sha256 "c1629222afecc4a60b07b4e0daa914e5af564698"
    license "MIT"
  
    def install
      bin.install "hello"
    end
  
    test do
      assert_match "Hello, world!", shell_output("#{bin}/hello")
    end
  end
  