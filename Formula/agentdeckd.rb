class Agentdeckd < Formula
  desc "Local agent daemon and session manager for AgentDeck"
  homepage "https://github.com/mantou132/AgentDeck"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mantou132/AgentDeck/releases/download/v0.7.0/agentdeckd-aarch64-apple-darwin.tar.gz"
      sha256 "657c6626a07bf2994c857de6ba1ea18e80e110b607e3db21cf5571a3ea8f08be"
    end
    on_intel do
      url "https://github.com/mantou132/AgentDeck/releases/download/v0.7.0/agentdeckd-x86_64-apple-darwin.tar.gz"
      sha256 "8e1dfca13b702c8122e6ecdca77deb587167e5133c800d5da8ed9e5c1a27b371"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mantou132/AgentDeck/releases/download/v0.7.0/agentdeckd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1e32dfc0a2dba5e527bb7bca24f255d44c24fcb2c801d33e007f62412bcc153b"
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
