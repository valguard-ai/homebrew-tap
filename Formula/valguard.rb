# Homebrew formula for ValGuard OSS CLI (40 MVP rules).
# Copy to valguard-ai/homebrew-tap/Formula/valguard.rb after updating sha256:
#   bash scripts/update-homebrew-sha.sh v0.1.0
class Valguard < Formula
  desc "Offline validation for LLM agent output (YAML rules, no network in check)"
  homepage "https://github.com/valguard-ai/valguard"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/valguard-ai/valguard/releases/download/v0.1.0/valguard_0.1.0_darwin_amd64.tar.gz"
      sha256 "5d935c8b75a43a7bdc4c5cd597686b404be9124e5ba27d76e5b80a240a563e6b"
    end
    on_arm do
      url "https://github.com/valguard-ai/valguard/releases/download/v0.1.0/valguard_0.1.0_darwin_arm64.tar.gz"
      sha256 "70b88283039f070d50314f2a2720ac7a05dac2537426b424fb925858776d3c0d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/valguard-ai/valguard/releases/download/v0.1.0/valguard_0.1.0_linux_amd64.tar.gz"
      sha256 "c43258eb21b1fb86cd3b684836eb43a016aaaf9cf83c52d4825027c43ab45eea"
    end
    on_arm do
      url "https://github.com/valguard-ai/valguard/releases/download/v0.1.0/valguard_0.1.0_linux_arm64.tar.gz"
      sha256 "b9f670d2520b767e47d12143a572a696b07cbdb84c8376c69ac99b527ecbefc1"
    end
  end

  def install
    bin.install "valguard"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/valguard version")
  end
end
