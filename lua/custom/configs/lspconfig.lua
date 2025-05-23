local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

lspconfig.gopls.setup {
  inlay_hints = {
    enable = false
  },
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls"},
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      -- usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
      -- staticcheck = true,
      gofumpt = true,
      -- hints = {
      --   assignVariableTypes = true,
      --   compositeLiteralFields = true,
      --   constantValues = true,
      --   functionTypeParameters = true,
      --   parameterNames = true,
      --   rangeVariableTypes = true,
      -- }
    },
  },
}

lspconfig.dagger.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"cuelsp"},
  filetypes = {"cue"},
  root_dir = util.root_pattern("cue.mod", ".git"),
  single_file_support = true

}

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  -- cmd = {"rust-analyzer"},
  filetypes = { "rust" },
  -- root_dir = util.root_pattern("Cargo.toml"),
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
      },
    },
  },
})


lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "python" },
})


lspconfig.terraformls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"terraform-ls", "serve"},
  filetypes = { "terraform"},
  root_dir = util.root_pattern("*.tf", ".git"),
  -- single_file_support = true
})
