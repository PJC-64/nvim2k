local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
    return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics
local hover = null_ls.builtins.hover
local code_actions = null_ls.builtins.code_actions
local completion = null_ls.builtins.completion

null_ls.setup({
    debug = false,
    sources = {
        code_actions.cspell,
        code_actions.eslint,
        code_actions.proselint,
        code_actions.refactoring,
        code_actions.shellcheck,
        completion.spell,
        completion.tags,
        diagnostics.cspell,
        diagnostics.eslint,
        diagnostics.rubocop,
        diagnostics.selene,
        diagnostics.shellcheck,
        diagnostics.standardrb,
        formatting.black.with({ extra_args = { "--fast" } }),
        formatting.eslint,
        formatting.prettier,
        formatting.rubocop,
        formatting.shfmt,
        formatting.standardrb,
        formatting.stylua,
        hover.dictionary,
        hover.printenv,
    },
})
