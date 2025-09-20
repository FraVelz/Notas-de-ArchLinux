Ah, ya entiendo por qué te da error: en **Arch Linux** y derivados modernos, **Plymouth no tiene servicios separados `plymouth-boot.service` ni `plymouth-start.service`**. Esa guía suele venir de Ubuntu o sistemas basados en Systemd con Plymouth preconfigurado. En Arch se maneja diferente:

---

### 1️⃣ Habilitar Plymouth correctamente en Arch

En Arch, lo que necesitas es **incluir Plymouth en el initramfs** y asegurarte de que el bootloader lo cargue:

#### a) Instalar Plymouth y temas

```bash
sudo pacman -S plymouth
```

#### b) Elegir un tema

```bash
sudo plymouth-set-default-theme -R spinner
```

* `-R` reconstruye automáticamente el initramfs con el tema seleccionado.

#### c) Configurar el bootloader

Si usas **GRUB**, edita `/etc/default/grub`:

```bash
GRUB_CMDLINE_LINUX="quiet splash"
```

Luego reconstruye el grub:

```bash
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

* Si usas **systemd-boot**, debes agregar `quiet splash` a la línea `options` en tu loader.conf o entries.

#### d) Asegurarte de rebuild initramfs

```bash
sudo mkinitcpio -P
```

Esto aplica los cambios y hace que Plymouth se cargue al iniciar.

---

### 2️⃣ Probar Plymouth sin reiniciar

```bash
sudo plymouthd
sudo plymouth --show-splash
sudo plymouth quit
```

---

✅ Con esto **no necesitas habilitar servicios**: Arch usa el initramfs para lanzar Plymouth durante el arranque.

Si quieres, puedo darte un **paso a paso completo para tener un splash animado moderno en Arch + Hyprland**, con un ejemplo de tema que se vea bien.

¿Quieres que haga eso?

