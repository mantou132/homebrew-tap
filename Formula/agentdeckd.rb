class Agentdeckd < Formula
  desc "Local agent daemon and session manager for AgentDeck"
  homepage "https://github.com/mantou132/AgentDeck"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mantou132/AgentDeck/releases/download/v0.3.2/agentdeckd-aarch64-apple-darwin.tar.gz"
      sha256 "f72b10059bcf4a262adca692397dc59a2395f0ba17dd72d324ee145854e4167c"
    end
    on_intel do
      url "https://github.com/mantou132/AgentDeck/releases/download/v0.3.2/agentdeckd-x86_64-apple-darwin.tar.gz"
      sha256 "8b25703c3a0d662d24f95a96a06c967ef6036c4b3c8001dfbdff3e1dd5c965cd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mantou132/AgentDeck/releases/download/v0.3.2/agentdeckd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "084769bb0aee1ee899d3ee23a6a4455b20aad03474c6818f0880a2025ceb8253"
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
