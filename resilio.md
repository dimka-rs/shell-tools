If you want to run Sync under a  current user you need to follow the next steps:

- stop the app first:
```
sudo service resilio-sync stop
```

- disable the rslsync user:
```
sudo systemctl disable resilio-sync
```

- enable sync service as current user:
 - edit file **/usr/lib/systemd/user/resilio-sync.service**
 - and change **"WantedBy=multi-user.target"** to **"WantedBy=default.target"**

- Then enable the service:
```
systemctl --user enable resilio-sync
```

- and run the app:
```
systemctl --user start resilio-sync
```

- Check the results via
```
ps aux | grep rslsyn
```

In case of systemctl error:
```
export XDG_RUNTIME_DIR=/run/user/`id -u`
sudo systemctl restart systemd-logind.service
```
