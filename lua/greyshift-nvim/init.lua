local M = {}

M.options = {
    transparent_background = false,
    italic_comments = true,
    bold_keywords = true
}

function M.setup(opts)
    M.options = vim.tbl_deep_extend("force", M.options, opts or {})
end

function M.load()
    local palette = require("greyshift.palette")
    local highlights = require("greyshift.highlights").dark

    if M.options.transparent_background then
        palette.bg0 = "NONE"
    end

    highlights.setup(palette)
end

return M
