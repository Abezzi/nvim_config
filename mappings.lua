-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- tmux vim-like
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<cr>", desc = "window left" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<cr>", desc = "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<cr>", desc = "window up" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<cr>", desc = "window right" },

    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["H"] = { "<cmd>bprev<cr>", desc = "Go to previous tab" },
    ["L"] = { "<cmd>bnext<cr>", desc = "Go to next tab" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
