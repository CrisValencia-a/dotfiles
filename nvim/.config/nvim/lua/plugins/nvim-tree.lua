return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false, -- Recomendado para que el ícono en el Dashboard y el auto-open funcionen bien
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{ "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle Explorer" },
		{ "<leader>o", "<cmd>NvimTreeFocus<cr>", desc = "Focus Explorer" },
	},
	config = function()
		require("nvim-tree").setup({
			-- Desactiva la redimensión automática al abrir
			view = {
				width = 35,
				relativenumber = true, -- Útil para moverte rápido con J/K dentro del árbol
			},
			-- Configuración visual y de renderizado
			renderer = {
				indent_markers = {
					enable = true, -- Dibuja líneas guías para ver la jerarquía de carpetas
				},
				highlight_git = true, -- Colorea los archivos según su estado en Git
				icons = {
					show = {
						file = true,
						folder = true,
						folder_arrow = true,
						git = true,
					},
					glyphs = {
						folder = {
							arrow_closed = "󰅂", -- Íconos más limpios para las flechas
							arrow_open = "󰅀",
						},
						git = {
							unstaged = "✗",
							staged = "✓",
							unmerged = "",
							renamed = "➜",
							untracked = "★",
							deleted = "",
							ignored = "◌",
						},
					},
				},
			},
			-- Acciones al manipular archivos
			actions = {
				open_file = {
					quit_on_open = true, -- Cierra el árbol automáticamente al abrir un archivo
					window_picker = {
						enable = true, -- Evita abrir archivos en ventanas flotantes o raras
					},
				},
			},
			-- Filtros para archivos que no quieres ver
			filters = {
				dotfiles = false, -- Ponlo en true si quieres ocultar archivos tipo .gitignore, .env, etc.
				custom = { ".DS_Store" },
			},
			-- Integración con Git
			git = {
				ignore = false, -- Sigue mostrando archivos aunque estén en el .gitignore
			},
			-- Animaciones o comportamiento al entrar
			sync_root_with_cwd = true, -- Cambia la raíz del árbol si cambias de directorio en Neovim
			respect_buf_cwd = true,
			update_focused_file = {
				enable = true,
				update_root = true,
			},
		})
	end,
}
