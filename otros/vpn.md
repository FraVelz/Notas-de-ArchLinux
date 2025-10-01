Perfecto 🚀 ProtonVPN funciona muy bien en Arch con **Hyprland**, aunque como no tienes un “NetworkManager GUI” típico (como en GNOME o KDE), lo más práctico es manejarlo por **terminal** o con un **applet en Waybar**.

Aquí te dejo paso a paso:

---

## 🔹 Instalación de ProtonVPN en Arch (CLI)

1. Asegúrate de tener OpenVPN:

   ```bash
   sudo pacman -S openvpn
   ```

2. Instala el cliente oficial desde AUR:
   (necesitas tener `yay` o `paru`)

   ```bash
   yay -S protonvpn-cli
   ```

3. Inicia sesión con tu cuenta de Proton:

   ```bash
   protonvpn-cli login TU_USUARIO
   ```

   👉 Usa el **nombre de usuario de ProtonVPN** (no el correo normal de ProtonMail).
   Lo encuentras en [tu panel de ProtonVPN](https://account.protonvpn.com/).

4. Conéctate al servidor más rápido:

   ```bash
   protonvpn-cli connect --fastest
   ```

   O a un país específico:

   ```bash
   protonvpn-cli connect --cc ES
   ```

   (por ejemplo `--cc US` para Estados Unidos, `--cc NL` para Países Bajos, etc.)

5. Para desconectarte:

   ```bash
   protonvpn-cli disconnect
   ```

---

## 🔹 Integración con Hyprland (opcional)

Si usas **Waybar** en Hyprland, puedes mostrar el estado del VPN:

* Edita tu `~/.config/waybar/config` y añade un módulo `"network"` o uno personalizado que ejecute `protonvpn-cli status`.
* Así ves si está conectado o no desde tu barra.

---

## 🔹 Extra útil

* Ver estado:

  ```bash
  protonvpn-cli status
  ```
* Conexión segura con kill-switch (para que no se filtre tu IP si se cae la VPN):

  ```bash
  protonvpn-cli ks --on
  ```

---

¿Quieres que te prepare un **script .sh** para que conectes y desconectes ProtonVPN con un solo clic (útil en Hyprland), o prefieres manejarlo solo desde terminal?









Es probable que el paquete `protonvpn-cli` haya sido renombrado, descontinuado o tenga dependencias rotas en el AUR. Pero sí hay versiones alternativas como `protonvpn-cli-community`. Aquí te dejo cómo instalarlo paso a paso y asegurar que funcione.

---

## ✅ Opción recomendada: instalar `protonvpn-cli-community`

Ese paquete parece ser la versión mantenida por la comunidad. ([AUR][1])

Haz lo siguiente:

1. Asegúrate de tener las herramientas de construcción y Git:

   ```bash
   sudo pacman -S --needed base-devel git
   ```

2. Instala `protonvpn-cli-community` con yay:

   ```bash
   yay -S protonvpn-cli-community
   ```

   Si no funciona directamente, puedes clonar el repositorio y construirlo manualmente:

   ```bash
   git clone https://aur.archlinux.org/protonvpn-cli-community.git
   cd protonvpn-cli-community
   makepkg -si
   ```

   ([PKV Games][2])

---

## ⚠️ Cosas a revisar si falla

* Que tengas Python3, pip y las dependencias necesarias (`dialog`, `openvpn`, etc.) instaladas. ([AUR][3])
* Que ya no tengas instaladas versiones antiguas que puedan chocar/confundir (ej: `protonvpn-cli-ng`). ([Manjaro Linux Forum][4])
* Verifica que tu sistema esté actualizado (`sudo pacman -Syu`) para evitar incompatibilidades con versiones de Python o bibliotecas.

---

## ⚙️ Alternativa manual: usar pip

Si ninguna de las versiones de AUR te funciona, puedes intentar instalarlo con pip (Python):

```bash
sudo pacman -S python-pip openvpn dialog python-setuptools
sudo pip3 install protonvpn-cli
```

Esto instala la versión Python directamente. ([GitHub][5])

---

¿Quieres que te guíe detalladamente con los comandos exactos para tu sistema (Hyprland/Arch) para que lo intentes conmigo y verifique si sale algún error específico?

[1]: https://aur.archlinux.org/packages/protonvpn-cli-community?utm_source=chatgpt.com "AUR (en) - protonvpn-cli-community"
[2]: https://linux-packages.com/aur/package/protonvpn-cli-community?utm_source=chatgpt.com "How to install and uninstall protonvpn-cli-community through AUR on Arch Linux 2025"
[3]: https://aur.archlinux.org/packages/protonvpn-cli-community-git?utm_source=chatgpt.com "AUR (en) - protonvpn-cli-community-git"
[4]: https://forum.manjaro.org/t/protonvpn-cli-ng-stopped-working/99166/12?utm_source=chatgpt.com "Protonvpn-cli-ng stopped working - #12 by linux-aarhus - AUR - Manjaro Linux Forum"
[5]: https://github.com/erydactyl/protonvpn-cli-community?utm_source=chatgpt.com "GitHub - erydactyl/protonvpn-cli-community: Linux command-line client for ProtonVPN. Written in Python."
