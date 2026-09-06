class Browser4agent < Formula
  desc "MCP server that reads browser tab content and controls the browser"
  homepage "https://github.com/mantou132/browser4agent"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.2.6/browser4agent-aarch64-apple-darwin.tar.gz"
      sha256 "38947e0fc0aba7d64e8a5feaac90066a99b460698803187ed3ef4b53ff50ecd4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.2.6/browser4agent-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "510e304125a2e72e397bcb7fbc6cc6e1def5ef741c6ac1ae055b5048bba210fb"
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
