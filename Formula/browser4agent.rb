class Browser4agent < Formula
  desc "MCP server that reads browser tab content and controls the browser"
  homepage "https://github.com/mantou132/browser4agent"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.5.1/browser4agent-aarch64-apple-darwin.tar.gz"
      sha256 "55bf81d5637f35b7614423ba0775346eebec3e858cd35fd18d56f822cb14f077"
    end
    on_intel do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.5.1/browser4agent-x86_64-apple-darwin.tar.gz"
      sha256 "01579187057901a7e86bcb53c80fac88d7f5ebb969ed23ae360b33e5f7cc6736"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mantou132/browser4agent/releases/download/v0.5.1/browser4agent-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d2600fae5cf723cc2ccde86fc217b6dcd7d1eb97e108efdb97e0490e3d50bf5a"
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
