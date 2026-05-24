# passwords.kdbx
[Link to my password manager file](https://drive.google.com/uc?export=download&id=1-zNzjqc1j21o1KiI1qEjbtADMaTq77Mr)

## setup.ps1
sets up my dev environment in a Windows Sandbox or clean install
Initial setup takes 40 mins currently.
Idempotent. Run again to update but only on machines that had tools installed by this scrit.

```
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force

irm "https://raw.githubusercontent.com/dashlers/passwords/refs/heads/main/setup.ps1" | iex
```

## get_secrets.(ps1|sh) SPACE_SEPARATED_LIST_OF_VARIABLES API_KEY
Sets environment variables from the password manager file.
Requires Will prompt for master password.

For Windows
```
irm "https://raw.githubusercontent.com/dashlers/passwords/refs/heads/main/get_secrets.ps1" | iex
```
For Debian-based Linux
```
curl -sL https://raw.githubusercontent.com/dashlers/passwords/refs/heads/main/get_secrets.sh | bash
```
