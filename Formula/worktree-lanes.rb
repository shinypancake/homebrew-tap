class WorktreeLanes < Formula
  desc "Per-worktree/lane dev+test isolation CLI (shared across repos)"
  homepage "https://github.com/shinypancake/worktree-lanes"
  url "https://github.com/shinypancake/worktree-lanes/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "7651275c6981f38666b9ba0878807b4fe720b1be4b5224b9619827e91186e11e"
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
