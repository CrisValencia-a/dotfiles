return {
	"windwp/nvim-ts-autotag",
	config = function()
		require("nvim-ts-autotag").setup({
			filetypes = { "html", "xml", "javascript", "typescript" }, -- Habilita para los lenguajes deseados
			rename_tags = true, -- Habilita el renombrado automático de las etiquetas
		})
	end,
}

-- return {
-- 	"windwp/nvim-ts-autotag",
-- 	event = { "BufReadPre", "BufNewFile" },
-- 	config = function()
-- 		require("nvim-ts-autotag").setup({
-- 			opts = {
-- 				enable_close = true,
-- 				enable_rename = true,
-- 				enable_close_on_slash = false,
-- 			},
-- 		})
-- 	end,
-- }
