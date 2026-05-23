# Dashley's Install Script
# Run this in a new Windows Sandbox or clean install to get a dev environment set up.
# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
# Invoke-RestMethod -Uri "https://raw.githubusercontent.com/dashlers/passwords/refs/heads/main/setup.ps1" | Invoke-Expression

$startTime = Get-Date

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force

# Install Scoop and stuff
if (-not (Get-Command scoop -ErrorAction SilentlyContinue)) {
  Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
  }

scoop install git nodejs-lts python

scoop bucket add extras

scoop install gcloud notepadplusplus firefox googlechrome keepassxc vcredist2022

scoop uninstall vcredist2022

reg import "$($(scoop prefix notepadplusplus))\install-context.reg"




$endTime = Get-Date


$elapsedTime = $endTime - $startTime
Write-Host "Total Execution Time: $($elapsedTime.TotalSeconds) seconds"
pause

# Get credentials

# & ($(scoop prefix keepassxc) + "\keepassxc-cli.exe")





# create gemini project


# npx @google/gemini-cli
