class Insteadman < Formula
  desc "INSTEAD manager"
  homepage "https://jhekasoft.github.io/insteadman"
  url "https://github.com/jhekasoft/insteadman3/archive/v3.1.1.tar.gz"
  sha256 "d5b2d209b346155996cc83fb8def74f5dd5a574a082fc52a4c27c6ca2c951c40"

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
