return {
  {
    "JavaHello/spring-boot.nvim",
    ft = { "java", "yaml", "jproperties" },
    dependencies = {
      "mfussenegger/nvim-jdtls",
    },
    opts = {},
  },
  {
    "DePaWSiT/springboot-nvim",
    ft = { "java", "yaml", "jproperties" },
    lazy = true,
branch = "personal",
    dependencies = {
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-jdtls",
    },
    opts = {
      dev_menu = true,
    },
    cmd = { "Spring" },
    dev = false,
  },
}
