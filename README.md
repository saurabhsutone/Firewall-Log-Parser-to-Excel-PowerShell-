
# 🔍 WAF Log Parser to Excel (PowerShell)

This PowerShell script parses key-value WAF (Web Application Firewall) log entries and exports structured data to an Excel spreadsheet using the `ImportExcel` module.

---

## ⚙️ Requirements

- PowerShell 5.1 or PowerShell 7+
- [ImportExcel](https://github.com/dfinke/ImportExcel) module

### Install ImportExcel Module

```powershell
Install-Module -Name ImportExcel -Force -Scope CurrentUser
```

---

## 📁 How It Works

- Reads WAF logs in `key=value` format (1 entry per line)
- Extracts fields like:
  - `Date`, `Time`
  - `SrcIP`, `DstIP`, `Ports`
  - `Method`, `Action`, `URL`, and `Message`
- Exports clean structured data to Excel

---

## 🛠️ How to Use

1. **Download or Clone**
   ```bash
   git clone https://github.com/your-username/waf-log-parser.git
   cd waf-log-parser
   ```

2. **Edit the script** to match your file paths:
   ```powershell
   $inputFile = "C:\Path\To\logfile.txt"
   $outputFile = "C:\Path\To\output\waf_logs.xlsx"
   ```

3. **Run the script**:
   ```powershell
   .\Export-WAFLogs.ps1
   ```

4. **Done!** Excel file will be saved at the location you specified.

---

## 📋 Sample Output (Excel Columns)

| Date       | Time     | Src IP       | Src Port | Src Country | Dst IP       | Dst Port | Dst Country | HTTP Method | URL                          | Action  | Message                  |
|------------|----------|--------------|----------|-------------|--------------|----------|-------------|--------------|-------------------------------|---------|---------------------------|
| 2025-06-11 | 00:17:24 | 192.0.2.10   | 12345    | Country-A   | 203.0.113.5  | 443      | Country-B   | GET          | https://example.com/search   | blocked | SQL Injection (Extended) |
| 2025-06-11 | 00:18:44 | 198.51.100.4 | 53211    | Country-C   | 203.0.113.77 | 80       | Country-D   | POST         | http://test-site.com/form    | blocked | Bad Robot                |

---

## 🧾 Sample Log Line

```
date=2025-06-11 time=00:17:24 srcip=192.0.2.10 srcport=12345 srccountry="Country-A" dstip=203.0.113.5 dstport=443 dstcountry="Country-B" httpmethod="GET" url="https://example.com/search" action=blocked msg="SQL Injection (Extended)"
```

---

## 📄 License

This project is licensed under the MIT License.

---

## 🙋‍♂️ Need Help?

Feel free to [open an issue](https://github.com/your-username/waf-log-parser/issues) for bugs or improvements.
