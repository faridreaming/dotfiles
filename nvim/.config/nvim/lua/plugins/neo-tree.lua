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
      commands = {
        -- Menambahkan konfigurasi custom untuk command refresh
        refresh = function()
          -- Dapatkan modul commands dari filesystem Neo-tree
          require("neo-tree.sources.filesystem.commands")
            -- Panggil fungsi refresh dengan state filesystem yang sesuai
            .refresh(require("neo-tree.sources.manager").get_state("filesystem"))
        end,
      },
    }
  end,
}
