class Browser4agent < Formula
  desc "MCP server that reads browser tab content and controls the browser"
  homepage "https://github.com/mantou132/browser4agent"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.4.1/browser4agent-aarch64-apple-darwin.tar.gz"
      sha256 "e4c68d2fa6bf5f4c653cf70555ffbe88a0c57f6b986a939c675176439d66e8a6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.4.1/browser4agent-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0af9a2ca9525c898d930d8fb90f7aee0c7f5321a4c0e86c47e9489ba739e0126"
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
