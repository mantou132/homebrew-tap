class Agentdeckd < Formula
  desc "Local agent daemon and session manager for AgentDeck"
  homepage "https://github.com/mantou132/AgentDeck"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mantou132/AgentDeck/releases/download/v0.3.1/agentdeckd-aarch64-apple-darwin.tar.gz"
      sha256 "ed5d10af0c34f41c304e3a6d8536fc1166b73192a5018a350b999f7727d0a7ac"
    end
    on_intel do
      url "https://github.com/mantou132/AgentDeck/releases/download/v0.3.1/agentdeckd-x86_64-apple-darwin.tar.gz"
      sha256 "49e21f498039ca0e2800530ea673158a30dc3ba95d384ce81353e23139ed8841"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mantou132/AgentDeck/releases/download/v0.3.1/agentdeckd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e77ba0cfbacf5bcf00a915297cab12e02d88a3a46788002237117656c5bb96c"
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
