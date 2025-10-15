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

## Curl

```
curl -s --head https://pudim.com.br/ | grep "HTTP/2 200"
```

## Commands system
 ```bash
df -h --total                                      # Disk usage with total
df -h | grep -v "snapfuse" | awk '$5+0 > 60%'      # Show partitions >60% usage
du -sh /home/khalaf                                # Directory size
free -h | grep Mem | awk '{print "Used RAM: "$3"/"$2}'   # Memory usage
top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print "CPU usage: " 100 - $1 "%"}'
```

# Systemd Units

```bash
systemctl state <script>
```

### Service

``` bash
[Unit]
Description=Descrição do serviço
Wants=network-online.target

[Service]
Type=simple
ExecStart=/usr/local/bin/script.sh
Restart=on-failure

[Install]
WantedBy=multi-user.target
```