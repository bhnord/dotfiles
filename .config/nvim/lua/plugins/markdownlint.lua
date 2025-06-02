return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      markdown = { "markdownlint-cli2" },
    },
    formatters = {
      ["markdownlint-cli2"] = {
        command = "markdownlint-cli2",
        args = { "**/*.md" },
      },
    },
  },
}

