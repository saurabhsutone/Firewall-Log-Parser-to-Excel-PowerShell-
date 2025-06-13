# 🔍 WAF Log Parser to Excel (PowerShell)

This PowerShell script parses key-value WAF (Web Application Firewall) log entries and exports structured data to an Excel spreadsheet using the `ImportExcel` module.

---

## ⚙️ Requirements

- PowerShell 5.1 or PowerShell 7+
- [ImportExcel](https://github.com/dfinke/ImportExcel) module

### Install ImportExcel Module

```powershell
Install-Module -Name ImportExcel -Force -Scope CurrentUser
