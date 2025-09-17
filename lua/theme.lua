-- You can browse more themes here:
-- https://dotfyle.com/neovim/colorscheme/trending
local M = {}

local themes = {
    "gruvbox",
    "catppuccin",
    "tokyonight",
    "onedark",
    "dracula",
    "borlandp"
}

local current_theme = 1
local theme_file = vim.fn.stdpath("config") .. "/theme.txt"

-- Function to load theme from file
local function load_theme()
    local f = io.open(theme_file, "r")
    if f then
        local theme = f:read("*l")
        f:close()

        -- Find the index of the saved theme
        for i, t in ipairs(themes) do
            if t == theme then
                current_theme = i
                break
            end
        end

        vim.cmd("highlight clear")
        vim.cmd("colorscheme " .. themes[current_theme])
        print("Loaded theme: " .. themes[current_theme])
    else
        -- Fallback to the first theme if file doesn't exist
        vim.cmd("highlight clear")
        vim.cmd("colorscheme " .. themes[current_theme])
        print("Loaded default theme: " .. themes[current_theme])
    end
end

-- Function to save theme to file
local function save_theme()
    local f = io.open(theme_file, "w")
    if f then
        f:write(themes[current_theme])
        f:close()
    else
        print("Error saving theme!")
    end
end

-- Function to switch themes
function M.next_theme()
    current_theme = current_theme % #themes + 1
    vim.cmd("highlight clear")
    vim.cmd("colorscheme " .. themes[current_theme])
    save_theme()
    print("Theme switched to: " .. themes[current_theme])
end

-- Function to reset theme
function M.reset_theme()
    vim.fn.delete(theme_file)
    print("Theme reset. Restart Neovim.")
end

-- Load theme on startup
load_theme()

return M
