local M = {}

function M.set(palette)
    M.ui = {
        Normal       = { fg = palette.fg.normal, bg = palette.bg.medium },
        Special      = { fg = palette.fg.normal },

        WinSeparator = { fg = palette.bg.light },
        NormalFloat  = { fg = palette.fg.normal, bg = palette.bg.dark },
        FloatBorder  = { fg = palette.fg.normal },
        Pmenu        = { fg = palette.fg.normal, bg = palette.bg.dark },
        PmenuSel     = { fg = palette.base.grey.dark, bg = palette.base.blue.strong, bold = true, },

        CursorLine   = { bg = palette.bg.light },
        CursorLineNr = { fg = palette.base.yellow.strong, bold = true },
        LineNr       = { fg = palette.fg.dimmed },

        Visual       = { bg = palette.bg.accent },
        Search       = { fg = palette.fg.normal, bg = palette.bg.light },
        IncSearch    = { fg = palette.base.grey.dark, bold = true, bg = palette.base.yellow.strong },

        StatusLine   = { fg = palette.fg.normal, bg = palette.bg.dark },
        StatusLineNC = { fg = palette.fg.dimmed, bg = palette.bg.dark },

        Folded       = { fg = palette.fg.dimmed, bg = palette.bg.dark, italic = true },
        FoldColumn   = { fg = palette.fg.dimmed, bg = palette.bg.medium },

        MatchParen   = { fg = palette.base.yellow.strong, bold = true },
    }

    M.syntax = {
        ["@comment"]      = { fg = palette.fg.dimmed, italic = true },

        ["@keyword"]      = { fg = palette.base.purple.strong },
        ["@function"]     = { fg = palette.base.yellow.strong },
        ["@type"]         = { fg = palette.base.red.strong },
        ["@type.builtin"] = { fg = palette.base.red.strong },

        ["@string"]       = { fg = palette.base.green.strong },
        ["@number"]       = { fg = palette.base.yellow.soft },
        ["@boolean"]      = { fg = palette.base.yellow.soft },

        ["@operator"]     = { fg = palette.fg.normal },
        ["@punctuation"]  = { fg = palette.fg.normal },

        ["@variable"]     = { fg = palette.fg.normal },
        ["@parameter"]    = { fg = palette.base.red.soft },
        ["@property"]     = { fg = palette.base.red.soft },

        ["@constant"]     = { fg = palette.base.purple.soft, bold = true },
    }

    M.diagnostics = {
        DiagnosticError            = { fg = palette.base.red.strong },
        DiagnosticWarn             = { fg = palette.base.yellow.strong },
        DiagnosticInfo             = { fg = palette.base.blue.strong },
        DiagnosticHint             = { fg = palette.fg.dimmed },

        DiagnosticUnderlineError   = { undercurl = true, sp = palette.base.red.strong },
        DiagnosticUnderlineWarn    = { undercurl = true, sp = palette.base.yellow.strong },
        DiagnosticUnderlineInfo    = { undercurl = true, sp = palette.base.blue.strong },
        DiagnosticUnderlineHint    = { undercurl = true, sp = palette.fg.dimmed },

        DiagnosticVirtualTextError = { fg = palette.base.red.soft },
        DiagnosticVirtualTextWarn  = { fg = palette.base.yellow.soft },
        DiagnosticVirtualTextInfo  = { fg = palette.base.blue.soft },
        DiagnosticVirtualTextHint  = { fg = palette.fg.dimmed },
    }

    M.git = {
        DiffText       = { fg = palette.fg.normal },

        DiffAdd        = { fg = palette.base.green.soft },
        DiffDelete     = { fg = palette.base.red.soft },
        DiffChange     = { fg = palette.base.yellow.soft },

        GitSignsAdd    = { fg = palette.base.green.strong },
        GitSignsDelete = { fg = palette.base.red.strong },
        GitSignsChange = { fg = palette.base.yellow.strong },
    }

    M.plugins = {
        -- Neotree
        NeoTreeCursorLine    = { bg = palette.bg.medium, },
        NeoTreeNormal        = { fg = palette.fg.normal, bg = palette.bg.dark, },
        NeoTreeNormalNC      = { fg = palette.fg.dimmed, bg = palette.bg.dark, },

        NeoTreeIndentMarker  = { fg = palette.fg.dimmed, },
        NeoTreeExpander      = { fg = palette.fg.dimmed, },

        NeoTreeDirectoryName = { fg = palette.base.yellow.strong, },
        NeoTreeDirectoryIcon = { fg = palette.base.yellow.strong, },
        NeoTreeFileName      = { fg = palette.fg.normal, },
        NeoTreeFileIcon      = { fg = palette.fg.normal, },

        NeoTreeRootName      = { fg = palette.base.red.strong, bold = true, },

        NeoTreeGitAdded      = { fg = palette.base.green.strong, },
        NeoTreeGitDeleted    = { fg = palette.base.red.strong, },
        NeoTreeGitModified   = { fg = palette.base.yellow.strong, },
        NeoTreeGitUntracked  = { fg = palette.fg.dimmed, },
    }

    local groups = {
        M.ui,
        M.syntax,
        M.diagnostics,
        M.git,
        M.plugins,
    }

    for _, tbl in pairs(groups) do
        for target, opts in pairs(tbl) do
            vim.api.nvim_set_hl(0, target, opts)
        end
    end

end

return M
