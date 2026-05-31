return {
  "okuuva/auto-save.nvim",
  event = { "InsertLeave", "TextChanged" },
  opts = {
    enabled = true,
    debounce_delay = 2000, -- save 2 seconds after you stop typing
  },
}
