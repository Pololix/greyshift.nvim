local M = {}

M.base = {
    white = "#d7dbe0",

    grey = {
        darkest = "#0f1113",
        darker  = "#14171a",
        dark    = "#1b1f24",
        medium  = "#232830",
        light   = "#313843",
        lighter = "#495463",
        subtle  = "#697586",
    },

    red = {
        strong = "#d16969",
        soft   = "#e08282",
    },

    yellow = {
        strong = "#d7ba7d",
        soft   = "#e5c890",
    },

    green = {
        strong = "#8fbf7f",
        soft   = "#a7d79a",
    },

    blue = {
        strong = "#6ea8d9",
        soft   = "#8fc1eb",
    },

    purple = {
        strong = "#b18ad6",
        soft   = "#c7a3eb",
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
