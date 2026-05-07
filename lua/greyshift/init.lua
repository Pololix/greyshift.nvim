local M = {}

M.opts = {

}

function M.setup(opts)
    M.opts = vim.tbl_extend_deep("force", M.opts, opts or {})
    M.load()
end

function M.load()
    local palette = require("greyshift.palette")
    require("greyshift.highlights").set(palette)
end

return M
