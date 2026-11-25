# Homebrew formula for ValGuard OSS CLI (40 MVP rules).
# Source of truth lives here; copy to valguard-ai/homebrew-tap/Formula/valguard.rb
# after each release. Refresh the sha256 lines from the release assets with:
#   bash scripts/update-homebrew-sha.sh vX.Y.Z
class Valguard < Formula
  desc "Offline validation for LLM agent output (YAML rules, no network in check)"
  homepage "https://github.com/valguard-ai/valguard"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/valguard-ai/valguard/releases/download/v0.1.2/valguard_0.1.2_darwin_amd64.tar.gz"
      sha256 "46ade1d6a5efbabd246c42807adaa58a69ac8630f2db8e0475b550219637f4ac"
    end
    on_arm do
      url "https://github.com/valguard-ai/valguard/releases/download/v0.1.2/valguard_0.1.2_darwin_arm64.tar.gz"
      sha256 "c9c882b81a841363b5c45092eab387ccc85374558d92de2f98a10724e4d4b537"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/valguard-ai/valguard/releases/download/v0.1.2/valguard_0.1.2_linux_amd64.tar.gz"
      sha256 "95a090498d523d40c16ebf80103291a277e8c68f2df5559f416785d18a73894c"
    end
    on_arm do
      url "https://github.com/valguard-ai/valguard/releases/download/v0.1.2/valguard_0.1.2_linux_arm64.tar.gz"
      sha256 "033a89008740c0693d0ce766bca4a04101383eee143829c6ce7e7ea75dcb4d2f"
    end
  end

  def install
    bin.install "valguard"
  end

  test do
    assert_match "0.1.2", shell_output("#{bin}/valguard version")
  end
end
