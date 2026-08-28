class Browser4agent < Formula
  desc "MCP server that reads browser tab content and controls the browser"
  homepage "https://github.com/mantou132/browser4agent"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.2.4/browser4agent-aarch64-apple-darwin.tar.gz"
      sha256 "3844a77b148dd93a28473822aa0bcc3ec2f85346a8209a8e16ff881c9f194458"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.2.4/browser4agent-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2c69137b7dc9aaa186cae1d2c6d162ba99ae7cbbaacd6312c5a155ee967e2b28"
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
