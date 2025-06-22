return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")
		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
		local eslint = lint.linters.eslint_d

		-- if Eslint error configuration not found : change MasonInstall eslint@version or npm i -g eslint at a specific version
		lint.linters_by_ft = {
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			svelte = { "eslint_d" },
			python = { "pylint" },
			css = { "styleint" },
			css = { "stylelint" },
			scss = { "stylelint" },
			less = { "stylelint" },

			html = { "tidy" }, -- o "htmlhint"
			json = { "jsonlint" },
			yaml = { "yamllint" },
			markdown = { "markdownlint" },
			dockerfile = { "hadolint" },
			terraform = { "tflint" },

			go = { "golangci-lint" },
			rust = { "clippy" },
			php = { "phpcs" },
			ruby = { "rubocop" },
			java = { "checkstyle" },
			kotlin = { "ktlint" },

			-- Web/templates
			vue = { "eslint_d" },
			astro = { "eslint_d" },
			handlebars = { "htmlhint" },

			-- Config files
			toml = { "taplo" },
		}

		eslint.args = {
			"--no-warn-ignored",
			"--format",
			"json",
			"--stdin",
			"--stdin-filename",
			function()
				return vim.fn.expand("%:p")
			end,
		}

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})

		vim.keymap.set("n", "<leader>l", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })
	end,
}
