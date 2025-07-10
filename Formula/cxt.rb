class Cxt < Formula
  desc "A command-line tool that aggregates file and directory contents into your clipboard, perfect for providing project context to AI chatbots"
  homepage "https://github.com/vaibhav-mattoo/cxt"
  url "https://github.com/vaibhav-mattoo/cxt/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "39fdc974a46cc9b993409b3e3c6811b1614e5bcea12ba0766a1f15aad6d596f1"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/cxt", "--help"
  end
end
