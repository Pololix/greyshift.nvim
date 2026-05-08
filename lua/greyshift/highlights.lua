local M = {}

function M.build(semantics)
    local H = {}

    H.ui = {
        Normal       = semantics.text.normal,
        CursorLine   = semantics.text.cursor,
        Folded       = semantics.text.dimmed,

        NormalFloat  = semantics.ui.float,
        FloatBorder  = semantics.ui.border,

        LineNr       = semantics.ui.details,
        CursorLineNr = semantics.ui.details,
        SignColumn   = semantics.ui.details,
        FoldColumn   = semantics.ui.details,

        StatusLine   = semantics.ui.float,
        StatusLineNC = semantics.ui.float,

        Visual       = semantics.ui.selection,

        Search       = semantics.ui.search,
        IncSearch    = semantics.ui.inc_search,

        WinSeparator = semantics.ui.separator,
        VertSplit    = semantics.ui.separator,
        MatchParen   = semantics.text.normal,
    }

    H.syntax = {
        ["@comment"]         = semantics.syntax.comments,

        ["@keyword"]         = semantics.syntax.keywords,

        ["@function"]        = semantics.syntax.functions,
        ["@method"]          = semantics.syntax.functions,
        ["@constructor"]     = semantics.syntax.functions,

        ["@type"]            = semantics.syntax.types,
        ["@type.builtin"]    = semantics.syntax.types,

        ["@variable"]        = semantics.syntax.variables,
        ["@parameter"]       = semantics.syntax.variables,
        ["@property"]        = semantics.syntax.variables,
        ["@field"]           = semantics.syntax.variables,

        ["@constant"]        = semantics.syntax.constants,

        ["@string"]          = semantics.syntax.constants,
        ["@number"]          = semantics.syntax.constants,
        ["@boolean"]         = semantics.syntax.constants,

        ["@operator"]        = semantics.syntax.operators,
        ["@punctuation"]     = semantics.syntax.punctuation,
    }

    H.diagnostics = {
        DiagnosticError            = semantics.diagnostics.error,
        DiagnosticWarn             = semantics.diagnostics.warning,
        DiagnosticInfo             = semantics.diagnostics.info,
        DiagnosticHint             = semantics.diagnostics.hint,

        DiagnosticUnderlineError   = semantics.diagnostics.error,
        DiagnosticUnderlineWarn    = semantics.diagnostics.warning,
        DiagnosticUnderlineInfo    = semantics.diagnostics.info,
        DiagnosticUnderlineHint    = semantics.diagnostics.hint,

        DiagnosticVirtualTextError = semantics.diagnostics.error,
        DiagnosticVirtualTextWarn  = semantics.diagnostics.warning,
        DiagnosticVirtualTextInfo  = semantics.diagnostics.info,
        DiagnosticVirtualTextHint  = semantics.diagnostics.hint,
    }

    H.git = {
        DiffText       = semantics.ui.normal,

        DiffAdd        = semantics.git.added,
        DiffDelete     = semantics.git.removed,
        DiffChange     = semantics.git.changed,
        DiffRename     = semantics.git.changed,

        GitSignsAdd    = semantics.git.added,
        GitSignsDelete = semantics.git.removed,
        GitSignsChange = semantics.git.changed,

    }

    H.plugins = {
        -- Neotree
        NeoTreeNormal           = semantics.ui.normal,
        NeoTreeCursorLine       = semantics.ui.cursor_line,

        NeoTreeRootName         = semantics.file_explorer.root,

        NeoTreeDirectoryName    = semantics.file_explorer.directory,
        NeoTreeDirectoryIcon    = semantics.file_explorer.directory,
        NeoTreeFileName         = semantics.file_explorer.file,

        NeoTreeIndentMarker     = semantics.ui.details,
        NeoTreeExpander         = semantics.ui.details,

        NeoTreeGitAdded         = semantics.git.added,
        NeoTreeGitDeleted       = semantics.git.removed,
        NeoTreeGitModified      = semantics.git.changed,
        NeoTreeGitUntracked     = semantics.git.untracked,

        -- Telescope
        TelescopeNormal         = semantics.text.normal,
        TelescopeBorder         = semantics.ui.border,
        TelescopePrompt         = semantics.text.normal,
        TelescopeSelection      = semantics.text.selection,
        TelescopeMultiSelection = semantics.text.selection,

        -- Nvim-cmp
        CmpNormal               = semantics.text.normal,
        CmpBorder               = semantics.ui.border,
        CmpDocumentation        = semantics.text.normal,
        CmpDocBorder            = semantics.ui.border,

        CmpItemAbbr             = semantics.cmp.item_abbr,
        CmpItemKind             = semantics.cmp.item_kind,
        CmpItemMenu             = semantics.cmp.item_menu,
        CmpItemSelected         = semantics.cmp.selected,
    }

    H.notify = {
        NotifyERROR = semantics.diagnostics.error,
        NotifyINFO  = semantics.diagnostics.info,
        NotifyWARN  = semantics.diagnostics.warn,
        NotifyDEBUG = semantics.diagnostics.hint,
        NotifyTRACE = semantics.diagnostics.hint,
    }

    return H
end

return M
