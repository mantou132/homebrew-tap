class Agentdeckd < Formula
  desc "Local agent daemon and session manager for AgentDeck"
  homepage "https://github.com/mantou132/AgentDeck"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mantou132/AgentDeck/releases/download/v0.6.0/agentdeckd-aarch64-apple-darwin.tar.gz"
      sha256 "588f96b88c22aaf26fc45031507becb1e400990bfdc63a660447391b320f53be"
    end
    on_intel do
      url "https://github.com/mantou132/AgentDeck/releases/download/v0.6.0/agentdeckd-x86_64-apple-darwin.tar.gz"
      sha256 "8e111b1b0042875ed70a743a68b53cfee8df9be9b5961cc46f9853b007871e13"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mantou132/AgentDeck/releases/download/v0.6.0/agentdeckd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a109d9a00d2de10ff2365de6ee855cad69eccdcf94590340d8bc3d835f74d40"
    end
  end

  def install
    bin.install "agentdeckd"
  end

  def caveats
    <<~EOS
      Run `agentdeckd` to start the local agent daemon and session manager.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentdeckd --version")
  end
end
