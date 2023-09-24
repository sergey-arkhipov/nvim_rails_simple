require "lspconfig".efm.setup {
    init_options = {documentFormatting = true},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            lua = {
                {formatCommand = "lua-format -i", formatStdin = true}
            },
            eruby = {
                {formatCommand = 'htmlbeautifier', formatStdin = true },
                {lintCommand = "erblint -a", formatStdin = true }
            }
        }
    }
}
