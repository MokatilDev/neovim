require("nvchad.configs.lspconfig").defaults()

local servers = {
  "lua_ls",
  "biome",
  "sqlls",
  "sqls",
  "html",
  "texlab",
  "emmet_ls",
  "tailwindcss",
  "gopls",
  "clangd",
  "ts_ls",
  "prismals",
}
vim.lsp.enable(servers)

vim.lsp.config.gopls = {
  cmd_env = {
    GOROOT = "/home/mokatildev/.cache/tinygo/goroot-0e7b0ad1dfd579a1d9779d5d912e72fe13e5ee7be6b1e9713abb94a323be70d4",
    GOFLAGS = "-tags=avr,baremetal,linux,arm,atmega328p,atmega,avr5,arduino,tinygo,purego,osusergo,math_big_pure_go,gc.conservative,scheduler.none,serial.uart,tinygo.unicore",
  },
}

vim.lsp.config.prismals = {
  filetypes = {
    "prisma",
  },
}

vim.lsp.config.emmet_ls = {
  filetypes = {
    "css",
    "html",
    "javascript",
    "typescript",
    "javascriptreact",
    "less",
    "sass",
    "scss",
    "typescriptreact",
  },
  init_options = {
    html = {
      options = {
        ["bem.enabled"] = true,
        ["output.attributeQuotes"] = "double",
      },
    },
  },
}

vim.lsp.config.tailwindcss = {
  filetypes = {
    "html",
    "css",
    "scss",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
  },
}

vim.lsp.config.lua_ls = {
  filetypes = {
    "lua",
  },
}

vim.lsp.config.cssls = {
  settings = {
    css = {
      validate = true,
      lint = {
        unknownAtRules = "ignore",
      },
    },
  },
}

-- read :h vim.lsp.config for changing options of lsp servers
