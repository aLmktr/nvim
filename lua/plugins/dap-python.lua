return {
  "mfussenegger/nvim-dap-python",
  ft = "python",
  dependencies = {
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui",
  },
  config = function()
    -- Will be automatically configured by venv-selector
    require("dap-python").setup()
    
    -- Python debugging keymaps
    local map = vim.keymap.set
    map("n", "<leader>dpr", function() require('dap-python').test_method() end, { desc = "Debug Python Test Method" })
    map("n", "<leader>dpc", function() require('dap-python').test_class() end, { desc = "Debug Python Test Class" })
    map("n", "<leader>dps", function() require('dap-python').debug_selection() end, { desc = "Debug Python Selection" })
  end,
} 