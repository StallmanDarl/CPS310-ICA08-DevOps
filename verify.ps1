# CPS 310 verification script scaffold
# Complete the TODO sections during ICA08.

Write-Host "Running project verification..."

# Run the complete pytest suite with verbose output.
pytest -v

Write-Host ""
Write-Host "Checking required files..."

# Check whether requirements.txt exists.
if (Test-Path "requirements.txt") {
    Write-Host "requirements.txt found."
}
else {
    Write-Host "ERROR: requirements.txt is missing."
}

# Check whether config.json exists.
if (Test-Path "config.json") {
    Write-Host "config.json found."
}
else {
    Write-Host "ERROR: config.json is missing."
}

Write-Host ""
Write-Host "Checking Git status..."

# Display compact Git status.
git status --short