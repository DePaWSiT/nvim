return {
  "saghen/blink.cmp",
  -- optional: provides snippets for the snippet source
  dependencies = { "rafamadriz/friendly-snippets" },
  event = { "CmdWinEnter", "BufNewFile", "BufReadPre" },
  version = "1.*",
  opts = function()
    local lang = require("DePaWSiT.language")

    local default_const = { "lsp", "lazydev", "path", "snippets", "buffer" }

    local provider_const = {
      dadbod = { name = "dadbod", module = "vim_dadbod_completion.blink" },
      lazydev = {
        name = "lazydev",
        module = "lazydev.integrations.blink",
        score_offset = 1000,
      },
    }

    if lang.csharp then
      table.insert(default_const, 2, "easy-dotnet")

      provider_const["easy-dotnet"] = {
        name = "easy-dotnet",
        enabled = true,
        module = "easy-dotnet.completion.blink",
        score_offset = 1000,
        async = true,
      }
    end

    local sources = {
      default = default_const,
      per_filetype = {
        sql = { "snippets", "dadbod", "buffer" },
      },
      providers = provider_const,
    }
    return {
      -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
      -- 'super-tab' for mappings similar to vscode (tab to accept)
      -- 'enter' for enter to accept
      -- 'none' for no mappings
      --
      -- All presets have the following mappings:
      -- C-space: Open menu or open docs if already open
      -- C-n/C-p or Up/Down: Select next/previous item
      -- C-e: Hide menu
      -- C-k: Toggle signature help (if signature.enabled = true)
      --
      -- See :h blink-cmp-config-keymap for defining your own keymap
      keymap = { preset = "super-tab" },
      appearance = {
        -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        -- Adjusts spacing to ensure icons are aligned
        nerd_font_variant = "normal",
      },

      sources = sources,

      -- (Default) Only show the documentation popup when manually triggered
      completion = { documentation = { auto_show = true } },

      -- Default list of enabled providers defined so that you can extend it
      -- elsewhere in your config, without redefining it, due to `opts_extend`

      -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
      -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
      -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
      --
      -- See the fuzzy documentation for more information
      fuzzy = { implementation = "prefer_rust_with_warning" },
    }
  end,
  opts_extend = { "sources.default" },
}
