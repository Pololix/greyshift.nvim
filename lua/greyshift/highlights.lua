local M = {}

function M.build(semantics, palette)
    local H = {}

    H.ui = {
        Normal       = { smt = semantics.text.normal },
        Special      = { smt = semantics.text.normal },
        CursorLine   = { smt = semantics.text.cursor },
        Folded       = { smt = semantics.text.folded },

        NormalFloat  = { smt = semantics.ui.float },
        FloatBorder  = { smt = semantics.ui.border },

        LineNr       = { smt = semantics.ui.details },
        CursorLineNr = { smt = semantics.ui.details, ovr = { fg = palette.yellow.dark, bold = true } },
        SignColumn   = { smt = semantics.ui.details },
        FoldColumn   = { smt = semantics.ui.details },

        StatusLine   = { smt = semantics.ui.float },
        StatusLineNC = { smt = semantics.ui.float },

        Visual       = { smt = semantics.text.selection },

        Search       = { smt = semantics.text.search },
        IncSearch    = { smt = semantics.text.search },

        WinSeparator = { smt = semantics.ui.separator },
        VertSplit    = { smt = semantics.ui.separator },
        MatchParen   = { smt = semantics.text.normal },
    }

    H.syntax = {
        ["@comment"]         = { smt = semantics.syntax.comments },

        ["@keyword"]         = { smt = semantics.syntax.keywords },

        ["@function"]        = { smt = semantics.syntax.functions },
        ["@method"]          = { smt = semantics.syntax.functions },
        ["@constructor"]     = { smt = semantics.text.normal },

        ["@type"]            = { smt = semantics.syntax.types },
        ["@type.builtin"]    = { smt = semantics.syntax.types },

        ["@variable"]        = { smt = semantics.syntax.variables },
        ["@parameter"]       = { smt = semantics.syntax.variables, ovr = { fg = palette.red.light } },
        ["@property"]        = { smt = semantics.syntax.variables, ovr = { fg = palette.red.dark } },
        ["@field"]           = { smt = semantics.syntax.variables, ovr = { fg = palette.red.dark } },

        ["@constant"]        = { smt = semantics.syntax.constants },
        ["@constant.bultin"] = { smt = semantics.syntax.constants },

        ["@string"]          = { smt = semantics.syntax.constants, ovr = { fg = palette.green.dark } },
        ["@number"]          = { smt = semantics.syntax.constants },
        ["@boolean"]         = { smt = semantics.syntax.constants },

        ["@operator"]        = { smt = semantics.syntax.operators },
        ["@punctuation"]     = { smt = semantics.syntax.punctuation },
    }

    H.diagnostics = {
        DiagnosticError            = { smt = semantics.diagnostics.error },
        DiagnosticWarn             = { smt = semantics.diagnostics.warning },
        DiagnosticInfo             = { smt = semantics.diagnostics.info },
        DiagnosticHint             = { smt = semantics.diagnostics.hint },

        DiagnosticUnderlineError   = { smt = semantics.diagnostics.error },
        DiagnosticUnderlineWarn    = { smt = semantics.diagnostics.warning },
        DiagnosticUnderlineInfo    = { smt = semantics.diagnostics.info },
        DiagnosticUnderlineHint    = { smt = semantics.diagnostics.hint },

        DiagnosticVirtualTextError = { smt = semantics.diagnostics.error },
        DiagnosticVirtualTextWarn  = { smt = semantics.diagnostics.warning },
        DiagnosticVirtualTextInfo  = { smt = semantics.diagnostics.info },
        DiagnosticVirtualTextHint  = { smt = semantics.diagnostics.hint },
    }

    H.git = {
        DiffText       = { smt = semantics.text.normal },

        DiffAdd        = { smt = semantics.git.added },
        DiffDelete     = { smt = semantics.git.removed },
        DiffChange     = { smt = semantics.git.changed },
        DiffRename     = { smt = semantics.git.changed },

        GitSignsAdd    = { smt = semantics.git.added },
        GitSignsDelete = { smt = semantics.git.removed },
        GitSignsChange = { smt = semantics.git.changed },
    }

    H.plugins = {
        -- Neotree
        NeoTreeNormal           = { smt = semantics.text.normal },
        NeoTreeCursorLine       = { smt = semantics.text.cursor },
        NeoTreeNormalNC         = { smt = semantics.text.normal, ovr = { bg = palette.grey.dark } },

        NeoTreeRootName         = { smt = semantics.file_explorer.root },

        NeoTreeDirectoryName    = { smt = semantics.file_explorer.directory },
        NeoTreeDirectoryIcon    = { smt = semantics.file_explorer.directory },
        NeoTreeFileName         = { smt = semantics.file_explorer.file },

        NeoTreeIndentMarker     = { smt = semantics.ui.details },
        NeoTreeExpander         = { smt = semantics.ui.details },

        NeoTreeGitAdded         = { smt = semantics.git.added },
        NeoTreeGitDeleted       = { smt = semantics.git.removed },
        NeoTreeGitModified      = { smt = semantics.git.changed },
        NeoTreeGitUntracked     = { smt = semantics.git.untracked },

        -- Telescope
        TelescopeNormal         = { smt = semantics.text.normal },
        TelescopeBorder         = { smt = semantics.ui.border },
        TelescopePrompt         = { smt = semantics.text.normal },
        TelescopeSelection      = { smt = semantics.text.selection },
        TelescopeMultiSelection = { smt = semantics.text.selection },

        -- Nvim-cmp
        CmpNormal               = { smt = semantics.text.normal },
        CmpBorder               = { smt = semantics.ui.border },
        CmpDocumentation        = { smt = semantics.text.normal },
        CmpDocBorder            = { smt = semantics.ui.border },

        CmpItemAbbr             = { smt = semantics.text.normal },
        CmpItemKind             = { smt = semantics.syntax.types },
        CmpItemMenu             = { smt = semantics.text.dimmed },
        CmpItemSelected         = { smt = semantics.text.selection },
    }

    H.notify = {
        NotifyERROR = { smt = semantics.diagnostics.error },
        NotifyINFO  = { smt = semantics.diagnostics.info },
        NotifyWARN  = { smt = semantics.diagnostics.warning },
        NotifyDEBUG = { smt = semantics.diagnostics.hint },
        NotifyTRACE = { smt = semantics.diagnostics.hint },
    }

    return H
end

return M
