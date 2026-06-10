class AgentLoopWorkflow < Formula
	desc "Run labeled GitHub issues through coding agents in isolated git worktrees"
	homepage "https://github.com/IgnacyWie/agent-loop-workflow"
	url "https://github.com/IgnacyWie/agent-loop-workflow/archive/refs/tags/v0.1.1.tar.gz"
	sha256 "6b2db1a8d7d5acbc1e988ad14059ca502c92802310f8a77b5161c5a66642bc5c"
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
