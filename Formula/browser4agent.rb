class Browser4agent < Formula
  desc "MCP server that reads browser tab content and controls the browser"
  homepage "https://github.com/mantou132/browser4agent"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.2.3/browser4agent-aarch64-apple-darwin.tar.gz"
      sha256 "21dbf903ac0b248cf429af06b38e63931da71e3e2d2f0252af67a7ecfd7c68fc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.2.3/browser4agent-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3e7fea0a451412f9b650b2f0d40c13eb3895292e615d30636fef537af94076b3"
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
