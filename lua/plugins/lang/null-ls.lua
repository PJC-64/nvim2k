local status_ok, null_ls = pcall(require, 'null-ls')
if not status_ok then
    return
end

local format = null_ls.builtins.formatting
local diag = null_ls.builtins.diagnostics
local hover = null_ls.builtins.hover
local action = null_ls.builtins.code_actions
local comp = null_ls.builtins.completion

-- Buily in sources: https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md

null_ls.setup({
    debug = false,
    border = 'rounded',
    log_level = 'info',
    diagnostics_format = '#{c} #{m} (#{s})',
    sources = {
        action.proselint,
        action.refactoring,
        action.ts_node_action,
        comp.luasnip,
        comp.spell,
        comp.tags,
        diag.actionlint,
        diag.alex,
        diag.credo,
        diag.golangci_lint,
        diag.hadolint,
        diag.proselint,
        diag.reek,
        diag.rubocop,
        diag.selene,
        diag.todo_comments,
        diag.trail_space,
        diag.vint,
        diag.write_good,
        format.mix,
        format.prettier,
        format.rubocop,
        format.shfmt,
        format.stylua,
        hover.dictionary,
        hover.printenv,
        -- Extend sources
        -- diagnostics.cspell.with({
        --     {
        --         disabled_filetypes = { "lua" },
        --         filetypes = { "html", "json", "yaml", "markdown" },
        --         extra_args = { "--config ~/.cspell.json" },
        --     },
        -- }),
    },
})

require('mason-null-ls').setup({
    ensure_installed = nil,
    automatic_installation = true,
})
