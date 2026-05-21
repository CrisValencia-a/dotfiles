return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	cmd = "Oil", -- Se carga solo cuando ejecutas el comando
	keys = {
		{ "-", "<CMD>Oil<CR>", desc = "Open parent directory" }, -- El atajo estándar de Oil
	},
	config = function()
		require("oil").setup({
			-- El tema de Catppuccin se aplica automáticamente a los íconos
			default_file_explorer = true, -- Reemplaza a Netrw (el explorador por defecto de Vim)
			delete_to_trash = true, -- Envía a la papelera en lugar de borrar permanentemente
			skip_confirm_for_simple_edits = true, -- No pide confirmación para cambios menores

			-- Configuración visual
			view_options = {
				show_hidden = true, -- Muestra archivos ocultos por defecto (.env, .gitignore)
				is_always_hidden = function(name, _)
					return name == ".." or name == ".git" -- Oculta lo que realmente no quieres editar
				end,
			},

			-- Configuración de la ventana flotante (si prefieres usarla así)
			float = {
				padding = 2,
				max_width = 90,
				max_height = 0,
				border = "rounded", -- Bordes redondeados que se ven genial con Macchiato
				win_options = {
					winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder",
				},
			},

			-- Personalización de columnas
			columns = {
				"icon",
				-- "permissions",
				-- "size",
				-- "mtime",
			},

			-- Atajos de teclado dentro de Oil
			keymaps = {
				["g?"] = "actions.show_help",
				["<CR>"] = "actions.select",
				["<C-s>"] = "actions.select_vsplit", -- Abrir en split vertical
				["<C-h>"] = "actions.select_split", -- Abrir en split horizontal
				["<C-t>"] = "actions.select_tab",
				["<C-p>"] = "actions.preview", -- Previsualizar el archivo sin abrirlo
				["<C-c>"] = "actions.close",
				["<C-l>"] = "actions.refresh",
				["-"] = "actions.parent", -- Subir un nivel de carpeta
				["_"] = "actions.open_cwd", -- Ir al directorio de trabajo actual
				["gs"] = "actions.change_sort",
				["gx"] = "actions.open_external", -- Abrir con el sistema (ej: una imagen)
				["g."] = "actions.toggle_hidden",
			},
		})
	end,
}
