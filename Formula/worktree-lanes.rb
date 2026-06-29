class WorktreeLanes < Formula
  desc "Per-worktree/lane dev+test isolation CLI (shared across repos)"
  homepage "https://github.com/shinypancake/worktree-lanes"
  url "https://github.com/shinypancake/worktree-lanes/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "fdb26e191cb7e88ccc7d53847264e445f28f3c79ab72103af8abcad3196922da"
  license "MIT"

  def install
    libexec.install "lib", "libexec"
    (libexec/"bin").install "bin/worktree"
    bin.install_symlink libexec/"bin/worktree"
  end

  test do
    assert_match "usage: worktree", shell_output("#{bin}/worktree help")
  end
end
