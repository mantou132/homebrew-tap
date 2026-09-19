class Browser4agent < Formula
  desc "MCP server that reads browser tab content and controls the browser"
  homepage "https://github.com/mantou132/browser4agent"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.4.0/browser4agent-aarch64-apple-darwin.tar.gz"
      sha256 "597ad56ff022449567a5f5ccfb161682a6da3781035f60d685671d3da4f5f456"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.4.0/browser4agent-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a0c0384cb61284c4ac78e116bb1eb7803a4476246ddb6844256faf81690d79e"
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
