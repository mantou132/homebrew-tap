class Browser4agent < Formula
  desc "MCP server that reads browser tab content and controls the browser"
  homepage "https://github.com/mantou132/browser4agent"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.3.0/browser4agent-aarch64-apple-darwin.tar.gz"
      sha256 "c2f184f1535fe02b740ed470c3bbe9055e7f0d278d87cb5e6d8720e6adbd5c4e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.3.0/browser4agent-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff8177e1c2ed250baaaa988834eaa9966f2544bab98aedccaecbba7df7bb0c06"
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
