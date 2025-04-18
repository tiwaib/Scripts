# 🧰 Linux User Management & Backup Scripts

This repository provides three helpful Bash scripts for basic system administration tasks on a Linux system. These scripts are designed to assist with user management and personal data backup.

## 📄 Overview of Scripts

### 1. `user_management.sh` – **Interactive User Management Menu**

This script provides a simple text-based menu that runs in a loop. It allows the administrator to:

- **Add a user** – Prompts for a username and adds it using `useradd -m`.
- **Delete a user** – Prompts for a username and deletes it using `userdel -r`.
- **Exit the program** – Gracefully ends the script.

**How it works:**

- Displays a menu with numbered options.
- Reads user input and performs the appropriate action.
- Loops continuously until the user chooses to exit.

**Use case:** Great for quickly managing users without typing full commands manually each time.

---

### 2. `user.sh` – **Secure User Creation Script**

This script provides a safer and more robust way to add a new user by including checks and password handling.

**Key features:**

- Ensures the script is run with root privileges.
- Checks if the user already exists before proceeding.
- Prompts for a password (hidden input) and confirmation.
- Confirms passwords match before creating the user.
- Sets the initial password and forces a password change on the user’s first login.

**How it works:**

1. Validates the script is being run as root.
2. Prompts for a new username and checks for duplicates.
3. Accepts password input silently using `read -s`.
4. If all checks pass, it:
   - Creates the user with a home directory.
   - Sets the user’s password securely using `chpasswd`.
   - Forces the user to reset their password on first login using `chage -d 0`.

**Use case:** Ideal for creating users with proper security measures on production systems.

---

### 3. `backup.sh` – **Simple Backup Script**

This script backs up the user's `~/Documents` folder into a compressed `.tar.gz` file inside a `~/Backups` directory.

**What it does:**

- Defines `SOURCE_DIR` as the `Documents` folder.
- Creates a `Backups` folder if it doesn't exist.
- Compresses and archives the contents of `Documents` with a date-based filename.
- Displays a success message when done.

**How it works:**

- Uses the `tar` command to create a compressed archive.
- Names the backup using the current date (e.g., `backup-2025-04-18.tar.gz`).
- Ensures the backup is organized in a separate folder for cleanliness.

**Use case:** Useful for quickly creating daily or manual backups of important documents.

---

## 🛠️ Setup & Execution

Make all scripts executable first:

```bash
chmod +x user_management.sh user.sh backup.sh
