local M = {}

function M.setup(palette)
    M.ui = {
        Normal       = { fg = palette.fg.normal, bg = palette.bg.medium },
        NormalFloat  = { fg = palette.fg.normal, bg = palette.bg.dark },

        CursorLine   = { bg = palette.bg.light },
        CursorLineNr = { fg = palette.accent.yellow, bold = true },

        LineNr       = { fg = palette.fg.dimmed },

        Visual       = { bg = palette.bg.light },

        StatusLine   = { fg = palette.fg.normal, bg = palette.bg.dark },

        VertSplit    = { fg = palette.bg.light },

        Pmenu        = { fg = palette.fg.normal, bg = palette.bg.dark },
        PmenuSel     = { fg = palette.bg.dark, bg = palette.accent.blue.dark, bold = true },

        SignColumn   = { fg = palette.fg.dimmed, bg = palette.none },

        Folded       = {
            fg = palette.fg.dimmed,
            bg = palette.bg.dark,
            italic = true
        },

        MatchParen   = {
            fg = palette.accent.yellow,
            bold = true,
            underline = true
        },

        ColorColumn  = { bg = palette.bg.light },
    }

    M.syntax = {
        -- Treesitter
        ["@keyword"]      = { fg = palette.accent.purple, bold = true },
        ["@type"]         = { fg = palette.accent.blue.dark },
        ["@type.builtin"] = { fg = palette.accent.red },
        ["@string"]       = { fg = palette.accent.green.dark },
        ["@function"]     = { fg = palette.accent.yellow },
        ["@variable"]     = { fg = palette.accent.blue.light },
        ["@parameter"]    = { fg = palette.accent.blue.light },
        ["@comment"]      = { fg = palette.fg.dimmed, italic = true },
        ["@constant"]     = { fg = palette.accent.purple },
        ["@operator"]     = { fg = palette.fg.normal },
        ["@property"]     = { fg = palette.accent.blue.light },

        -- Vim (fallback)
        Comment           = { fg = palette.fg.dimmed, italic = true },
        String            = { fg = palette.accent.green.dark },
        Function          = { fg = palette.accent.yellow },
        Identifier        = { fg = palette.accent.blue.light },
        Keyword           = { fg = palette.accent.purple, bold = true },
        Type              = { fg = palette.accent.blue.dark },
        Constant          = { fg = palette.accent.purple },
    }

    M.diagnostics = {
        DiagnosticError            = { fg = palette.accent.red },
        DiagnosticWarn             = { fg = palette.accent.yellow },
        DiagnosticInfo             = { fg = palette.accent.blue.dark },
        DiagnosticHint             = { fg = palette.accent.blue.light },

        DiagnosticUnderlineError   = {
            undercurl = true,
            sp = palette.accent.red
        },

        DiagnosticUnderlineWarn    = {
            undercurl = true,
            sp = palette.accent.yellow
        },

        DiagnosticVirtualTextError = { fg = palette.accent.red },
        DiagnosticVirtualTextWarn  = { fg = palette.accent.yellow },
    }

    M.git = {
        DiffAdd        = { fg = palette.accent.green.dark },
        DiffDelete     = { fg = palette.accent.red },
        DiffChange     = { fg = palette.accent.yellow },
        DiffText       = { fg = palette.accent.blue.dark },

        GitSignsAdd    = { fg = palette.accent.green.dark },
        GitSignsDelete = { fg = palette.accent.red },
        GitSignsChange = { fg = palette.accent.yellow },
    }

    M.plugins = {

    }

    local groups = { M.ui, M.syntax, M.diagnostics, M.git, M.plugins }

    for _, table in pairs(groups) do
        for target, options in pairs(table) do
            vim.api.nvim_set_hl(0, target, options)
        end
    end
end

return M
