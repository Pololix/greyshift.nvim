vim.opt.background = "dark" 
vim.g.colors_name = "greyshift"

if vim.g.syntax_on then
    vim.cmmd("syntax reset")
end

require("greyshift").load()
