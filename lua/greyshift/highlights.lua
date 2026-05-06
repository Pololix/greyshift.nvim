local M = {}

function M.set(palette)
    M.ui = {
        Normal       = { fg = palette.fg.normal, bg = palette.bg.medium },
        Special      = { fg = palette.fg.normal },
        NormalFloat  = { fg = palette.fg.normal, bg = palette.bg.dark },
        FloatBorder  = { fg = palette.bg.accent },

        CursorLine   = { bg = palette.bg.light },
        CursorLineNr = { fg = palette.accent.yellow, bold = true },
        LineNr       = { fg = palette.fg.dimmed },

        Visual       = { bg = palette.bg.accent },

        Search       = { bg = palette.bg.light, fg = palette.fg.normal },
        IncSearch    = { bg = palette.accent.yellow, fg = palette.bg.dark, bold = true },

        StatusLine   = { fg = palette.fg.normal, bg = palette.bg.dark },
        StatusLineNC = { fg = palette.fg.dimmed, bg = palette.bg.dark },

        WinSeparator = { fg = palette.bg.light },

        Pmenu        = { fg = palette.fg.normal, bg = palette.bg.dark },
        PmenuSel     = { fg = palette.bg.dark, bg = palette.accent.blue, bold = true },

        Folded       = { fg = palette.fg.dimmed, bg = palette.bg.dark, italic = true },
        FoldColumn   = { fg = palette.fg.dimmed, bg = palette.bg.medium },

        MatchParen   = { fg = palette.accent.yellow, bold = true },
    }

    M.syntax = {
        ["@comment"]      = { fg = palette.fg.dimmed, italic = true },

        ["@keyword"]      = { fg = palette.accent.purple },
        ["@function"]     = { fg = palette.accent.yellow },

        ["@string"]       = { fg = palette.accent.green },
        ["@number"]       = { fg = palette.accent.yellow },
        ["@boolean"]      = { fg = palette.accent.yellow },

        ["@operator"]     = { fg = palette.fg.normal },
        ["@punctuation"]  = { fg = palette.fg.dimmed },

        ["@variable"]     = { fg = palette.fg.normal },
        ["@parameter"]    = { fg = palette.accent.red },
        ["@property"]     = { fg = palette.fg.normal },
        ["@constant"]     = { fg = palette.accent.purple },

        ["@type"]         = { fg = palette.accent.blue },
        ["@type.builtin"] = { fg = palette.accent.blue },
    }

    M.diagnostics = {
        DiagnosticError            = { fg = palette.accent.red },
        DiagnosticWarn             = { fg = palette.accent.yellow },
        DiagnosticInfo             = { fg = palette.accent.blue },
        DiagnosticHint             = { fg = palette.fg.dimmed },

        DiagnosticUnderlineError   = { undercurl = true, sp = palette.accent.red },
        DiagnosticUnderlineWarn    = { undercurl = true, sp = palette.accent.yellow },
        DiagnosticUnderlineInfo    = { undercurl = true, sp = palette.accent.blue },
        DiagnosticUnderlineHint    = { undercurl = true, sp = palette.fg.dimmed },

        DiagnosticVirtualTextError = { fg = palette.accent.red },
        DiagnosticVirtualTextWarn  = { fg = palette.accent.yellow },
        DiagnosticVirtualTextInfo  = { fg = palette.accent.blue },
        DiagnosticVirtualTextHint  = { fg = palette.fg.dimmed },
    }

    M.git = {
        DiffText       = { fg = palette.fg.normal },

        DiffAdd        = { fg = palette.accent.green },
        DiffDelete     = { fg = palette.accent.red },
        DiffChange     = { fg = palette.accent.yellow },

        GitSignsAdd    = { fg = palette.accent.green },
        GitSignsDelete = { fg = palette.accent.red },
        GitSignsChange = { fg = palette.accent.yellow },
    }

    M.plugins = {
        -- Neotree
        NeoTreeCursorLine    = { bg = palette.bg.medium },

        NeoTreeNormal        = { fg = palette.fg.normal, bg = palette.bg.dark },
        NeoTreeNormalNC      = { fg = palette.fg.dimmed, bg = palette.bg.dark },

        NeoTreeIndentMarker  = { fg = palette.fg.dimmed },
        NeoTreeExpander      = { fg = palette.fg.dimmed },

        NeoTreeDirectoryName = { fg = palette.accent.yellow },
        NeoTreeDirectoryIcon = { fg = palette.accent.yellow },

        NeoTreeFileName      = { fg = palette.fg.normal },
        NeoTreeFileIcon      = { fg = palette.fg.dimmed },

        NeoTreeRootName      = { fg = palette.accent.red, bold = true },

        NeoTreeGitAdded      = { fg = palette.accent.green },
        NeoTreeGitDeleted    = { fg = palette.accent.red },
        NeoTreeGitModified   = { fg = palette.accent.yellow },
        NeoTreeGitUntracked  = { fg = palette.fg.dimmed },
    }

    local groups = { M.ui, M.syntax, M.diagnostics, M.git, M.plugins }

    for _, tbl in pairs(groups) do
        for target, options in pairs(tbl) do
            vim.api.nvim_set_hl(0, target, options)
        end
    end
end

return M
