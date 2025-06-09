#!/usr/bin/env python3
import subprocess
import sys

def run_script(url):
    print(f"\n📥 The installation script is being downloaded and executed.: {url}\n")
    try:
        subprocess.run(
            ["bash", "-c", f"curl -fsSL {url} | bash"],
            check=True
        )
        print("\n✅ Installation successful!\n")
    except subprocess.CalledProcessError:
        print("\n❌ An error occurred during the installation!\n")

def main():
    games = {
        "1": ("1.21.5 (Bukkit)", "https://download.elewon.net/setup/bukkit/1.21.5/setup.sh"),
        "2": ("1.21.4 (Bukkit)", "https://download.elewon.net/setup/bukkit/1.21.4/setup.sh"),
        "3": ("1.21.3 (Bukkit)", "https://download.elewon.net/setup/bukkit/1.21.3/setup.sh"),
        "4": ("1.21.1 (Bukkit)", "https://download.elewon.net/setup/bukkit/1.21.1/setup.sh"),
        "5": ("1.16.5 (Bukkit)", "https://download.elewon.net/setup/bukkit/1.16.5/setup.sh"),
    }

    print("🎮 Minecraft Bukkit Server Setup – Please Select a Version\n")
    for key, (name, _) in games.items():
        print(f"{key}) {name}")
    print("q) Exit")

    choice = input("\nPlease enter the ID for the selected version: ").strip()

    if choice == 'q':
        print("Exiting...")
        sys.exit(0)

    if choice not in games:
        print("❌ Invalid choice! Please enter a valid option.")
        sys.exit(1)

    game_name, url = games[choice]
    print(f"\nSelected Version: {game_name}")

    run_script(url)

if __name__ == "__main__":
    main()
