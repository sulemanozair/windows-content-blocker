# Content Blocker Pro

A professional Windows desktop application that blocks adult and unwanted websites at the OS level using the hosts file. Includes a custom password protection system and a user-friendly GUI.

## Features

✅ **OS-Level Blocking** — Blocks websites at the Windows hosts file level (cannot be bypassed by browser or VPN)  
✅ **Custom Password** — Users can set their own unlock password  
✅ **Keyword Filtering** — Automatically blocks URLs containing adult keywords  
✅ **Easy Installation** — Standard Windows installer (.exe)  
✅ **Administrator Protection** — Requires admin rights for blocking changes  
✅ **Customizable Blocklist** — JSON config file for easy domain/keyword management  

## How It Works

1. The app modifies Windows' hosts file to redirect blocked domains to localhost
2. Blocks DNS resolution at the OS level, preventing bypass via browsers or tools
3. User sets a custom password to enable/disable blocking
4. Keyword filter catches variations of blocked content

## Installation

### For End Users
1. Download `ContentBlockerPro_Installer.exe` from Releases
2. Run the installer (requires admin rights)
3. Follow the setup wizard
4. Launch from Start menu or desktop shortcut

### For Developers
```bash
git clone https://github.com/yourusername/ContentBlockerPro.git
cd ContentBlockerPro
# Extract the extras/ folder for source code and installer script
```

## Files Included

- **ContentBlockerPro_Installer.exe** — Windows installer package
- **blocked_domains.json** — Blocklist configuration (included automatically)
- **extras/** — Source code, icons, and Inno Setup script (for reference/modification)

## Configuration

Edit `blocked_domains.json` to customize:
- `blocked_domains` — List of websites to block
- `keywords_to_block` — Keywords that trigger blocking

Example:
```json
{
  "blocked_domains": [
    "example.com",
    "site.org"
  ],
  "keywords_to_block": [
    "adult",
    "xxx",
    "porn"
  ]
}
```

## Requirements

- Windows 10 or later
- Administrator privileges (to modify hosts file)
- No Python installation needed (standalone executable)

## System Requirements

- **OS:** Windows 10/11 (64-bit)
- **RAM:** 100 MB
- **Disk Space:** ~50 MB

## License

This project is provided as-is for personal use.

## Support

If you encounter issues:
1. Run the installer again with admin rights
2. Verify `blocked_domains.json` is in the app directory
3. Restart your computer after installation
4. Check Windows Firewall settings

## Building from Source

Requirements:
- Python 3.8+
- PyInstaller
- Inno Setup 6 (for installer)

```bash
# Build standalone EXE
pyinstaller --onefile --windowed --name "ContentBlockerPro" --icon "app_icon.ico" content_blocker_gui.py

# Build installer (Windows only)
iscc installer.iss
```

---

**Version:** 1.0  
**Last Updated:** September 2026  
**Author:** Suleman Ozair
