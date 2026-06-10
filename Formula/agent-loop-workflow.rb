class AgentLoopWorkflow < Formula
	desc "Run labeled GitHub issues through coding agents in isolated git worktrees"
	homepage "https://github.com/IgnacyWie/agent-loop-workflow"
	url "https://github.com/IgnacyWie/agent-loop-workflow/archive/refs/tags/v0.1.0.tar.gz"
	sha256 "06f9f9443558fb3683ca28d0086268c4a7902733ac497158360a11f0a9d91725"
	license "MIT"

	depends_on "gh"
	depends_on "git"
	depends_on "node"

	def install
		libexec.install Dir["*"]
		bin.install_symlink libexec/"bin/agent-loop.js" => "agent-loop"
	end

	test do
		assert_match "agent-loop", shell_output("#{bin}/agent-loop --help")
	end
end
