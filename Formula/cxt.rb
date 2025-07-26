class Cxt < Formula
  desc "A command-line tool that aggregates file and directory contents into your clipboard, perfect for providing project context to AI chatbots"
  homepage "https://github.com/vaibhav-mattoo/cxt"
  url "https://github.com/vaibhav-mattoo/cxt/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "03bcc57a98b19407c381afb2ae3ea205a1801ffc4663e8218b6a31b2e0786a08"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/cxt", "--help"
  end
end
