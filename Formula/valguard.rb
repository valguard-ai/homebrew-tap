# Homebrew formula for ValGuard OSS CLI (40 MVP rules).
# Source of truth lives here; copy to valguard-ai/homebrew-tap/Formula/valguard.rb
# after each release. Refresh the sha256 lines from the release assets with:
#   bash scripts/update-homebrew-sha.sh vX.Y.Z
class Valguard < Formula
  desc "Offline validation for LLM agent output (YAML rules, no network in check)"
  homepage "https://github.com/valguard-ai/valguard"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/valguard-ai/valguard/releases/download/v0.1.3/valguard_0.1.3_darwin_amd64.tar.gz"
      sha256 "88329340e8fa9585c14a2c6151e6a0e7bdda838f970c13db234d65999c65e304"
    end
    on_arm do
      url "https://github.com/valguard-ai/valguard/releases/download/v0.1.3/valguard_0.1.3_darwin_arm64.tar.gz"
      sha256 "0293ce652d323173971ed1c6d1b0d57278d2730255772c541d71b6609f9a3b7b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/valguard-ai/valguard/releases/download/v0.1.3/valguard_0.1.3_linux_amd64.tar.gz"
      sha256 "8564eb184b039821bfe6d91e9c9aa3a060843b1b3aa7fba4978fec80b44e1938"
    end
    on_arm do
      url "https://github.com/valguard-ai/valguard/releases/download/v0.1.3/valguard_0.1.3_linux_arm64.tar.gz"
      sha256 "d8a1fad1f72b1d99a7d9fd9ac33fe9fbb1b54362ffa59b0d2984aee21c8bbc12"
    end
  end

  def install
    bin.install "valguard"
  end

  test do
    assert_match "0.1.3", shell_output("#{bin}/valguard version")
  end
end
