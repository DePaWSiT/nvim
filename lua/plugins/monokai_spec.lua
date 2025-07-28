return {
    {
        "tanvirtin/monokai.nvim",
        opts = { palette = require('monokai').soda },
        config = function(opts)
            require("monokai").setup(opts)
            vim.api.nvim_set_hl(0, "Normal", {bg = "none" })
	        vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none" })
        end
    }
}
