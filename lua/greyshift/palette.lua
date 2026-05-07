local M = {}

M.base = {
    white = "#d6d0c8",

    grey = {
        darker  = "#141618",
        dark    = "#1b1e21",
        medium  = "#23272b",
        light   = "#31363c",
        lighter = "#4a525a",
    },

    red = {
        strong = "#b06c6c",
        soft   = "#c48787",
    },

    yellow = {
        strong = "#b59a6a",
        soft   = "#ccb07a",
    },

    blue = {
        strong = "#6f8fa8",
        soft   = "#8aa8bf",
    },

    green  = "#8fa97a",

    purple = "#9a88b5",
}

M.fg = {
    normal = M.base.white,
    dimmed = M.base.grey.darker,
}

M.bg = {
    dark   = M.base.grey.dark,
    medium = M.base.grey.medium,
    light  = M.base.grey.light,

    accent = M.base.grey.lighter,
}

M.none = "NONE"

return M
