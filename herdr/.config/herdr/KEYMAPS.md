# Keymaps — herdr

> **Prefijo = `ctrl+b`**: presiona `ctrl+b`, suelta, y luego la tecla.
> `prefix+?` muestra **todos** los atajos activos en vivo (con `/` para filtrar).
> Config: `config.toml` en esta misma carpeta (enlazado a `~/.config/herdr/config.toml`).
> Basado en la config de craftzdog, adaptado a WSL + WezTerm (sin atajos `ctrl+shift`).

El mouse también funciona para todo: clic en paneles/pestañas, arrastrar bordes, clic derecho para menús, arrastrar para copiar.

---

## Paneles

| Atajo | Acción |
|---|---|
| `prefix+h/j/k/l` | Moverse al panel ← ↓ ↑ → |
| `prefix+;` | Volver al último panel |
| `prefix+v` · `prefix+\|` · `prefix+%` · `prefix+\` | Dividir a la derecha (vertical) |
| `prefix+-` · `prefix+"` · `prefix+_` | Dividir hacia abajo (horizontal) |
| `prefix+shift+h/j/k/l` | Redimensionar el panel ← ↓ ↑ → |
| `prefix+shift+r` | Modo redimensionar |
| `prefix+z` | Zoom (maximizar/restaurar el panel) |
| `prefix+x` | Cerrar panel |
| `prefix+e` | Cerrar **todos los demás** paneles de la pestaña (usa `jq`) |

## Pestañas (tabs)

| Atajo | Acción |
|---|---|
| `prefix+c` | Nueva pestaña |
| `prefix+n` / `prefix+p` | Pestaña siguiente / anterior |
| `prefix+1..9` | Ir a la pestaña 1–9 |
| `prefix+,` | Renombrar pestaña |
| `prefix+&` | Cerrar pestaña |

## Workspaces y sesión

| Atajo | Acción |
|---|---|
| `prefix+w` | Navegar entre workspaces |
| `prefix+shift+n` | Nuevo workspace |
| `prefix+shift+w` | Renombrar workspace |
| `prefix+shift+d` | Cerrar workspace |
| `prefix+u` | **Goto**: saltar a cualquier panel/agente (ver abajo) |
| `prefix+shift+o` | Ir al panel de la última notificación |
| `prefix+b` | Mostrar/ocultar la barra lateral (arranca oculta) |
| `prefix+d` | **Detach**: salir dejando todo corriendo (volver con `herdr`) |

## Utilidades

| Atajo | Acción |
|---|---|
| `prefix+g` | Lazygit en un panel nuevo, en la carpeta actual |
| `prefix+o` | Abrir la carpeta actual en el Explorador de Windows |
| `prefix+r` | Recargar la config |
| `prefix+?` | Ver todos los atajos |

---

## Goto picker (`prefix+u`)

| Tecla | Acción |
|---|---|
| `j` / `k` o ↑ / ↓ | Moverse por la lista |
| `Enter` | Ir al panel/agente seleccionado |
| `/` | Buscar (nombre, agente, pestaña, workspace, rama, ruta) |
| `b` / `w` / `i` / `d` | Filtrar agentes: bloqueados / trabajando / inactivos / terminados |
| `a` | Mostrar todos de nuevo |
| ← / → | Saltar al workspace anterior / siguiente |
| `Esc` | Salir |

## Modo copia (`prefix+[`)

| Tecla | Acción |
|---|---|
| `h/j/k/l`, `w/b/e`, `{` / `}` | Moverse |
| `ctrl+u` / `ctrl+d`, `PageUp` / `PageDown` | Media página / página arriba-abajo |
| `/` / `?` | Buscar hacia adelante / atrás (`n` / `N` repetir) |
| `v` o `Espacio` | Empezar selección (`V` por líneas) |
| `y` o `Enter` | Copiar |
| `q` o `Esc` | Salir |

> Con prefijo `ctrl+b`, en modo copia `ctrl+b` **no** sube página (activa el prefijo); usa `ctrl+u` o `PageUp`.
> Arrastrar con el mouse copia sin entrar a modo copia.

---

## Diferencias con los atajos por defecto de herdr

Esta config **reemplaza** algunos atajos por defecto:

| Por defecto | Ahora |
|---|---|
| `prefix+q` detach | `prefix+d` |
| `prefix+r` modo redimensionar | `prefix+shift+r` (`prefix+r` recarga la config) |
| `prefix+g` goto | `prefix+u` (`prefix+g` abre lazygit) |
| `prefix+shift+h/j/k/l` intercambiar paneles | redimensionar panel |
| `prefix+shift+t` renombrar pestaña | `prefix+,` |
| `prefix+shift+x` cerrar pestaña | `prefix+&` |

> Si dentro de herdr abres tmux, `ctrl+b` lo captura herdr, no tmux.
