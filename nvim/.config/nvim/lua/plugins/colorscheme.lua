-- return {
-- 	{
-- 		"catppuccin/nvim",
-- 		name = "catppuccin",
-- 		lazy = false,
-- 		priority = 1000,
-- 		opts = {
-- 			flavour = "macchiato", -- Ahora sí se aplicará correctamente
-- 			transparent_background = false,
-- 			term_colors = true,
-- 			integrations = {
-- 				lualine = true, -- Forzamos la integración explícita con lualine
-- 				nvimtree = true,
-- 			},
-- 		},
-- 		config = function(_, opts)
-- 			require("catppuccin").setup(opts)
-- 			vim.cmd.colorscheme("catppuccin")
-- 		end,
-- 	},
-- }

return {
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		lazy = false,
		priority = 1000,
		opts = {
			compile = false, -- Mejora el tiempo de carga si se activa
			undercurl = true, -- Soporte para subrayados curvos
			commentStyle = { italic = true },
			functionStyle = {},
			keywordStyle = { italic = true },
			statementStyle = { bold = true },
			typeStyle = {},
			transparent = true, -- Mantener el fondo oscuro del tema Dragon
			dimInactive = false, -- No oscurecer ventanas inactivas
			terminalColors = true, -- Colores de Kanagawa en el terminal interno
			colors = {
				theme = {
					all = {
						ui = {
							bg_gutter = "none", -- Limpia la columna de números
						},
					},
				},
			},
			theme = "dragon", -- ¡Aquí especificamos la variante que quiera utilizar!
		},
		config = function(_, opts)
			require("kanagawa").setup(opts)
			vim.cmd.colorscheme("kanagawa")
		end,
	},
}
