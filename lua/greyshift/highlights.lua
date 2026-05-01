local M = {}

function M.setup(palette)
    local hi = function(name, opts)
        vim.api.nvim_set_hl(0, name, opts)
    end

    -- Editor
    hi("Normal", { fg = palette.fg0, bg = palette.bg0 })
    hi("NormalFloat", { fg = palette.fg0, bg = palette.bg1 })
    hi("CursorLine", { bg = palette.bg2 })
    hi("CursorLineNr", { fg = palette.yellow, bold = true })
    hi("LineNr", { fg = palette.fg1 })
    hi("Visual", { bg = palette.bg2 })
    hi("Search", { fg = palette.bg0, bg = palette.yellow })
    hi("IncSearch", { fg = palette.bg0, bg = palette.orange })
    hi("StatusLine", { fg = palette.fg0, bg = palette.bg1 })
    hi("VertSplit", { fg = palette.bg2 })
    hi("Pmenu", { fg = palette.fg0, bg = palette.bg1 })
    hi("PmenuSel", { fg = palette.bg0, bg = palette.blue, bold = true })
    hi("SignColumn", { fg = palette.fg1, bg = palette.none })
    hi("Folded", { fg = palette.fg1, bg = palette.bg1, italic = true })
    hi("MatchParen", { fg = palette.yellow, bold = true, underline = true })

    -- Syntax
    hi("Comment", { fg = palette.fg1, italic = true })
    hi("Constant", { fg = palette.magenta })
    hi("String", { fg = palette.green })
    hi("Identifier", { fg = palette.fg0 })
    hi("Function", { fg = palette.blue })
    hi("Statement", { fg = palette.red })
    hi("Keyword", { fg = palette.red, bold = true })
    hi("Type", { fg = palette.yellow })
    hi("Special", { fg = palette.cyan })
    hi("Todo", { fg = palette.bg0, bg = palette.yellow, bold = true })
    hi("Error", { fg = palette.red, bold = true })

    -- Treesitter
    hi("@variable", { fg = palette.fg0 })
    hi("@variable.builtin", { fg = palette.red })
    hi("@function", { fg = palette.blue })
    hi("@function.macro", { fg = palette.cyan })
    hi("@keyword", { fg = palette.red, bold = true })
    hi("@keyword.return", { fg = palette.red, italic = true })
    hi("@string", { fg = palette.green })
    hi("@string.escape", { fg = palette.cyan })
    hi("@type", { fg = palette.yellow })
    hi("@type.builtin", { fg = palette.yellow, italic = true })
    hi("@property", { fg = palette.fg0 })
    hi("@parameter", { fg = palette.fg0, italic = true })
    hi("@comment", { fg = palette.fg1, italic = true })
    hi("@constant", { fg = palette.magenta })
    hi("@operator", { fg = palette.cyan })
    hi("@punctuation", { fg = palette.fg1 })

    -- LSP diagnostics
    hi("DiagnosticError", { fg = palette.red })
    hi("DiagnosticWarn", { fg = palette.yellow })
    hi("DiagnosticInfo", { fg = palette.blue })
    hi("DiagnosticHint", { fg = palette.cyan })
    hi("DiagnosticUnderlineError", { undercurl = true, sp = palette.red })
    hi("DiagnosticUnderlineWarn", { undercurl = true, sp = palette.yellow })

    -- Git and diffs
    hi("DiffAdd", { fg = palette.green, bg = palette.none })
    hi("DiffChange", { fg = palette.yellow, bg = palette.none })
    hi("DiffDelete", { fg = palette.red, bg = palette.none })
    hi("DiffText", { fg = palette.blue, bg = palette.none })
end

return M
