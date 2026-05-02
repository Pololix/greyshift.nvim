local M = {}

M.options = {

}

function M.setup()

end

function M.load()
    local palette = require("greyshift.palette")
    require("greyshift.highlights").setup(palette)
end

return M
