class Insteadman < Formula
  desc "INSTEAD manager"
  homepage "https://jhekasoft.github.io/insteadman"
  url "https://github.com/jhekasoft/insteadman3/archive/v3.0.10.1.tar.gz"
  sha256 "fffaf459f7848f0d57d0746b1cb3c116e0893a553fab1c525f09859d797a0540"

  depends_on "pkg-config" => :build
  depends_on "go" => :build
  depends_on "gtk+3"
  depends_on "instead"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match /#{version}/, shell_output("#{bin}/insteadman version 2>&1")
  end
end
