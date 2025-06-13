🔍 WAF Log Parser to Excel (PowerShell)
This PowerShell script parses key-value log entries from WAF (Web Application Firewall) log files and exports structured data to an Excel spreadsheet using the ImportExcel module.

📁 Script Location
Export-WAFLogs.ps1

⚙️ Requirements
Windows PowerShell 5.1 or PowerShell 7+

ImportExcel module

Install the module if it's not already installed:

powershell
Copy
Edit
Install-Module -Name ImportExcel -Force -Scope CurrentUser
📜 How It Works
The script:

Parses each line containing key-value WAF log data.

Extracts fields such as Date, Time, SrcIP, DstIP, HTTPMethod, Action, and Message.

Exports the result to an Excel file.

🖥️ How to Use
Clone this repository or download the script:

bash
Copy
Edit
git clone https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
Open the script file and edit these two lines with your actual file paths:

powershell
Copy
Edit
$inputFile = "C:\Path\To\your\logfile.txt"
$outputFile = "C:\Path\To\output\waf_logs.xlsx"
Run the script in PowerShell:

powershell
Copy
Edit
.\Export-WAFLogs.ps1
The Excel file will be generated at the path specified in $outputFile.

📋 Sample Output (Excel Columns)
Date	Time	Src IP	Src Port	Src Country	Dst IP	Dst Port	Dst Country	HTTP Method	URL	Action	Message
2025-06-11	00:17:24	172.226.212.47	12555	United States	25.85.28.4	443	United Kingdom	GET	https://dexterindex.com/search/...	blocked	SQL Injection (Extended)

📂 License
MIT License
