¡Sí! 🧠
Hay varias formas simples en Arch para **ver cuánto internet estás usando**, ya sea:

* 📡 **en todo el sistema**
* 🌐 **solo en Firefox**

---

## 🖥️ Ver consumo total del sistema (todas las apps)

### Opción rápida: `nethogs`

Muestra en tiempo real cuánto está usando cada proceso:

```bash
sudo pacman -S nethogs
sudo nethogs
```

* Ordena por uso de red.
* Puedes ver si Firefox está consumiendo mucho.

---

### Opción en la barra: `vnstat`

Registra cuánto has usado en total cada día/mes:

```bash
sudo pacman -S vnstat
sudo systemctl enable --now vnstat
vnstat -d   # uso diario
vnstat -m   # uso mensual
```

Así ves **cuántos MB o GB llevas gastados**.

---

## 🌐 Solo para Firefox

Firefox no tiene un contador integrado, pero puedes:

### 🧩 Usar una extensión

Instala alguna como:

* 📦 **Net Usage Add-on**
* 📦 **Bandwidth Monitor**
* 📦 **Data Usage Monitor**

Estas te muestran cuánto tráfico ha hecho solo Firefox.

*(Ve a `about:addons` → buscar)*

---

## 📌 Tip

Si quieres algo **súper sencillo sin instalar extensiones**, lo más práctico es:

```bash
nethogs
```

Así ves en tiempo real si Firefox está gastando internet y cuánto.

---

Si quieres, puedo darte un **widget en Waybar que muestre los MB/GB usados en tiempo real.**
¿Quieres que lo haga?

