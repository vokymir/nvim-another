return {
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python", "c_sharp" },

                auto_install = true,

                highlights = {
                    enable = true,
               },

               incremental_selection = {
                    enable = true,
                    keymaps = {
                      init_selection = "<Leader>ss", 
                      node_incremental = "<Leader>si",
                      scope_incremental = "<Leader>sc",
                      node_decremental = "<Leader>sd",
                    },
                },

                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            -- You can optionally set descriptions to the mappings (used in the desc parameter of
                            -- nvim_buf_set_keymap) which plugins like which-key display
                            ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
                            -- You can also use captures from other query groups like `locals.scm`
                            ["as"] = { query = "@local.scope", query_group = "locals", desc = "Select language scope" },
                        },

                        selection_modes = {
                            ['@parameter.outer'] = 'v', -- charwise
                            ['@function.outer'] = 'V', -- linewise
                            ['@class.outer'] = '<c-v>', -- blockwise
                          },
                      -- If you set this to `true` (default is `false`) then any textobject is
                      -- extended to include preceding or succeeding whitespace. Succeeding
                      -- whitespace has priority in order to act similarly to eg the built-in
                      -- `ap`.
                      --
                      -- Can also be a function which gets passed a table with the keys
                      -- * query_string: eg '@function.inner'
                      -- * selection_mode: eg 'v'
                      -- and should return true or false
                      include_surrounding_whitespace = true,
                    },
                },
            })
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
}
