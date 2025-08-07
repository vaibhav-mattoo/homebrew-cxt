class Cxt < Formula
  desc "A command-line tool that aggregates file and directory contents into your clipboard, perfect for providing project context to AI chatbots"
  homepage "https://github.com/vaibhav-mattoo/cxt"
  url "https://github.com/vaibhav-mattoo/cxt/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "cf04dcd4c6b93727961b501b3fca42befa9c2351afd01dcdc69d3ea5764a3058"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/cxt", "--help"
  end
end
