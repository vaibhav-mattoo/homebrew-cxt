class Cxt < Formula
  desc "A command-line tool that aggregates file and directory contents into your clipboard, perfect for providing project context to AI chatbots"
  homepage "https://github.com/vaibhav-mattoo/cxt"
  url "https://github.com/vaibhav-mattoo/cxt/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "4876cfb5b90b83461dc404fe0bebfe5471dd288a36ba7a66bfddc1b9d6913b9f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/cxt", "--help"
  end
end
