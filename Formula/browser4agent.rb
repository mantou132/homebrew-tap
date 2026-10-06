class Browser4agent < Formula
  desc "MCP server that reads browser tab content and controls the browser"
  homepage "https://github.com/mantou132/browser4agent"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.5.0/browser4agent-aarch64-apple-darwin.tar.gz"
      sha256 "d6cf578a7fcb57b392000a14cc535c977b1916fa0867d27413df4e74850a9f2f"
    end
    on_intel do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.5.0/browser4agent-x86_64-apple-darwin.tar.gz"
      sha256 "72039213459adb439471c918486c9fd83e8cd78e01cda956bc706baa566dec2c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.5.0/browser4agent-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "127a93295508a2aea5c2ffca1f0e5bae8bcedd357509f93fb99dabd41924ee9a"
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
