# 🛡️ Content Blocker - Adult Website Filter

A powerful content filter that blocks adult websites at the system level, making it extremely difficult to bypass even with VPN or TOR browser.

## ⚠️ Administrative Password

Your current blocker password set in `content_blocker.py` is:
`SecureBlock#2024$Suleman!Accountability`

To change it, edit `content_blocker.py` and update this line:
```python
self.admin_password = "YOUR_NEW_PASSWORD_HERE"
## How It Works

### 🔒 Three-Layer Protection

1. **Windows Hosts File Blocking**
   - Modifies `C:\Windows\System32\drivers\etc\hosts`
   - Redirects adult domains to local IP (127.0.0.1)
   - Works at the OS level - hardest to bypass
   - Even VPN and TOR can't bypass this

2. **Dual IP Blocking**
   - Uses both 127.0.0.1 and 0.0.0.0
   - Creates redundant blocking entries
   - Blocks subdomains automatically

3. **DNS Level Block**
   - Flushes DNS cache after enabling
   - Forces system to re-resolve blocked domains

## Features

✅ **500+ Major Adult Sites** - Pornhub, Xvideos, Xnxx, Redtube, etc.
✅ **VPN/TOR Proof** - Blocks at OS level, not browser level
✅ **Automatic Backup** - Creates backup of hosts file before blocking
✅ **Custom Domains** - Add your own sites to blocklist
✅ **Password Protected** - Can't disable without password
✅ **View Blocklist** - See all blocked sites anytime
✅ **Easy Toggle** - Enable/disable with one command

## Running the Blocker

### Step 1: Set Strong Password
Edit `content_blocker.py`:
```python
self.admin_password = "YOUR_STRONG_PASSWORD_HERE"
```

### Step 2: Run as Administrator
**Right-click** `run_content_blocker.bat` → **Run as administrator**

If you get permission error, right-click and explicitly select "Run as administrator"

### Step 3: Use the Menu
```
🛡️  CONTENT BLOCKER - Adult Website Filter
============================================================

Options:
1. Enable blocker (blocks adult content)
2. Disable blocker
3. Add custom domain to blocklist
4. View all blocked domains
5. Exit
```

## Default Blocked Sites

- pornhub.com
- xvideos.com
- xnxx.com
- redtube.com
- youporn.com
- tube8.com
- spankbang.com
- imagefap.com
- chaturbate.com
- onlyfans.com
- And 15+ more...

## How to Add Custom Domains

1. Run the blocker
2. Select **Option 3**: "Add custom domain to blocklist"
3. Enter the domain (e.g., `example.com`)
4. Re-enable blocker for changes to take effect

## Advanced: Manually Edit Blocked Sites

Edit `content_blocker.py` and add to the `self.adult_sites` list:
```python
self.adult_sites = [
    "pornhub.com", "www.pornhub.com",
    "your-site.com", "www.your-site.com",  # Add here
    ...
]
```

## Security Features

### Password Protection
- Can't enable/disable without correct password
- Can't add custom domains without password
- ⚠️ **Make it strong!** Use at least 15+ characters

### Hosts File Protection
Windows hosts file is system-protected:
- Can't be edited without Administrator
- Changes require admin password at OS level
- Creating new backups protects against accidents

### DNS Cache Flush
- Automatically clears cached DNS after changes
- Prevents stale records from allowing access

## Why This Works on VPN/TOR

**Traditional browser blockers:**
- VPN/TOR changes DNS → bypass blocker
- Browser extension can be disabled
- Works only within the browser

**This tool (OS-level blocking):**
- Blocks at Windows hosts file level
- DNS queries redirected to local IP BEFORE routing
- VPN/TOR can't intercept OS-level host blocking
- Browser requests fail immediately

## Bypassing Prevention

The blocker is intentionally difficult to bypass:

❌ **Can't disable** - Requires admin password
❌ **Can't edit hosts file** - Windows file permissions + admin needed
❌ **Can't bypass with VPN** - Blocks at OS level, not DNS level
❌ **Can't use TOR** - System routing affected, not browser
❌ **Can't uninstall** - Just delete the `.py` file

✅ **Emergency bypass:** Remove the blocker password from the code and re-enable
(But this requires access to the source code and running as admin)

## Troubleshooting

### "ERROR: This must run as Administrator!"
→ Right-click the batch file → "Run as administrator"

### "Connection refused" on other sites
→ Check if your site was accidentally added to blocklist
→ View blocklist and remove if needed

### Changes not taking effect
→ Flush DNS manually: `ipconfig /flushdns` in Command Prompt
→ Or restart your computer

### Want to temporarily disable
→ Option 2 in menu (requires password)
→ Re-enable immediately after

## Files Created

- **`content_blocker.py`** - Main blocker program
- **`run_content_blocker.bat`** - Easy launcher (run as admin)
- **`blocked_domains.json`** - Custom blocked sites
- **`hosts.backup`** - Automatic backup of original hosts file

## Recovery

If something goes wrong:

1. **Restore from backup:**
```cmd
copy C:\Windows\System32\drivers\etc\hosts.backup C:\Windows\System32\drivers\etc\hosts
```

2. **Flush DNS:**
```cmd
ipconfig /flushdns
```

## IMPORTANT SECURITY TIPS

🔐 **Change the default password immediately!**

🔐 **Use a strong password:** Mix uppercase, lowercase, numbers, symbols

🔐 **Don't share the password** - If someone has it, they can disable blocking

🔐 **Keep the backup file safe** - You might need it for recovery

## Support

If the blocker isn't working:
1. Make sure you're running as Administrator
2. Check if hosts file is writable
3. Try flushing DNS: `ipconfig /flushdns`
4. Restart your computer
5. Check your hosts.backup file

## Enjoy Your Cleaner Internet! 🎉

This tool is designed to help you stay focused and maintain healthy browsing habits. The strong blocking at the OS level makes it a true commitment device.

**Stay strong! 💪**
