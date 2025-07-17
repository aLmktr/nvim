return {
  -- Better Python environment detection
  {
    "linux-cultist/venv-selector.nvim",
    branch = "regexp",
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-telescope/telescope.nvim",
      "mfussenegger/nvim-dap-python",
    },
    opts = {
      settings = {
        search = {
          anaconda_base = {
            command = "fd python$ ~/anaconda3/envs --full-path --color never",
            type = "anaconda"
          },
          anaconda_envs = {
            command = "fd python$ ~/anaconda3/envs --full-path --color never",
            type = "anaconda"
          },
          miniconda = {
            command = "fd python$ ~/miniconda3/envs --full-path --color never", 
            type = "miniconda"
          },
          pyenv = {
            command = "fd python$ ~/.pyenv/versions --full-path --color never",
            type = "pyenv"
          },
          poetry = {
            command = "fd python$ ~/.cache/pypoetry/virtualenvs --full-path --color never",
            type = "poetry"
          },
          venv = {
            command = "fd python$ . --type x --full-path --color never",
            type = "venv"
          },
          workspace = {
            command = "fd python$ . --type x --full-path --color never",
            type = "workspace"
          }
        },
        options = {
          notify_user_on_venv_activation = true,
          set_environment_variables = true,
        }
      }
    },
    keys = {
      { "<leader>vs", "<cmd>VenvSelect<cr>", desc = "Select Python Environment" },
      { "<leader>vc", "<cmd>VenvSelectCached<cr>", desc = "Select Cached Python Environment" },
    },
  }
} 