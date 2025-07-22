local M = {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
}

M.config = function()
    require("kanagawa").setup({
        transparent = true
    })
    vim.cmd.colorscheme("kanagawa-wave")
    -- Apply transparency to common UI elements
    local groups = {
        "Normal", "NormalNC", "NormalFloat", "FloatBorder",
        "TelescopeNormal", "TelescopeBorder",
        "TelescopePromptNormal", "TelescopePromptBorder",
        "TelescopeResultsNormal", "TelescopeResultsBorder",
        "TelescopePreviewNormal", "TelescopePreviewBorder",
        "Pmenu", "SignColumn",
        "LineNr", "CursorLineNr", -- 👈 Add these
    }

    for _, group in ipairs(groups) do
        vim.api.nvim_set_hl(0, group, { bg = "none" })
    end
end

return M
