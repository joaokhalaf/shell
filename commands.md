# Command Sheet

- **Crontab** 

```bash
crontab -e   # Edit crontab
crontab -l   # List current crontab entries
crontab -r   # Remove all crontab entries
```

- format
```
| | | | | 
| | | | +-- day of the week (0–6, 0=Sunday)
| | | +---- month (1–12)
| | +------ day of the month (1–31)
| +-------- hour (0–23)
+---------- minute (0–59)
```

### Example — run a script every day at 3:30 AM
```bash
30 3 * * * /usr/local/bin/my_script.sh
```

## **Logs and Monitoring**

### View system log
```bash
less /var/log/syslog
```

### Follow system log in real-time
```bash
tail -f /var/log/syslog
```

### View authentication log (login, sudo, etc.)
```bash
sudo less /var/log/auth.log
```
