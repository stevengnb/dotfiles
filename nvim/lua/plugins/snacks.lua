-- Show hidden (dot)files by default in the snacks.nvim file explorer
-- and file picker. Toggle in-session with `H` (explorer) or `<c-h>` (picker).
return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = { hidden = true },
        files = { hidden = true },
      },
    },
  },
}
