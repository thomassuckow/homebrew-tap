
class Spack < Formula
    desc "A flexible package manager that supports multiple versions, configurations, platforms, and compilers."
    homepage "https://spack.io"
    url "https://github.com/spack/spack/releases/download/v0.11.2/spack-0.11.2.tar.gz"
    sha256 "075780cda887206b81aad599732b7499dacf006f3aa392e90ea899b96e0886f4"

    #depends_on "python"
  
    def install
      prefix.install Dir["lib"]
      prefix.install Dir["etc"]
      prefix.install Dir["var"]
      prefix.install Dir["templates"]
      bin.install "bin/spack"
    end
  
    test do
      system "#{bin}/spack help"
    end
  end