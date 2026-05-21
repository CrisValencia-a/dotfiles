-- return {
-- 	"nvim-lualine/lualine.nvim",
-- 	dependencies = {
-- 		"nvim-tree/nvim-web-devicons", -- Necesario para los íconos de los archivos
-- 		"catppuccin/nvim",
-- 	},
-- 	config = function()
-- 		local theme = "catppuccin"
--
-- 		require("lualine").setup({
-- 			options = {
-- 				-- Catppuccin provee su propio tema para lualine.
-- 				-- Tomará automáticamente el "flavor" (macchiato) que tengas en tu config de catppuccin.
-- 				theme = auto,
--
-- 				-- Separadores de estilo "Powerline" (asegúrate de usar una fuente Nerd Font)
-- 				component_separators = { left = "", right = "" },
-- 				section_separators = { left = "", right = "" },
--
-- 				always_divide_middle = true,
-- 				globalstatus = true, -- Altamente recomendado: muestra una sola barra de estado en la parte inferior si usas múltiples splits
-- 			},
-- 			sections = {
-- 				lualine_a = {
-- 					{ "mode", icon = "" }, -- Muestra el modo actual (NORMAL, INSERT, etc.) con un ícono de Vim
-- 				},
-- 				lualine_b = {
-- 					"branch",
-- 					"diff",
-- 					{
-- 						"diagnostics",
-- 						sources = { "nvim_workspace_diagnostic", "nvim_lsp" },
-- 						symbols = { error = " ", warn = " ", info = " ", hint = "󰛨 " },
-- 					},
-- 				},
-- 				lualine_c = {
-- 					{
-- 						"filename",
-- 						path = 1, -- 0: solo nombre, 1: path relativo, 2: path absoluto, 3: path absoluto con ~
-- 						symbols = {
-- 							modified = " ", -- Muestra un ícono si el archivo tiene cambios sin guardar
-- 							readonly = " ", -- Muestra un candado si el archivo es de solo lectura
-- 							unnamed = "[No Name]",
-- 						},
-- 					},
-- 				},
-- 				lualine_x = {
-- 					"encoding",
-- 					"fileformat",
-- 					"filetype",
-- 				},
-- 				lualine_y = { "progress" }, -- Muestra el % del archivo en el que te encuentras
-- 				lualine_z = { "location" }, -- Muestra la línea y columna actual
-- 			},
-- 			inactive_sections = {
-- 				lualine_a = {},
-- 				lualine_b = {},
-- 				lualine_c = { "filename" },
-- 				lualine_x = { "location" },
-- 				lualine_y = {},
-- 				lualine_z = {},
-- 			},
-- 			tabline = {},
-- 			extensions = {
-- 				"lazy",
-- 				"mason",
-- 				"nvim-tree", -- Agrega aquí otras extensiones que uses (ej: "neo-tree", "trouble")
-- 			},
-- 		})
-- 	end,
-- }

return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"rebelot/kanagawa.nvim", -- Cambiamos la dependencia
	},
	config = function()
		require("lualine").setup({
			options = {
				-- Usamos el tema kanagawa (detectará la variante dragon automáticamente)
				theme = "kanagawa",

				-- Cambiamos a separadores minimalistas que combinan con tu Starship
				-- Usamos barras rectas o vacías para un look más moderno
				component_separators = { left = "⏐", right = "⏐" },
				section_separators = { left = "", right = "" },

				always_divide_middle = true,
				globalstatus = true,
			},
			sections = {
				lualine_a = {
					{
						"mode",
						icon = "",
						separator = { left = "", right = "" }, -- Bordes rectos
					},
				},
				lualine_b = {
					{ "branch", icon = "🌱" }, -- Usamos el mismo icono de tu Starship
					"diff",
					{
						"diagnostics",
						symbols = { error = " ", warn = " ", info = " ", hint = "󰛨 " },
					},
				},
				lualine_c = {
					{
						"filename",
						path = 1,
						symbols = {
							modified = " ●", -- Un círculo sutil para archivos modificados
							readonly = " 🔒", -- Candado que combina con tu Starship
							unnamed = "[No Name]",
						},
					},
				},
				lualine_x = {
					{
						"filetype",
						icon_only = true, -- Solo el icono para no saturar la barra
					},
					"encoding",
				},
				lualine_y = { "progress" },
				lualine_z = {
					{ "location", separator = { left = "", right = "" } },
				},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			extensions = { "lazy", "mason", "nvim-tree", "oil" }, -- Agregamos oil ya que lo usas
		})
	end,
}
