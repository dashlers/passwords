# passwords.kdbx
public mirror of my password manager file

# setup.ps1
sets up my dev environment in a Windows Sandbox or clean install

```
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
Invoke-RestMethod -Uri "https://raw.githubusercontent.com/dashlers/passwords/refs/heads/main/setup.ps1" | Invoke-Expression
```

# passwords_sync.sh
synchronizes passwords.kdbx from Google Drive (source of truth) into this repository (mirror)
