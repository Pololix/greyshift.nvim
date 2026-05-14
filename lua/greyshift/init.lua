local M = {}

M.opts = {

}

function M.setup(opts)
    M.opts = vim.tbl_deep_extend("force", M.opts, opts or {})
end

function M.load()
    local palette    = require("greyshift.palette").get()
    local semantics  = require("greyshift.semantics").get(palette)
    local highlights = require("greyshift.highlights").get(palette, semantics)

    M.apply(highlights)
end

function M.apply(hl)
    for _, group in pairs(hl) do
        for target, desc in pairs(group) do
            local opts = vim.tbl_deep_extend("force", desc.smt, desc.ovr or {})
            vim.api.nvim_set_hl(0, target, opts)
        end
    end
end

return M
