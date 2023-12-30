---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>ek"] = {
        function()
            vim.diagnostic.goto_prev { float = { border = "rounded" } }
        end,
      "Goto prev",
    },

    ["<leader>ej"] = {
        function()
            vim.diagnostic.goto_next { float = { border = "rounded" } }
        end,
      "Goto next",
    },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M
