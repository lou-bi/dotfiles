-- Install with
-- mac: brew install lua-language-server
-- Arch: pacman -S lua-language-server

---@type vim.lsp.Config
return {
    cmd = { 'lua-language-server' },
    filetypes = { 'lua' },
    root_markers = {
        '.git',
        '.luacheckrc',
        '.luarc.json',
        '.luarc.jsonc',
        '.stylua.toml',
        'selene.toml',
        'selene.yml',
        'stylua.toml',
    },
    single_file_support = true,
    log_level = vim.lsp.protocol.MessageType.Warning,

    -- NOTE: These will be merged with the configuration file.
    -- settings = {
    --     Lua = {
    --         completion = { callSnippet = 'Replace' },
    --         -- Using stylua for formatting.
    --         format = { enable = false },
    --         hint = {
    --             enable = true,
    --             arrayIndex = 'Disable',
    --         },
    --         runtime = {
    --             version = 'LuaJIT',
    --         },
    --         workspace = {
    --             checkThirdParty = false,
    --             library = {
    --                 vim.env.VIMRUNTIME,
    --                 '${3rd}/luv/library',
    --             },
    --         },
    --     },
    -- },
}
