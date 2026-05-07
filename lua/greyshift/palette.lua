local M = {}

M.base = {
    white = "#d2cec7",

    grey = {
        darkest = "#101214",
        darker  = "#15181b",
        dark    = "#1c2024",
        medium  = "#252a2f",
        light   = "#32383f",
        lighter = "#4a525b",
        subtle  = "#646d78",
    },

    red = {
        strong = "#c06f6a",
        soft   = "#d08a84",
    },

    yellow = {
        strong = "#c2a46f",
        soft   = "#d6ba84",
    },

    green = {
        strong = "#8faa72",
        soft   = "#a3be86",
    },

    blue = {
        strong = "#6f93b5",
        soft   = "#8aaecc",
    },

    purple = {
        strong = "#9c86bd",
        soft   = "#b19ad1",
    },
}

M.fg = {
    normal = M.base.white,
    dimmed = M.base.grey.subtle,
}

M.bg = {
    dark   = M.base.grey.dark,
    medium = M.base.grey.medium,
    light  = M.base.grey.light,

    accent = M.base.grey.lighter,
}

M.none = "NONE"

return M
