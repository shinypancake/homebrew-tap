class WorktreeLanes < Formula
  desc "Per-worktree/lane dev+test isolation CLI (shared across repos)"
  homepage "https://github.com/shinypancake/worktree-lanes"
  url "https://github.com/shinypancake/worktree-lanes/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "a925ad7591d12938b8f416895d4d28d565c5d1401d76d0e65b677210e8b2e835"
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
