class Insteadman < Formula
  desc "INSTEAD manager"
  homepage "https://jhekasoft.github.io/insteadman"
  url "https://github.com/jhekasoft/insteadman3/archive/v3.1.2.tar.gz"
  sha256 "a821eec1191c56e6ce897b07db32704a63acd9aabf443c174452584134cfdb3f"

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
