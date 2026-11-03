class Agentdeckd < Formula
  desc "Local agent daemon and session manager for AgentDeck"
  homepage "https://github.com/mantou132/AgentDeck"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mantou132/AgentDeck/releases/download/v0.9.0/agentdeckd-aarch64-apple-darwin.tar.gz"
      sha256 "0ecb68554552498ecf4556f7ff9698118e77787ba7fd48f9f41dbc80e3002171"
    end
    on_intel do
      url "https://github.com/mantou132/AgentDeck/releases/download/v0.9.0/agentdeckd-x86_64-apple-darwin.tar.gz"
      sha256 "4ebb736cc1ef5a7d63f5f717a9c53344371df583335d447fa9bbb9c4858420fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mantou132/AgentDeck/releases/download/v0.9.0/agentdeckd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f10e1e454c83f5b6ee7e9b09478fe0b89c74801359efff6d5633a7c6866aad71"
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
