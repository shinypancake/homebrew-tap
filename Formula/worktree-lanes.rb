class WorktreeLanes < Formula
  desc "Per-worktree/lane dev+test isolation CLI (shared across repos)"
  homepage "https://github.com/shinypancake/worktree-lanes"
  url "https://github.com/shinypancake/worktree-lanes/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "eba297d07458995e7bd7b313055d19e09ba8d4d1011233fac24455f47a5b0f05"
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
