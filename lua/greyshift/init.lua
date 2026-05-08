local M = {}

M.opts = {

}

function M.setup(opts)
    M.opts = vim.tbl_deep_extend("force", M.opts, opts or {})
end

function M.load()
    local palette    = require("greyshift.palette")
    local semantics  = require("greyshift.semantics").build(palette)
    local highlights = require("greyshift.highlights").build(semantics)

    for tbl, conts in pairs(highlights) do
        for target, opts in pairs(conts) do
            if not tbl[target] then
                vim.notify(target .. " is not a valid hl target", vim.logs.levels.ERROR)
            end

            vim.api.nvim_set_hl(0, target, opts)
        end
    end
end

return M
