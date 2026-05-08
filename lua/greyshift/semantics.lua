local M = {}

function M.build(palette)
    local S = {}

    S.text = {
        normal = {
            fg        = palette.base.white,
            bg        = palette.base.grey.medium,
            bold      = false,
            italic    = false,
            underline = false,
        },

        dimmed = {
            fg        = nil,
            bg        = palette.base.grey.lightest,
            bold      = false,
            italic    = false,
            underline = false,
        },

        cursor = {
            fg        = nil,
            bg        = palette.base.grey.light,
            bold      = false,
            italic    = false,
            underline = false,
        },

        selection = {
            fg        = nil,
            bg        = palette.base.grey.lighter,
            bold      = false,
            italic    = false,
            underline = false,
        },

        search = {
            fg        = palette.base.grey.dark,
            bg        = palette.base.yellow.dark,
            bold      = false,
            italic    = false,
            underline = false,
        },
    }

    S.ui = {
        float = {
            fg        = palette.base.white,
            bg        = palette.base.grey.dark,
            bold      = false,
            italic    = false,
            underline = false,
        },

        separator = {
            fg        = palette.base.white,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },

        details = {
            fg        = palette.grey.lightest,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },

        cursor_line_nr = {
            fg        = palette.base.yellow.dark,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },
    }

    S.syntax = {
        comments = {
            fg        = palette.base.grey.lightest,
            bg        = nil,
            bold      = false,
            italic    = true,
            underline = false,
        },

        keywords = {
            fg        = palette.base.purple.dark,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },

        functions = {
            fg        = palette.base.yellow.dark,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },

        types = {
            fg        = palette.base.red.dark,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },

        operators = {
            fg        = palette.base.white,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },

        variables = {
            fg        = palette.base.red.light,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },

        constants = {
            fg        = palette.base.purple.dark,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },
    }

    S.diagnostics = {
        error = {
            fg        = palette.base.red.light,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = true,
        },

        warning = {
            fg        = palette.base.yellow.light,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = true,
        },

        info = {
            fg        = palette.base.blue.dark,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = true,
        },

        hint = {
            fg        = palette.base.grey.lightest,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },
    }

    S.git = {
        added = {
            fg        = palette.base.green.dark,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },

        removed = {
            fg        = palette.base.red.dark,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },

        changed = {
            fg        = palette.base.yellow.dark,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },

        untracked = {
            fg        = palette.base.grey.lightest,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },
    }

    S.file_explorer = {
        root = {
            fg        = palette.base.red.dark,
            bg        = nil,
            bold      = true,
            italic    = false,
            underline = false,
        },

        directory = {
            fg        = palette.base.yellow.dark,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },

        file = {
            fg        = palette.base.white,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },
    }

    return S
end

return M
