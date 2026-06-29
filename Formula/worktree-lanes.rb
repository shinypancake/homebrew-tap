class WorktreeLanes < Formula
  desc "Per-worktree/lane dev+test isolation CLI (shared across repos)"
  homepage "https://github.com/shinypancake/worktree-lanes"
  url "https://github.com/shinypancake/worktree-lanes/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "3b3923d04d3f9e792b77690fed82998eed564d57cadc2d4d18d31b0450fdb08f"
  license "MIT"

  def install
    libexec.install "lib", "libexec", "VERSION"
    (libexec/"bin").install "bin/worktree"
    bin.install_symlink libexec/"bin/worktree"
  end

  test do
    assert_match "usage: worktree", shell_output("#{bin}/worktree help")
  end
end
