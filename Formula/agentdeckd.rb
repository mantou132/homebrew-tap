class Agentdeckd < Formula
  desc "Local agent daemon and session manager for AgentDeck"
  homepage "https://github.com/mantou132/AgentDeck"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mantou132/AgentDeck/releases/download/v0.4.0/agentdeckd-aarch64-apple-darwin.tar.gz"
      sha256 "54054a4022d7fd65d52eddc74048a4c2589d3a27a37fa6c1b836520b4f6948b8"
    end
    on_intel do
      url "https://github.com/mantou132/AgentDeck/releases/download/v0.4.0/agentdeckd-x86_64-apple-darwin.tar.gz"
      sha256 "991bdc06f6139ca716c0a3992c539f0134e7ac4700d82281e25aeb2ad9e7c21a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mantou132/AgentDeck/releases/download/v0.4.0/agentdeckd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a3fe007d24f7c4e1e3d5849e0da471e93c41fab2014c11808040152d507b55dd"
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
