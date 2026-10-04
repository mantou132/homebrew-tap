class Agentdeckd < Formula
  desc "Local agent daemon and session manager for AgentDeck"
  homepage "https://github.com/mantou132/AgentDeck"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mantou132/AgentDeck/releases/download/v0.5.0/agentdeckd-aarch64-apple-darwin.tar.gz"
      sha256 "b0cc0dc312b35e5737da668968ed0f42fe43b9e45c87e37dc0b5c59a9043cc6c"
    end
    on_intel do
      url "https://github.com/mantou132/AgentDeck/releases/download/v0.5.0/agentdeckd-x86_64-apple-darwin.tar.gz"
      sha256 "e3ad9c58d2dc23efc1847f753bc1e78742c59975c71cb22ac99ddfb6bcd7761b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mantou132/AgentDeck/releases/download/v0.5.0/agentdeckd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b92ab7ab4135cc90dcd5b820e654f238c172e92746357c70fda7b78b7246b0fb"
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
