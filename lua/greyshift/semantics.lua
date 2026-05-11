local M = {}

function M.build(palette)
    local S = {}

    S.text = {
        normal = {
            fg        = palette.white,
            bg        = palette.grey.medium,
            bold      = false,
            italic    = false,
            underline = false,
        },

        dimmed = {
            fg        = nil,
            bg        = palette.grey.lightest,
            bold      = false,
            italic    = false,
            underline = false,
        },

        cursor = {
            fg        = nil,
            bg        = palette.grey.light,
            bold      = false,
            italic    = false,
            underline = false,
        },

        selection = {
            fg        = nil,
            bg        = palette.grey.lighter,
            bold      = false,
            italic    = false,
            underline = false,
        },

        search = {
            fg        = palette.grey.dark,
            bg        = palette.yellow.dark,
            bold      = false,
            italic    = false,
            underline = false,
        },
    }

    S.ui = {
        float = {
            fg        = palette.white,
            bg        = palette.grey.dark,
            bold      = false,
            italic    = false,
            underline = false,
        },

        border = {
            fg        = palette.white,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },

        separator = {
            fg        = palette.white,
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
            fg        = palette.yellow.dark,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },
    }

    S.syntax = {
        comments = {
            fg        = palette.grey.lightest,
            bg        = nil,
            bold      = false,
            italic    = true,
            underline = false,
        },

        keywords = {
            fg        = palette.purple.dark,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },

        functions = {
            fg        = palette.yellow.dark,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },

        types = {
            fg        = palette.red.dark,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },

        punctuation = {
            fg        = palette.white,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },

        operators = {
            fg        = palette.white,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },

        variables = {
            fg        = palette.white,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },

        constants = {
            fg        = palette.yellow.ligth,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },
    }

    S.diagnostics = {
        error = {
            fg        = palette.red.light,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = true,
        },

        warning = {
            fg        = palette.yellow.light,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = true,
        },

        info = {
            fg        = palette.blue.dark,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = true,
        },

        hint = {
            fg        = palette.grey.lightest,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },
    }

    S.git = {
        added = {
            fg        = palette.green.dark,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },

        removed = {
            fg        = palette.red.dark,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },

        changed = {
            fg        = palette.yellow.dark,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },

        untracked = {
            fg        = palette.grey.lightest,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },
    }

    S.file_explorer = {
        root = {
            fg        = palette.red.dark,
            bg        = nil,
            bold      = true,
            italic    = false,
            underline = false,
        },

        directory = {
            fg        = palette.yellow.dark,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },

        file = {
            fg        = palette.white,
            bg        = nil,
            bold      = false,
            italic    = false,
            underline = false,
        },
    }

    return S
end

return M
