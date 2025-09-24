Perfecto, vamos a hacer una **guía completa de wf-recorder**, desde instalación hasta uso avanzado en Hyprland/Wayland. Así tendrás todo lo que necesitas para grabar tu pantalla en Arch Linux.

---

## **1️⃣ wf-recorder: Todo lo que necesitas saber**

### **¿Qué es?**

* `wf-recorder` es un **grabador de pantalla para Wayland**, compatible con compositores basados en **wlroots** como **Hyprland, Sway, Wayfire**.
* Graba **pantalla completa, monitores específicos o regiones** y guarda en video (MP4, MKV, etc.).
* **No funciona en X11** (usa ffmpeg allí).

---

### **Instalación**

```bash
sudo pacman -S wf-recorder
```

* Requiere `ffmpeg` para guardar los videos en formato común:

```bash
sudo pacman -S ffmpeg
```

---

### **Comandos básicos**

1. **Grabar pantalla completa**

```bash
wf-recorder -f output.mp4
```

2. **Grabar un monitor específico**

* Lista los monitores:

```bash
wlr-randr
```

* Graba solo uno:

```bash
wf-recorder -m <nombre_monitor> -f output.mp4
```

3. **Grabar solo una región de la pantalla**

```bash
wf-recorder -g x,y,w,h -f output.mp4
```

* `x,y` = coordenadas de la esquina superior izquierda
* `w,h` = ancho y alto de la región

---

### **Opciones importantes**

| Opción                    | Descripción                                                         |
| ------------------------- | ------------------------------------------------------------------- |
| `-f <archivo>`            | Archivo de salida, obligatorio.                                     |
| `-m <monitor>`            | Captura un monitor específico.                                      |
| `-g <geometría>`          | Captura una región (x,y,ancho,alto).                                |
| `-c <codec>`              | Codec de video (por ejemplo: libx264).                              |
| `-r <fps>`                | Frames por segundo (default 30).                                    |
| `--no-audio`              | Ignorar audio. Por defecto captura audio del sistema si es posible. |
| `--audio-source <device>` | Selecciona la fuente de audio para grabar.                          |

---

### **Ejemplo avanzado**

Grabar pantalla completa a 60 FPS y audio del sistema:

```bash
wf-recorder -f output.mp4 -r 60 --audio-source alsa_output.pci-0000_00_1f.3.analog-stereo.monitor
```

* Para ver dispositivos de audio disponibles:

```bash
pactl list sources short
```

---

### **Pausar / Reanudar**

* **wf-recorder no tiene pausa nativa.**
* Solución práctica:

  1. Cerrar con `Ctrl+C` para detener.
  2. Grabar nuevamente en otro archivo.
  3. Unir con `ffmpeg`:

```bash
ffmpeg -f concat -safe 0 -i <(printf "file '%s'\n" parte1.mp4 parte2.mp4) -c copy final.mp4
```

---

### **Atajos útiles**

* Ctrl+C → Detener grabación.
* `wlr-randr` → Ver monitores conectados y sus nombres.
* `pactl list sources short` → Ver fuentes de audio disponibles.

---

### **Integración con OBS**

* Aunque no captura directamente como fuente en tiempo real, puedes:

  1. Grabar con wf-recorder en un archivo MP4.
  2. Usar **Media Source** en OBS para reproducirlo en tiempo real (funciona como “pantalla virtual”).

---

### **Ventajas de wf-recorder**

* Funciona en Wayland sin PipeWire.
* Ligero y rápido.
* Permite grabar regiones, monitores específicos y audio.
* Muy estable en compositores wlroots.

### **Limitaciones**

* No tiene pausa nativa.
* No captura pantalla en X11.
* La integración directa con OBS en vivo no es tan sencilla como PipeWire.

---

Si quieres, puedo hacerte un **mini-script completo listo para Hyprland** que:

* Grabe pantalla completa o monitor específico.
* Permita “pausar” grabando en partes y unir automáticamente.
* Guarde en MP4 con audio del sistema.

Esto dejaría wf-recorder **listo para usar como grabador profesional**.

¿Quieres que haga eso?

