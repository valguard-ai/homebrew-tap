# Homebrew formula for ValGuard OSS CLI (40 MVP rules).
# Source of truth lives here; copy to valguard-ai/homebrew-tap/Formula/valguard.rb
# after each release. Refresh the sha256 lines from the release assets with:
#   bash scripts/update-homebrew-sha.sh vX.Y.Z
class Valguard < Formula
  desc "Offline validation for LLM agent output (YAML rules, no network in check)"
  homepage "https://github.com/valguard-ai/valguard"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/valguard-ai/valguard/releases/download/v0.1.1/valguard_0.1.1_darwin_amd64.tar.gz"
      sha256 "a9b6162c97b3b3a9b07932ef54145ab95e2d51d8743da6b1c445d74cf3ef8720"
    end
    on_arm do
      url "https://github.com/valguard-ai/valguard/releases/download/v0.1.1/valguard_0.1.1_darwin_arm64.tar.gz"
      sha256 "0a692ef02db29555e8469b9454f49a34a5692786351b487561045bd40a20333a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/valguard-ai/valguard/releases/download/v0.1.1/valguard_0.1.1_linux_amd64.tar.gz"
      sha256 "343f031c227ab9c6a86954de13fac52ba5c77da5531875f1f64912ef7f3d5a7d"
    end
    on_arm do
      url "https://github.com/valguard-ai/valguard/releases/download/v0.1.1/valguard_0.1.1_linux_arm64.tar.gz"
      sha256 "025711b2248518e3b2bb41ee28cab2a7c8d6d557c0a288c02ad2664618a4a622"
    end
  end

  def install
    bin.install "valguard"
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/valguard version")
  end
end
