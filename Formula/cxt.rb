class Cxt < Formula
  desc "A command-line tool that aggregates file and directory contents into your clipboard, perfect for providing project context to AI chatbots"
  homepage "https://github.com/vaibhav-mattoo/cxt"
  url "https://github.com/vaibhav-mattoo/cxt/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "1577728e90d31c5e782d662e0138338989a19d17ade44ca588525e4a04b3e88f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/cxt", "--help"
  end
end
