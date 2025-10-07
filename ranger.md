Excelente pregunta 👌

El paquete **`ranger`** es un **administrador de archivos para la terminal** (CLI — Command Line Interface).
Es muy popular entre usuarios avanzados de Linux porque **permite navegar por tus carpetas y archivos sin necesidad de usar el ratón**, todo desde la terminal y de forma muy rápida.

---

### 📦 ¿Qué es exactamente Ranger?

👉 **Ranger** es un **file manager basado en texto**, escrito en **Python**, que muestra una interfaz **en modo consola** con un diseño de **paneles tipo árbol** (similar a Midnight Commander o a los exploradores gráficos como Nautilus o Dolphin, pero sin entorno gráfico).

---

### 🧭 Características principales

✅ **Interfaz en modo texto**, muy rápida.
✅ **Control 100% con el teclado** (usa atajos tipo Vim).
✅ **Muestra vistas previas** de archivos (texto, imágenes, PDFs, videos, etc.).
✅ **Permite abrir archivos con programas externos** (por ejemplo, imágenes con `feh`, videos con `mpv`, etc.).
✅ **Altamente configurable** (puedes editar sus atajos, temas, y scripts).
✅ **Navegación en múltiples paneles** para moverte fácilmente entre carpetas.

---

### 💻 Cómo se ve

Cuando lo abres con:

```bash
ranger
```

Verás algo así en la terminal:

```
~/
├── Documentos/
│   ├── trabajo.txt
│   ├── apuntes/
│   └── imagen.png
├── Descargas/
└── Música/
```

* El panel central muestra la carpeta actual.
* A la izquierda ves las carpetas superiores.
* A la derecha, vista previa o información del archivo seleccionado.

---

### ⌨️ Atajos de teclado básicos (al estilo Vim)

| Acción            |             Tecla |
| ----------------- | ----------------: |
| Subir / bajar     | ↑ / ↓ o `k` / `j` |
| Entrar en carpeta |           → o `l` |
| Volver atrás      |           ← o `h` |
| Eliminar archivo  |              `dd` |
| Copiar archivo    |              `yy` |
| Pegar archivo     |              `pp` |
| Abrir archivo     |           `Enter` |
| Salir             |               `q` |

---

### ⚙️ Ejemplo práctico de uso

Imagina que estás en tu carpeta personal:

```bash
cd ~
ranger
```

Dentro de `ranger` puedes:

* Navegar a `Descargas`,
* Seleccionar una imagen,
* Ver su vista previa,
* Y abrirla con `Enter` (usando tu visor predeterminado).

También puedes **mover, copiar, eliminar y renombrar archivos** fácilmente con solo unas teclas.

---

### 🧩 En resumen

| Característica   |                                            Ranger |
| ---------------- | ------------------------------------------------: |
| Tipo de programa |           Administrador de archivos para terminal |
| Interfaz         |                                       Texto (TUI) |
| Lenguaje         |                                            Python |
| Inspirado en     |                                               Vim |
| Ventajas         |      Rápido, ligero, configurable, sin usar ratón |
| Ideal para       | Usuarios que prefieren trabajar desde la terminal |

---

¿Quieres que te muestre cómo **personalizar Ranger** (por ejemplo, agregar vista previa de imágenes o cambiar atajos)?
Así podrías dejarlo como un **explorador de archivos visual dentro de la terminal**, muy al estilo “hacker” o power user.

Perfecto 🔥
Crear archivos en **Ranger** es muy fácil, pero como todo en la terminal, se hace con **comandos o atajos del teclado** dentro del mismo entorno.

Te explico las formas 👇

---

## 🧾 OPCIÓN 1: Crear archivo con el comando `:touch`

1. Abre Ranger desde la terminal:

   ```bash
   ranger
   ```

2. Dentro de Ranger, presiona **`:`** (dos puntos).
   👉 Esto abre la **línea de comandos** interna (igual que en Vim).

3. Escribe:

   ```bash
   :touch nombre_del_archivo.txt
   ```

4. Presiona **Enter** ✅
   → Se creará el archivo vacío en la carpeta actual.

Ejemplo:

```
:touch notas.txt
```

📄 Crea el archivo `notas.txt` en la carpeta actual.

---

## 📁 OPCIÓN 2: Crear carpeta con `:mkdir`

Si en lugar de un archivo quieres una carpeta:

```bash
:mkdir nueva_carpeta
```

Y presionas Enter ✅

---

## ⚡ OPCIÓN 3: Crear archivo directamente con un editor

También puedes crear y editar un archivo al mismo tiempo, por ejemplo:

1. Presiona `!` (signo de exclamación) para ejecutar un comando del sistema.
2. Escribe algo como:

   ```bash
   nano nuevo.txt
   ```

   o

   ```bash
   nvim nuevo.txt
   ```
3. Editas el archivo, guardas y al salir, **volverás a Ranger** con el archivo ya creado.

---

## 💡 EXTRA: Atajo útil

* Si presionas **`yy`** sobre un archivo y luego **`pp`**, lo copias y pegas.
* Puedes usar eso para duplicar y luego renombrar archivos.

---

### 🧠 En resumen

| Acción                   |     Comando / Atajo |                           Descripción |
| ------------------------ | ------------------: | ------------------------------------: |
| Crear archivo            | `:touch nombre.txt` |                 Crea un archivo vacío |
| Crear carpeta            |    `:mkdir carpeta` |                    Crea un directorio |
| Abrir editor             | `!nano archivo.txt` |                Crea y abre un archivo |
| Línea de comando interna |                 `:` | Permite ejecutar comandos como en Vim |

---

¿Quieres que te diga cómo agregar un **atajo de teclado personalizado** (por ejemplo, presionar una tecla para crear un archivo sin escribir `:touch`)?
Se puede hacer modificando el archivo de configuración de Ranger.

