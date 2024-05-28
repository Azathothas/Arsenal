- #### [**`DAGU`**](https://github.com/dagu-dev/dagu)
> - Config: https://dagu.readthedocs.io/en/latest/config.html
> - Dags: `$HOME/.dagu/dags`
```bash
#User Context for Systemd
export DAGU_USER="$(whoami)"
#HOME Dir of Current $USER
export DAGU_HOME="$(getent passwd $DAGU_USER | cut -d: -f6)" ; mkdir -p "$DAGU_HOME/.dagu"
#IP Address [Manually specify TS IP if (Usermode)]
export DAGU_HOST="$(ip addr show tailscale0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}' || sudo tailscale ip -4 2>/dev/null | tr -d '\n' | tr -d '[:space:]')"
#To listen on all interfaces: export DAGU_HOST="0.0.0.0"
#export DAGU_HOST="127.0.0.1"
#PORT for WEBUI/API
export DAGU_PORT="8080"
#AUTH for webui/api
DAGU_BASICAUTH_USERNAME="$SECURE_USERNAME"
DAGU_BASICAUTH_PASSWORD="$SECURE_PASSWORD"
```
---
- #### SystemD
```bash
##--Systemd--##
sudo curl -qfsSL "https://bin.ajam.dev/$(uname -m)/dagu" -o "/usr/bin/dagu" && sudo chmod +x "/usr/bin/dagu"
sudo mkdir -p "/etc/systemd/system/" && sudo touch "/etc/systemd/system/dagu_ts.service"
cat << EOF | sed -e "s|DG_USER|$DAGU_USER|" -e "s|DG_HOME|$DAGU_HOME|" -e "s|DG_HOST|$DAGU_HOST|" -e "s|DG_PORT|$DAGU_PORT|" -e "s|DG_SUSER|$DAGU_BASICAUTH_USERNAME|" -e "s|DG_SPASSWD|$DAGU_BASICAUTH_PASSWORD|" | sudo tee "/etc/systemd/system/dagu_ts.service"
[Unit]
Description=Dagu Job Scheduler
Wants=network-online.target
Requires=tailscaled.service
After=network-online.target network.target tailscaled.service

[Service]
Type=simple
User=DG_USER
Environment="DAGU_HOME=DG_HOME/.dagu"
Environment="DAGU_HOST=DG_HOST"
Environment="DAGU_PORT=DG_PORT"
Environment="DAGU_IS_BASICAUTH=1"
Environment="DAGU_BASICAUTH_USERNAME=DG_SUSER"
Environment="DAGU_BASICAUTH_PASSWORD=DG_SPASSWD"
ExecStartPre=/bin/mkdir -p DG_HOME/.dagu/syslog
ExecStartPre=/bin/sleep 10
ExecStart=/usr/bin/dagu start-all
StandardOutput=DG_HOME/.dagu/syslog/dagu_ts.log
StandardError=DG_HOME/.dagu/syslog/dagu_ts.log
Restart=always
KillMode=process

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable "dagu_ts.service" --now
#If Unit tailscaled.service not found: 
# sudo sed -i -e '/Requires=/d' -e 's/tailscaled.service//g' "/etc/systemd/system/dagu_ts.service"
# sudo systemctl daemon-reload
# sudo systemctl enable "dagu_ts.service" --now
sudo systemctl restart "dagu_ts.service"
sudo systemctl status "dagu_ts.service"
journalctl -xeu "dagu_ts.service"
```
---
- #### Tmux
```bash
#Run in a tmux-no-hop session
 pgrep --full dagu | xargs kill -9 2>/dev/null
 tmux kill-session -t "dagu" 2>/dev/null
 tmux new-session -s "dagu"
 mkdir -p "$HOME/.logs"
 export "DAGU_IS_BASICAUTH=1"
 nohup dagu start-all > "$HOME/.logs/dagu.log" 2>&1 &
 #nohup dagu start-all >/dev/null 2>&1 &
 tmux detach-client
 # [ctrl + b] + d to detach
 # To kill (From a dettached Terminal): pgrep --full tmux | xargs kill -9
#Attach
 tmux attach-session -t "dagu"
```
