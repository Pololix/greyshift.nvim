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
    require("greyshift.highlights").setup(require("greyshift.palette"))
end

return M
