class Browser4agent < Formula
  desc "MCP server that reads browser tab content and controls the browser"
  homepage "https://github.com/mantou132/browser4agent"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.2.5/browser4agent-aarch64-apple-darwin.tar.gz"
      sha256 "b32393ab61c73d6c59a7be20f0607e0f014ffdcef14d5292abef81b1d46be7e4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.2.5/browser4agent-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d4e24bd5f17fc2ca9ab75c109fae58d3dd6521294720652cdf044e92f1729a10"
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
