class Browser4agent < Formula
  desc "MCP server that reads browser tab content and controls the browser"
  homepage "https://github.com/mantou132/browser4agent"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.2.1/browser4agent-aarch64-apple-darwin.tar.gz"
      sha256 "a2719cadd92181830409f0b0bb33c1a795daea4fe28e98422f8ffe8f49cc5c97"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.2.1/browser4agent-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d6578f96861c8f7dfd04732720feae3c0e45fe00131a0bca1098847d6942b28a"
    end
  end

  def install
    bin.install "browser4agent"
  end

  def caveats
    <<~EOS
      Run `browser4agent` to register the native messaging host
      and configure your MCP clients (Codex / Claude / VS Code / Cursor / Zed).
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/browser4agent --version")
  end
end
