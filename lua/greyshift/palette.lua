local M = {}

M.base = {
    white  = "#e8d8be",
    grey   = {
        darker  = "#1c1814",
        dark    = "#242018",
        medium  = "#23281e",
        light   = "#3a3228",
        lighter = "#625648",
    },

    red    = {
        strong = "#a05848",
        soft   = "#c87060",
    },

    yellow = {
        strong = "#a88040",
        soft   = "#d0a458",
    },

    blue   = {
        strong = "#607888",
        soft   = "#7a9cac",
    },

    green  = "#8aae72",

    purple = "#9878a0",
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
