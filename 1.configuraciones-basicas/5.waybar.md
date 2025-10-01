

Exacto, no es un “lenguaje” como tal. Waybar **usa JSON/JSONC para su configuración**, combinado con CSS para estilos. Te explico bien:

---

### 1️⃣ Configuración (`config` o `config.json`)

* Es **JSON estándar**, con la extensión `.json` o `.jsonc` (JSON con comentarios).
* Define **qué módulos usar, su posición y comportamiento**.
* Sintaxis JSON = pares clave-valor:

```json
{
  "modules-left": ["workspaces", "sway/mode"],
  "modules-right": ["network", "battery"]
}
```

* Si usas `.jsonc` puedes poner comentarios con `//` o `/* */` para explicar cosas.

---

### 2️⃣ Estilos (`style.css`)

* Es **CSS estándar**.
* Permite definir fuentes, colores, bordes, sombras, padding de los módulos:

```css
#clock {
  color: #ffffff;
  font-family: "FiraCode Nerd Font";
}

.bar {
  background-color: #1c1c1c;
  border-bottom: 1px solid #333;
}
```

---

### 3️⃣ Módulos y formatos

* Waybar tiene **módulos predefinidos** (`clock`, `battery`, `network`, etc.) y **módulos personalizados** (`custom/`).
* Los módulos se configuran en JSON con propiedades como:

  * `"format"` → cómo mostrar la salida.
  * `"exec"` → comando a ejecutar para módulos personalizados.
  * `"interval"` → frecuencia de actualización en segundos.
* Puedes usar **iconos de Nerd Fonts** dentro de `"format"`.

---

✅ **Resumen:**

* **No es un lenguaje nuevo**, sino **JSON para estructura + CSS para estilos**.
* Waybar lee estos archivos y renderiza la barra según lo que pongas.

---

Si quieres, puedo hacerte un **mini esquema visual de todos los módulos y su sintaxis JSON y CSS**, para que tengas un “mapa” completo de cómo escribir configs de Waybar.

¿Quieres que haga eso?




Perfecto 💪

Waybar es ideal para usar con Hyprland: es ligera, muy personalizable y 100 % compatible con Wayland.
Antes de empezar a modificarla, es útil que sepas **cómo se organiza su configuración** 👇

---

## 📁 Archivos principales de Waybar

Por defecto, se guardan en:

```
~/.config/waybar/
```

Y ahí tienes principalmente:

* **`config`** → define la **estructura y módulos** de la barra (qué aparece, en qué orden).
* **`style.css`** → define el **estilo visual** (colores, fuentes, tamaños, márgenes, etc).

Si no existen, puedes copiarlos desde los ejemplos predeterminados:

```bash
mkdir -p ~/.config/waybar
cp /etc/xdg/waybar/config ~/.config/waybar/
cp /etc/xdg/waybar/style.css ~/.config/waybar/
```

---

## ⚙️ Contenido básico del `config`

Ejemplo mínimo para que Waybar funcione:

```json
{
  "layer": "top",
  "position": "top",
  "modules-left": ["hyprland/workspaces"],
  "modules-center": ["clock"],
  "modules-right": ["pulseaudio", "network", "battery"],
  "clock": {
    "format": "{:%H:%M}"
  }
}
```

📝 Puedes añadir más módulos (CPU, RAM, temperatura, etc).
Cada módulo tiene sus propias opciones.

---

## 🎨 Estilo básico en `style.css`

```css
* {
  font-family: JetBrainsMono, monospace;
  font-size: 12px;
  color: #ffffff;
}

window#waybar {
  background: rgba(30, 30, 30, 0.8);
  border-bottom: 2px solid #5e81ac;
}

#clock {
  padding: 0 10px;
}
```

---

## ⚡ Recargar Waybar tras cambios

Cuando edites los archivos:

```bash
pkill waybar && waybar &
```

Así se reinicia sin cerrar la sesión.

---

Si quieres, puedo prepararte una **configuración bonita y moderna lista para copiar/pegar** para que solo tengas que editar tus colores y módulos.
¿Quieres que la haga?

