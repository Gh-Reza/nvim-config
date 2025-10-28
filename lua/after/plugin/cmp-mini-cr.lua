-- ~/.config/nvim/after/plugin/cmp-mini-cr.lua
local ok_cmp, cmp = pcall(require, "cmp")
local ok_mp, mp = pcall(require, "mini.pairs")

vim.keymap.set({ "i", "s" }, "<CR>", function()
  if ok_cmp and cmp.visible() then
    cmp.confirm({ select = true, behavior = cmp.ConfirmBehavior.Replace })
  else
    if ok_mp and mp and type(mp.cr) == "function" then
      mp.cr()
    else
      -- fallback to normal Enter if mini.pairs isn't available
      return vim.api.nvim_replace_termcodes("<CR>", true, true, true)
    end
  end
end, { noremap = true })
