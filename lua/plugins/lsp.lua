if true then
  return {}
end

return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- disable a keymap
      keys[#keys + 1] = { "<up>", "<nop>" }
      keys[#keys + 1] = { "<down>", "<nop>" }
      keys[#keys + 1] = { "<left>", "<nop>" }
      keys[#keys + 1] = { "<right>", "<nop>" }
    end,
  },
}
