# Bukkit Installation Procedures for Ubuntu/Debian
---

> [!CAUTION]
> In case you get an error with your java version, all you need to do is to uninstall the java versions available on your server, with skript it will install the required java version when setting up the server.

### 🔖 Available Versions:

| Bukkit | Bukkit | 
| -------- | -------- |
| 1.21.5  |  1.16.5  |
| 1.21.4  |
| 1.21.3  |
| 1.21.1  |

---

### Step 1:

**We download the script that will do the installation for us using the following command.** <br>

```
sudo apt install python3 -y
```

```
sudo wget https://get.elewon.net/minecraft/bukkit/minecraft-bukkit.py
```

---

### Step 2:

**We install the incoming python3 script using the following command.**

```
sudo chmod +x minecraft-bukkit.py
```

```
sudo python3 minecraft-bukkit.py
```

---

### Step 3:

**We type the id of the version we want through the terminal.**

---

### Step 4:

---

**<blockquote>cd Bukkit-X.XX.X</blockquote> We open the installed folder with the command and start our server using this command. <blockquote>./start-X.XX.X.sh</blockquote>**

**<blockquote>It will ask us to accept the “Eula”, to accept it, just restart this command. ./start-X.XX.X.sh</blockquote>**
