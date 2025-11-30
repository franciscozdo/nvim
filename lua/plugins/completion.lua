return {
  "saghen/blink.cmp",
  -- optional: provides snippets for the snippet source
  -- dependencies = { "rafamadriz/friendly-snippets" },

  version = "1.*",
  opts = {
    keymap = {
      preset = "none",
      ["<C-k>"] = { "select_prev", "fallback_to_mappings" },
      ["<C-j>"] = { "select_next", "fallback_to_mappings" },
      ["<C-l>"] = { "select_and_accept", "fallback" },
      ["<C-p>"] = { "scroll_documentation_up", "fallback" },
      ["<C-n>"] = { "scroll_documentation_down", "fallback" },
      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-e>"] = { "hide", "fallback" },
      ["<Tab>"] = { "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "fallback" },
      ["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
    },
    appearance = {
      nerd_font_variant = "mono"
    },
    completion = {
      documentation = {
        auto_show = false,
        window = { border = "single" },
      },
      menu = {
        draw = {
          columns = { { "kind_icon" }, { "label" } },
        },
      },
      ghost_text = {
        enabled = true,
        show_without_selection = true,
      },
    },
    signature = {
      enabled = true,
      window = {
        border = "single",
        show_documentation = false,
      }
    },
    sources = {
      default = { "lsp", "buffer", "snippets", "path" },
    },
  },
  opts_extend = { "sources.default" }
}
