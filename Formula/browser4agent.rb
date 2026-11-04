class Browser4agent < Formula
  desc "MCP server that reads browser tab content and controls the browser"
  homepage "https://github.com/mantou132/browser4agent"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.6.0/browser4agent-aarch64-apple-darwin.tar.gz"
      sha256 "0920bfefd70708ca0248a019fe854b538450f10db437c2c5f77b07af26734e98"
    end
    on_intel do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.6.0/browser4agent-x86_64-apple-darwin.tar.gz"
      sha256 "83ae405f21799692ea0fb966c920a0f8904c633acd1d5f1bce9e7f7fcd6a496c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.6.0/browser4agent-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "54520d3f8a78f71b79721d6934eb4d415b26204a4d5a009b851d72f14656971b"
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
