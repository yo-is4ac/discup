**Update Discord without waiting for Discord to update itself.**

I’ve been manually updating Discord for debian, which does not provide the fucking repository.  
so I made this.

---

## What it does
- Downloads the latest Discord version
- Updates Discord automatically
- Skips the launcher bullshit asking to download the debian package
  
---

## Requirements
- Debian
- Bash script (works with **bash**, **zsh**, or any compatible shell)
- Internet connection (Discord still has to come from somewhere)
  
---

## Usage
Make the script executable:

```bash
chmod +x discup.sh
# if you wanna add it in your bin and execute by a command
sudo ln -s /path/to/script.sh /usr/local/bin/discup
