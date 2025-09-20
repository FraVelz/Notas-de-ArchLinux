**Flameshot** es una herramienta de captura de pantalla **muy popular en Linux**, especialmente porque combina **simplicidad** con **funciones avanzadas de edición** antes de guardar la imagen. Te resumo lo más importante:

---

### **1. Instalación en Arch Linux**

```bash
sudo pacman -S flameshot
```

---

### **2. Cómo usarlo**

* **Modo gráfico / interactivo**

```bash
flameshot gui
```

Esto abre un **selector de pantalla** donde puedes:

* Seleccionar un área específica.

* Dibujar flechas, cuadros, círculos.

* Añadir texto o números.

* Pixelar o resaltar zonas.

* Guardar la captura o copiarla al portapapeles.

* **Modo rápido / terminal**

```bash
flameshot full -p ~/Imágenes
```

* `full` → captura toda la pantalla.
* `-p` → define la ruta donde se guarda automáticamente.

---

### **3. Atajos de teclado recomendados**

Si quieres integrarlo con **Hyprland** o cualquier WM:

* `PrtSc` → `flameshot gui`
* `Shift + PrtSc` → seleccionar área específica
* También puedes configurar:

```bash
flameshot full -c
```

* Copia la captura completa al portapapeles en vez de guardarla.

---

### **4. Ventajas de Flameshot**

* Permite **editar la captura antes de guardarla** (flechas, cuadros, textos).
* Funciona bien en **Wayland** con algunas configuraciones extra.
* Se puede usar **desde la terminal o con atajos de teclado**.
* Muy flexible y personalizable (colores, grosor de líneas, atajos).

---

Si quieres, puedo hacerte un **mini tutorial paso a paso con atajos y trucos** para que captures y edites pantallas en **Hyprland** usando Flameshot como un profesional.

¿Quieres que haga eso?

