require("raghav.remap")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
    { import = "raghav.plugins" },
    { import = "raghav.plugins.lsp"}
}, {
    checker = {
        enabled = true,
        notify = false,
    },
    change_detection = {
        notify = false,
    },
})
--{
  --{
      --'https://github.com/rafi/awesome-vim-colorschemes',
      --priority = 1000,
      --config = function()
          --vim.cmd([[colorscheme gruvbox]])
      --end,
  --}, 
 --[[ {'nvim-telescope/telescope.nvim', tag = '0.1.2', dependencies={'nvim-lua/plenary.nvim'}},]]
  --[[{'nvim-treesitter/nvim-treesitter', build = {':TSUpdate'}},]]
  --[[{'norcalli/nvim-colorizer.lua'},]]
  --[[{'preservim/nerdcommenter'},]]
  --[[{]]
  --[["Dhanus3133/LeetBuddy.nvim",]]
  --[[dependencies = {]]
    --[["nvim-lua/plenary.nvim",]]
    --[["nvim-telescope/telescope.nvim",]]
  --[[},]]
  --[[config = function()]]
    --[[require("leetbuddy").setup({language = "java"})]]
  --[[end,]]
  --[[keys = {]]
    --[[{ "<leader>lq", "<cmd>LBQuestions<cr>", desc = "List Questions" },]]
    --[[{ "<leader>ll", "<cmd>LBQuestion<cr>", desc = "View Question" },]]
    --[[{ "<leader>lr", "<cmd>LBReset<cr>", desc = "Reset Code" },]]
    --[[{ "<leader>lt", "<cmd>LBTest<cr>", desc = "Run Code" },]]
    --[[{ "<leader>ls", "<cmd>LBSubmit<cr>", desc = "Submit Code" },]]
  --[[},]]
--[[},]]

--[[}]]



