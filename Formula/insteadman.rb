class Insteadman < Formula
  desc "INSTEAD manager"
  homepage "https://jhekasoft.github.io/insteadman"
  url "https://github.com/jhekasoft/insteadman3/archive/v3.1.0.tar.gz"
  sha256 "c78fa0954d83d477cdfdef48b8e5c091c3a62d4e94bdf6b70f8a2dccefb3aaea"

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
