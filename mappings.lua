---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    
    -- hop
    ["\\f"] = { "<cmd>HopPattern<CR>", "hop pattern" },
    ["\\j"] = { "<cmd>HopLineAC<CR>", "hop line after" },
    ["\\k"] = { "<cmd>HopLineBC<CR>", "hop line before" },
    ["\\w"] = { "<cmd>HopWordAC<CR>", "hop word after" },
    ["\\b"] = { "<cmd>HopWordBC<CR>", "hop word before" },
    
    -- aerial
    ["<Leader>a"] = { "<cmd>AerialToggle!<CR>", "aerial toggle" },

  },
}

-- more keybinds!
M.hop = {
  plugin = true,

  n = {
    -- toggle
    -- ["-f"] = { "<cmd>lua require'hop'.hint_char1()<cr>", "hop char" },
    ["<Leader>mf"] = { "<cmd>lua require'hop'.hint_char1()<cr>", "hop char" },

    -- focus
    ["<Leader>mp"] = { "<cmd>HopPattern<CR>", "hop Pattern" },
  },
}

return M
