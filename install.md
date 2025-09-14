# What is Arch Linux?

It is an operating system (OS) that is completely empty upon startup, containing only a console.

# What are the advantages of using Arch Linux?

Since it is an empty operating system, you can install tools to configure everything, the system environment, and give unique styles to Arch Linux systems.

# Who might be interested in using Arch Linux?

People who have and know how to use Linux environments and want to create their own customized environment (operating system) because they are tired of the traditional style of Linux systems.

Keep in mind that there are three ways to install a new operating system:

1. Install as a single system, deleting Windows (easy difficulty).

2. Install with dual boot, to have Windows and Arch Linux on the same PC (medium difficulty).

3. Install on a separate hard drive or USB drive. (Medium difficulty)

Bonus option: Install any way,
manually without using Arch Linux
(Hard difficulty)

Installing Arch Linux any way is difficult, but if you're going to try it, it's important to consider the risks.

# Installation Requirements

* Know how to use Linux.

* Have a PC and a USB flash drive.

# Installation (Easy Mode XD)

> Note: This is not a detailed installation manual, and there may be some variations in your computer or configurations. It is important that it be used as a guide and guidance. In each step, you should research exactly what works best for your device and the specific configurations you need. If you have never installed Arch Linux, it is best to try using it in a virtual machine to see what you are up against.

1. Install an Arch .iso file from the official Arch Linux website.

2. Download a boot program, the .iso file, and the USB flash drive, and boot them.

3. Reboot and enter the system BIOS. Set the USB flash drive as the first boot priority and exit.

4. A menu will appear. On a black screen, enter the first option, and you will enter a terminal.

5. Configure a Wi-Fi network by typing *iwctl*, then *station wlan0 connect NETWORK_NAME*. It will then ask for the network password. Enter it, type exit to exit iwctl mode, and test if you are connected or have a network with the command *ping -c 3 google.com*.

``` sh
iwctl
station wlan0 connect NETWORK_NAME
ping -c 3 google.com
```

5. Install Arch Linux (with *archinstall*). This allows and facilitates the configuration of basic tools, such as the keyboard layout, editors, code editors like nvim or nano, and tools for connecting to Wi-Fi networks (very important). Type archinstall and configure the corresponding settings.

``` sh 
archinstall
```


6. After completing the configurations in ArchInstall, it's essential that when you click Install, your PC has a stable, battery-powered Wi-Fi network. If the PC doesn't complete the download because it shuts down due to low battery or unstable internet connections, or other issues, your PC will be in critical condition. If this happens to you, you should know that the USB flash drive can still fix the PC.

7. Your Arch Linux is already installed, and if you didn't configure many things for your Arch Linux and only downloaded the essentials, such as network managers, during the installation, your Arch Linux should be a black screen with a terminal. With the network managers, you configure and connect your Wi-Fi network.

8. Now you can start building and customizing your own operating system. If you don't want so much headache, you can install a full desktop system, such as SDE or others. If you want and have a lot of free time, you can download a window driver environment like Hyprland, but learning how to configure it will take a long time. Using and downloading simple applications can cause unwanted behavior, and you'll have to be very patient to fix and learn everything.

## Alert

This was a simple guide, but the gist of it all is that when using the Arch Linux operating system, you'll have to investigate everything on your own and know what you're doing so you don't misconfigure your device and break it.

The more power you have to customize your computer, the greater the risk that an error could damage it.

