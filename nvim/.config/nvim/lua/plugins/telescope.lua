return {
  "nvim-telescope/telescope.nvim",
  lazy = false,
  branch = "master",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
  },
  config = function()
    require("telescope").setup({
      defaults = {
        file_ignore_patterns = {
          "node_modules",
          "yarn.lock",
          ".git",
          ".sl",
          "_build",
          ".next",
        },
        hidden = true,
        path_display = {
          "filename_first",
        }
      }
    })

    require("telescope").load_extension("ui-select")
  end,
}
