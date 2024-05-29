return {
	{
		{
			"CRAG666/code_runner.nvim",
			config = function()
				require("code_runner").setup({
					filetype = {
						java = {
							"cd $dir &&", -- Change directory to current file location
							"javac $fileName &&", -- Compile the Java file
							"java $fileNameWithoutExt", -- Run the compiled class file
						},
					},
				})
				vim.keymap.set("n", "<leader>r", ":RunCode<CR>", { noremap = true, silent = false })
				vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false })
				vim.keymap.set("n", "<leader>rft", ":RunFile tab<CR>", { noremap = true, silent = false })
				vim.keymap.set("n", "<leader>rp", ":RunProject<CR>", { noremap = true, silent = false })
				vim.keymap.set("n", "<leader>rc", ":RunClose<CR>", { noremap = true, silent = false })
				vim.keymap.set("n", "<leader>crf", ":CRFiletype<CR>", { noremap = true, silent = false })
				vim.keymap.set("n", "<leader>crp", ":CRProjects<CR>", { noremap = true, silent = false })
			end,
		},
	},
}
