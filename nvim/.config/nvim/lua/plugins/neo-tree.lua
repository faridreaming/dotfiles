return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = function()
    return {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
        },
      },
    }
  end,
}
