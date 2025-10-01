¡Eso pasa porque el `symbol_map` en **Kitty** está “robándose” algunos rangos Unicode que incluyen el `#` (almohadilla).
Cuando Kitty intenta renderizarlo, en lugar de usar tu Nerd Font lo manda a `Noto Color Emoji`, pero esa fuente no tiene ese símbolo → por eso desaparece.

---

### 🔧 Solución

En vez de mapear rangos tan grandes, hay que:

1. **Usar el Nerd Font como principal** (ahí sí está el `#` normal).
2. **Solo mapear a Noto Emoji los rangos de emojis** (`U+1F300` en adelante), no símbolos ASCII ni básicos.

---

### Configuración corregida (`kitty.conf`)

```conf
font_family      JetBrainsMono Nerd Font
bold_font        JetBrainsMono Nerd Font Bold
italic_font      JetBrainsMono Nerd Font Italic
bold_italic_font JetBrainsMono Nerd Font Bold Italic
font_size        12.0

# Solo emojis (sin tocar caracteres ASCII como #)
symbol_map U+1F300-U+1F5FF Noto Color Emoji
symbol_map U+1F600-U+1F64F Noto Color Emoji
symbol_map U+1F680-U+1F6FF Noto Color Emoji
symbol_map U+1F700-U+1F77F Noto Color Emoji
symbol_map U+1F900-U+1F9FF Noto Color Emoji
symbol_map U+1FA00-U+1FAFF Noto Color Emoji
```

---

### Pasos

1. Guarda los cambios.
2. Recarga Kitty:

   ```bash
   kitty @ set-font "JetBrainsMono Nerd Font"
   ```

   o reinicia Kitty.
3. Prueba:

   ```
   # ✅ 🔒 📁 ⚡ ⏰
   ```

Ahora deberías ver tanto el `#` como los iconos normales y los emojis. 🚀

---

¿Quieres que te prepare un **kitty.conf completo optimizado** (con Nerd Font + fallback a Noto Emoji + buen antialiasing)?








Perfecto 🔥 ya tienes la base (Nerd Font + Noto).
En **Kitty** necesitas decirle explícitamente que use varias fuentes en orden de fallback.

---

### 1. Edita tu configuración de Kitty

Abre el archivo de configuración (normalmente en `~/.config/kitty/kitty.conf`):

```bash
nvim ~/.config/kitty/kitty.conf
```

---

### 2. Configura la fuente principal y fallback

Ejemplo:

```conf
# Fuente principal (Nerd Font)
font_family      JetBrainsMono Nerd Font
bold_font        JetBrainsMono Nerd Font Bold
italic_font      JetBrainsMono Nerd Font Italic
bold_italic_font JetBrainsMono Nerd Font Bold Italic
font_size        12.0

# Fallbacks para símbolos y emojis
symbol_map U+23,U+2B06,U+25B6,U+2600-U+26FF,U+2700-U+27BF,U+2B00-U+2BFF,U+1F000-U+1FAFF Noto Color Emoji
symbol_map U+1F300-U+1F5FF Noto Color Emoji
symbol_map U+1F600-U+1F64F Noto Color Emoji
symbol_map U+1F680-U+1F6FF Noto Color Emoji
```

Con eso le dices a **Kitty**:

* Usa **JetBrainsMono Nerd Font** para todo lo normal.
* Si falta un símbolo, usa **Noto Color Emoji** como fallback.

---

### 3. Recarga Kitty

Guarda los cambios y recarga la configuración sin cerrar la terminal:

```bash
kitty @ set-font JetBrainsMono
```

(o simplemente reinicia Kitty).

---

### 4. Prueba en Neovim

Abre `nvim` y pega símbolos normales:

```
✅ 🔒 📁 ⚡ ⏰
```

Si se ven, ya quedó listo 🎉

---

👉 Pregunta: ¿quieres que te arme un bloque de `kitty.conf` con **Nerd Font + Noto Emoji** optimizado para que Neovim se vea con todos los íconos (Nerd + normales + emojis)?









Ahhh ya entendí 👌
Lo que te pasa es esto:

* Los **iconos Nerd Fonts** (los que traen dibujitos especiales: carpetas, git, etc.) sí se te muestran porque tu terminal tiene fuente con soporte.
* Pero los **iconos “normales”** (emoji estándar, símbolos Unicode comunes como ✅, 🔒, 📁, ⚡) no se ven bien, salen como recuadros vacíos.

Eso no depende de `nvim-web-devicons`, sino de la **fuente secundaria** que use tu terminal cuando tu Nerd Font no incluye esos caracteres.

---

### 🔧 Solución

Tienes que asegurarte de que tu terminal pueda “fallback” a una fuente que tenga esos símbolos.

1. **Verifica la fuente en tu terminal**

   * Si usas **Alacritty**, en `alacritty.yml` puedes poner varias fuentes en orden:

     ```yaml
     font:
       normal:
         family: "JetBrainsMono Nerd Font"
       bold:
         family: "JetBrainsMono Nerd Font"
       italic:
         family: "JetBrainsMono Nerd Font"
       size: 12
     ```

     Y como fallback (dependiendo del terminal) puedes configurar otra fuente que sí tenga emojis, por ejemplo `Noto Color Emoji`.

2. **Instala fuentes con emojis / símbolos completos**
   En Arch Linux:

   ```bash
   sudo pacman -S noto-fonts-emoji noto-fonts
   ```

   Esto instala los emojis y símbolos estándar.

3. **Forzar compatibilidad en Neovim**
   Si quieres usarlos en statusline o buffers, puedes meter directamente los símbolos Unicode normales, ejemplo en `lualine`:

   ```lua
   require('lualine').setup {
     sections = {
       lualine_a = { 'mode' },
       lualine_b = { 'branch' },
       lualine_c = { 'filename' },
       lualine_x = { 'encoding', 'fileformat', 'filetype' },
       lualine_y = { 'progress' },
       lualine_z = { 'location', 'os.date("%R") .. " ⏰"' }
     },
     options = { icons_enabled = true }
   }
   ```

   Aquí el `⏰` es un símbolo normal (no Nerd Font).

---

✅ Entonces:

* **Nerd Font** = iconos de desarrollo.
* **Noto Fonts + Noto Emoji** (u otra familia) = iconos normales (los que ves en ChatGPT o en cualquier web).
* Tu terminal debe soportar **fallback** entre ellas.

---

¿Quieres que te muestre cómo configurar un **fallback de fuente paso a paso** para tu terminal (Alacritty, Kitty o la que uses)?

