# Keymaps — config de Neovim (basada en craftzdog)

> `<leader>` = **Espacio**
> Fuente de cada atajo: `lua/craftzdog/config/keymaps.lua` y `lua/craftzdog/plugins/keymaps.lua`

---

## Buscar y navegar (Snacks picker)

| Atajo | Acción |
|---|---|
| `;f` | Buscar archivos (incluye ocultos) |
| `;r` | Buscar texto en el proyecto (grep) |
| `\\` | Lista de buffers (si ya está visible, salta a esa ventana) |
| `;;` | Reabrir la última búsqueda |
| `;e` | Diagnósticos (errores/warnings) |
| `;n` | Historial de notificaciones |
| `;c` | LSP: quién llama a esta función (incoming calls) |
| `;h` | Cambios de git (hunks) |
| `;g` | Lazygit |

**Dentro del picker:** escribe para filtrar · `Enter` abrir · `<C-j>`/`<C-k>` o flechas para moverte · `Esc` cerrar.

---

## Explorador de archivos (oil)

| Atajo | Acción |
|---|---|
| `sf` | Abrir oil flotante (con vista previa) |

**Dentro de oil** (se edita como texto; guarda con `:w` para aplicar):

| Atajo | Acción |
|---|---|
| `Enter` | Abrir archivo / entrar a carpeta |
| `h` o `-` | Ir a la carpeta padre |
| `q` / `<C-c>` | Cerrar |
| `<C-s>` / `<C-h>` / `<C-t>` | Abrir en split vertical / horizontal / pestaña |
| `<C-p>` | Vista previa |
| `g.` | Mostrar/ocultar archivos ocultos |
| `gs` | Cambiar orden |
| `gx` | Abrir con programa externo |
| `_` / `` ` `` | Ir al cwd / hacer `cd` a la carpeta |
| `g?` | Ayuda de oil |
| `dd` + `:w` | Borrar archivo |
| editar nombre + `:w` | Renombrar |
| nueva línea + `:w` | Crear archivo (termina en `/` para carpeta) |

---

## Ventanas y pestañas

| Atajo | Acción |
|---|---|
| `ss` | Split horizontal |
| `sv` | Split vertical |
| `sh` `sj` `sk` `sl` | Moverse a ventana ← ↓ ↑ → |
| `te` | Nueva pestaña |
| `Tab` / `Shift-Tab` | Pestaña siguiente / anterior |

---

## LSP / Código

| Atajo | Modo | Acción |
|---|---|---|
| `gd` | n | Ir a definición |
| `gD` | n | Ir a declaración |
| `gy` | n | Ir a definición del tipo |
| `gr` | n | Referencias |
| `gI` | n | Ir a implementación (TS: al código fuente real) |
| `K` | n | Documentación (hover) |
| `gK` | n | Firma de la función |
| `<C-k>` | i | Firma de la función (en inserción) |
| `<C-j>` | n | Siguiente diagnóstico (con popup) |
| `]]` / `[[` | n | Siguiente / anterior aparición de la palabra bajo el cursor |
| `<leader>ca` | n, v | Code actions (arreglos, imports…) |
| `<leader>cr` | n | Renombrar símbolo |
| `<leader>cR` | n | Renombrar archivo (actualiza imports) |
| `<leader>cl` | n | Info de los LSP activos |
| `<leader>f` | n, v | Formatear |
| `:ToggleFormatter` | — | Activar/desactivar formato al guardar en el buffer |

> Formatea automáticamente al guardar.

---

## Autocompletado (blink.cmp, preset `enter`)

| Atajo | Acción |
|---|---|
| `Enter` | Aceptar sugerencia |
| `<C-n>` / `<C-p>` o `↓` / `↑` | Siguiente / anterior sugerencia |
| `<C-Space>` | Abrir menú / documentación |
| `<C-e>` | Cerrar menú |
| `Tab` / `Shift-Tab` | Saltar entre campos de un snippet |
| `<C-b>` / `<C-f>` | Scroll en la documentación |

> Nota: la config define `["c-y"]` (le faltan los `< >`), así que `<C-y>` no hace nada.

---

## Git

| Atajo | Acción |
|---|---|
| `;g` | Lazygit |
| `;h` | Picker de cambios (hunks) |
| `<leader>gb` | Blame de la línea actual |
| `<leader>gB` | Blame de todo el buffer |
| `<leader>go` | Abrir el archivo tal como estaba en el commit de esa línea |
| `<leader>gh` | Stage del hunk actual |
| `<leader>gs` | Stage / unstage del archivo completo |
| `<leader>gd` | Mostrar/ocultar diff dentro del archivo (mini.diff) |
| `]c` / `[c` | Siguiente / anterior cambio |
| `<leader>dv` | Vista de diff (CodeDiff) |
| `<leader>dh` | Historial del archivo actual |
| `<leader>dH` | Historial del repo |
| `:GitLink` | Copiar link de GitHub de la línea/selección |

---

## Edición

| Atajo | Modo | Acción |
|---|---|---|
| `x` | n | Borrar carácter sin tocar el registro |
| `<leader>d` / `<leader>D` | n, v | Borrar sin tocar el registro |
| `<leader>c` / `<leader>C` | n, v | Cambiar sin tocar el registro |
| `<leader>p` / `<leader>P` | n, v | Pegar lo último **copiado** con `y` (registro 0) |
| `dw` | n | Borrar palabra **hacia atrás** |
| `+` / `-` | n | Incrementar / decrementar número |
| `<C-a>` | n | Seleccionar todo |
| `<leader>o` / `<leader>O` | n | Línea nueva abajo/arriba sin continuar comentarios |
| `<leader>yf` | n | Copiar ruta relativa + número de línea |
| `<leader>yp` | n | Copiar ruta absoluta + número de línea |
| `<leader>cc` | v | Copiar selección como bloque de código markdown |
| `<leader>j` | n | Abrir `package.json` en ventana flotante |
| `<leader>bd` | n | Cerrar buffers ocultos |
| `<C-m>` | n | Avanzar en el jumplist (como `<C-i>`) — ojo: en la terminal `Enter` = `<C-m>` |

> Los paréntesis, comillas y llaves se cierran solos (mini.pairs).
> Las etiquetas HTML/JSX se cierran solas al escribir `<div>`, y al renombrar una etiqueta (`<span>` → `<button>`) su par se renombra también (nvim-ts-autotag).

---

## Mover líneas

| Atajo | Modo | Acción |
|---|---|---|
| `Alt-j` / `Alt-k` | n, i | Bajar / subir la línea actual (acepta número: `3 Alt-j`) |
| `Alt-j` / `Alt-k` | v | Bajar / subir las líneas seleccionadas (y reindenta) |

**Alternativas nativas de Vim:**

| Comando | Modo | Acción |
|---|---|---|
| `:m +1` | n | Bajar la línea actual |
| `:m -2` | n | Subir la línea actual |
| `:m '>+1` luego `gv=gv` | v | Bajar las líneas seleccionadas (y reindentar) |
| `:m '<-2` luego `gv=gv` | v | Subir las líneas seleccionadas |
| `:m 0` / `:m $` | n | Mover la línea al inicio / final del archivo |
| `ddp` / `ddkP` | n | Truco rápido: bajar / subir una línea |
| `dd` … `p` | n | Cortar y pegar donde quieras (con `3dd` corta 3 líneas) |

---

## Útiles de Vim nativo

| Atajo | Acción |
|---|---|
| `za` / `zR` / `zM` | Abrir-cerrar fold / abrir todos / cerrar todos |
| `gcc` / `gc` (visual) | Comentar línea / selección |
| `<C-o>` / `<C-i>` | Atrás / adelante en el jumplist |
| `u` / `<C-r>` | Deshacer / rehacer (el undo persiste entre sesiones) |
| `.` | Repetir el último cambio |
| `ciw` / `ci"` / `ci(` | Cambiar palabra / dentro de comillas / dentro de paréntesis |
| `:checkhealth` | Diagnóstico de la config |
| `:Mason` | Ver/instalar LSPs y formatters |
