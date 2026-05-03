local M = {}

M.options = {
    -- empty for now
}

function M.setup()
    -- empty for now
end

function M.load()
    local palette = require("greyshift.palette")
    require("greyshift.highlights").set(palette)
end

return M
