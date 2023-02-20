local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

-- Autocommand that reloads neovim whenever you save this file
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
    return
end

return require('packer').startup(function(use)
    use("wbthomason/packer.nvim")
    
    -- lua functions that many plugins use as dependancy
    use("nvim-lua/plenary.nvim")

    -- file explorer
    use("tpope/vim-vinegar")

    -- fuzzy finder
    use("nvim-telescope/telescope.nvim")

    -- distraction free writing
    use("junegunn/goyo.vim")
    use("junegunn/limelight.vim")

    -- vim wiki
    use("vimwiki/vimwiki")
    -- ^^ not finished installing

    -- YouCompleteMe
    use("ycm-core/YouCompleteMe")

    -- ALE
    use("dense-analysis/ale")

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)

