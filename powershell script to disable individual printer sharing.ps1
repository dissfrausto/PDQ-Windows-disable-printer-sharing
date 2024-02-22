# disable sharing for all printers on the computer

$printers = Get-Printer

# find each printer and disable sharing
foreach ($printer in $printers) {
    # check if the printer is shared
    if ($printer.Shared) {
        # disable sharing for the printer
        $printer | Set-Printer -Shared $false
        Write-Host "Sharing disabled for printer $($printer.Name)"
    }
}
