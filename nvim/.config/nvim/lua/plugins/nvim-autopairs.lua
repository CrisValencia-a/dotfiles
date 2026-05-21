return {
	"windwp/nvim-autopairs",
	event = "InsertEnter", -- Se activa cuando entras al modo de inserción
	config = function()
		require("nvim-autopairs").setup({
			check_ts = true, -- Habilitar soporte para Treesitter
			map_cr = true, -- Habilitar el mapeo de la tecla Enter para completar pares
			map_bs = true, -- Habilitar el mapeo de la tecla Backspace
		})
	end,
}
