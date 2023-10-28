return {
  "nvim-treesitter/nvim-treesitter",
  lazy = true,
  config = function()
      require('nvim-treesitter.configs').setup {
          ensure_installed = {
            "lua",
            "python",
            "bash",
            "css",
            "html",
            "javascript",
            "markdown",
            "csv",
            "dockerfile",
            "git_config",
            "git_rebase",
            "gitcommit",
            "gitignore",
            "go",
            "gomod",
            "gosum",
            "gpg",
            "graphql",
            "jq",
            "json",
            "json5",
            "php",
            "sql",
            "ssh_config",
            "terraform",
            "toml",
            "xml",
            "yaml",
          },
          highlight = {
              enable = true,
              additional_vim_regex_highlighting = { "php", "markdown", "rust", "python", "go"},
          },
          rainbow = {
              enable = true,
              -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
              extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
              max_file_lines = nil, -- Do not enable for files with more than n lines, int
              -- colors = {}, -- table of hex strings
              -- termcolors = {} -- table of colour name strings
          },
          incremental_selection = {
              enable = false,
              keymaps = {
                  init_selection = '<CR>',
                  scope_incremental = '<CR>',
                  node_incremental = '<TAB>',
                  node_decremental = '<S-TAB>',
              },
          },
          indent = {
              enable = true,
              disable = {"python"},
          },
          tree_docs = {
              enable = true,
          }
      }
  end,
}
