# 🛠️ Bash Script Collection

This repository contains a set of intermediate Bash scripts for common administrative tasks such as user management and file backups. Each script is self-contained, with clear prompts and error handling for safe use on Linux systems.

---

## 📁 Scripts Included

### 1. `user_management.sh`
An interactive terminal menu for managing users.

**Features:**
- Add a new user with `sudo useradd`
- Delete an existing user and their home directory
- Simple text-based interface

**Usage:**
```bash
chmod +x interactive_user_menu.sh
sudo ./interactive_user_menu.sh
