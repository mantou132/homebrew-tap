class Browser4agent < Formula
  desc "MCP server that reads browser tab content and controls the browser"
  homepage "https://github.com/mantou132/browser4agent"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.2.7/browser4agent-aarch64-apple-darwin.tar.gz"
      sha256 "17ce1f291c082152b38b195e99f53d91fda138a19669ae01a5fe5af0a6f7bc9a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.2.7/browser4agent-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "da4da4c313e243f6b36db5af4f60230624c6cb3b360eb4579b6c7b692c644571"
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
