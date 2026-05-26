class Browser4agent < Formula
  desc "MCP server that reads browser tab content and controls the browser"
  homepage "https://github.com/mantou132/browser4agent"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.1.3/browser4agent-aarch64-apple-darwin.tar.gz"
      sha256 "782516a1234828c59daa7f7a0c9da6378196c6f86db41b61001b100b37a66af0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.1.3/browser4agent-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "450d54f0f3de04b5bf8681144c647f0caf3accd0e8970aa912eea7468f11c183"
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
