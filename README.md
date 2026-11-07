# CPS 310 Release Audit Project

## Project Description

This project is a Python-based support-ticket reporting program. It reads ticket information from a text file, processes the data, and displays a formatted summary.

The program reports:
- Total number of support tickets.
- Number of open tickets.
- Number of high-priority tickets.

Ticket information is stored in `tickets.txt`, while project settings are loaded from `config.json`. The program uses the `tabulate` library to display ticket information in a readable table.

The project also includes automated tests using `pytest` and a PowerShell verification script to check release readiness.

## Requirements

The following software is required:

- **Python 3.12 or newer** – Runs the application and automated tests.
- **Git** – Clones the repository and manages project changes.
- **Project dependencies** – Listed in `requirements.txt` and installed using pip.

## Setup Instructions

### 1. Clone the Repository

Open a terminal and clone the repository:

```bash
git clone <https://github.com/StallmanDarl/CPS310-ICA08-DevOps>
```

Navigate into the project directory:

```bash
cd <https://github.com/StallmanDarl/CPS310-ICA08-DevOps>
```

Replace the placeholders with the actual repository URL and folder name.

### 2. Create a Virtual Environment

Create a virtual environment named `.venv`:

```bash
python -m venv .venv
```

### 3. Activate the Virtual Environment

**Windows (PowerShell):**

```powershell
.\.venv\Scripts\Activate.ps1
```

**Windows (Command Prompt):**

```cmd
.venv\Scripts\activate.bat
```

**macOS / Linux:**

```bash
source .venv/bin/activate
```

Once activated, the terminal should display `(.venv)`.

### 4. Install Dependencies

Install all required project dependencies using:

```bash
python -m pip install -r requirements.txt
```

This installs the packages listed in `requirements.txt`, including the libraries needed to run the application and its tests.

## Configuration

Project settings are stored in `config.json`. This allows certain application settings to be changed without modifying the Python source code.

The configuration file contains the following settings:

| Setting | Description |
|---|---|
| `data_file` | Specifies the text file containing support-ticket information. |
| `report_title` | Sets the title displayed at the top of the report. |
| `high_priority_threshold` | Sets the minimum priority level required for a ticket to count as high priority. |

Example configuration:

```json
{
    "data_file": "tickets.txt",
    "report_title": "Support Ticket Summary",
    "high_priority_threshold": 4
}
```

The default priority threshold is `4`. Tickets with a priority equal to or greater than this value are counted as high priority.

## Running the Program

Make sure the virtual environment is activated and the dependencies are installed.

Run the application using:

```bash
python release_audit.py
```

The program reads the configuration file, loads the ticket data, and displays the formatted ticket table and summary counts.

## Running the Tests

The project uses `pytest` to run automated tests.

To execute the complete test suite:

```bash
python -m pytest -v
```

The `-v` option enables verbose output, displaying the individual test names and results.

The tests cover:
- Counting open tickets.
- Counting high-priority tickets using a specified threshold.
- Building ticket summaries.
- Loading valid ticket files.
- Handling missing ticket files.
- Reading JSON configuration files.

## Running Verification

The project includes a PowerShell verification script named `verify.ps1`.

The script:
1. Runs the complete pytest suite with verbose output.
2. Checks whether `requirements.txt` exists.
3. Checks whether `config.json` exists.
4. Displays the current Git status.

**Windows (PowerShell):**

```powershell
.\verify.ps1
```

**macOS / Linux (with PowerShell 7 or newer installed):**

```powershell
pwsh ./verify.ps1
```

Run the verification script from the project directory.

## Release-Readiness Statement

This project is more reproducible and release-ready than the original starter version because it uses a dedicated configuration file, documented dependencies, an isolated Python virtual environment, and automated tests. The verification script provides an additional check for required project files, test results, and Git status. These improvements make the project easier for other developers to set up, test, maintain, and run consistently across different environments.