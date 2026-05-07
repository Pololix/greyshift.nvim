local M = {}

function M.set(palette)
    M.ui = {
        Normal       = { fg = palette.fg.normal, bg = palette.bg.medium },
        Special      = { fg = palette.fg.normal },
        NormalFloat  = { fg = palette.fg.normal, bg = palette.bg.dark },
        FloatBorder  = { fg = palette.bg.accent },

        CursorLine   = { bg = palette.bg.light },
        CursorLineNr = { fg = palette.base.yellow.strong, bold = true },
        LineNr       = { fg = palette.fg.dimmed },

        Visual       = { bg = palette.bg.accent },

        Search       = { bg = palette.bg.light, fg = palette.fg.normal },
        IncSearch    = { bg = palette.base.yellow.strong, fg = palette.bg.dark, bold = true },

        StatusLine   = { fg = palette.fg.normal, bg = palette.bg.dark },
        StatusLineNC = { fg = palette.fg.dimmed, bg = palette.bg.dark },

        WinSeparator = { fg = palette.bg.light },

        Pmenu        = { fg = palette.fg.normal, bg = palette.bg.dark },
        PmenuSel     = { fg = palette.bg.dark, bg = palette.base.blue.strong, bold = true },

        Folded       = { fg = palette.fg.dimmed, bg = palette.bg.dark, italic = true },
        FoldColumn   = { fg = palette.fg.dimmed, bg = palette.bg.medium },

        MatchParen   = { fg = palette.base.yellow.strong, bold = true },
    }

    M.syntax = {
        ["@comment"]      = { fg = palette.fg.dimmed, italic = true },

        ["@keyword"]      = { fg = palette.base.purple.strong },
        ["@function"]     = { fg = palette.base.yellow.strong },

        ["@string"]       = { fg = palette.base.green.strong },
        ["@number"]       = { fg = palette.base.yellow.medium },
        ["@boolean"]      = { fg = palette.base.yellow.medium },

        ["@operator"]     = { fg = palette.fg.normal },
        ["@punctuation"]  = { fg = palette.fg.dimmed },

        ["@variable"]     = { fg = palette.fg.normal },
        ["@parameter"]    = { fg = palette.base.red.strong },
        ["@property"]     = { fg = palette.fg.normal },
        ["@constant"]     = { fg = palette.base.purple.strong },

        ["@type"]         = { fg = palette.base.blue.strong },
        ["@type.builtin"] = { fg = palette.base.blue.medium },
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

        DiagnosticVirtualTextError = { fg = palette.base.red.medium },
        DiagnosticVirtualTextWarn  = { fg = palette.base.yellow.medium },
        DiagnosticVirtualTextInfo  = { fg = palette.base.blue.medium },
        DiagnosticVirtualTextHint  = { fg = palette.fg.dimmed },
    }

    M.git = {
        DiffText       = { fg = palette.fg.normal },

        DiffAdd        = { fg = palette.base.green.strong },
        DiffDelete     = { fg = palette.base.red.strong },
        DiffChange     = { fg = palette.base.yellow.strong },

        GitSignsAdd    = { fg = palette.base.green.strong },
        GitSignsDelete = { fg = palette.base.red.strong },
        GitSignsChange = { fg = palette.base.yellow.medium },
    }

    M.plugins = {
        -- Neotree
        NeoTreeCursorLine    = { bg = palette.bg.medium },

        NeoTreeNormal        = { fg = palette.fg.normal, bg = palette.bg.dark },
        NeoTreeNormalNC      = { fg = palette.fg.dimmed, bg = palette.bg.dark },

        NeoTreeIndentMarker  = { fg = palette.fg.dimmed },
        NeoTreeExpander      = { fg = palette.fg.dimmed },

        NeoTreeDirectoryName = { fg = palette.base.yellow.strong },
        NeoTreeDirectoryIcon = { fg = palette.base.yellow.medium },

        NeoTreeFileName      = { fg = palette.fg.normal },
        NeoTreeFileIcon      = { fg = palette.fg.dimmed },

        NeoTreeRootName      = { fg = palette.base.red.strong, bold = true },

        NeoTreeGitAdded      = { fg = palette.base.green.strong },
        NeoTreeGitDeleted    = { fg = palette.base.red.strong },
        NeoTreeGitModified   = { fg = palette.base.yellow.strong },
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
