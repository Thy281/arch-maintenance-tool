$ErrorActionPreference = 'Continue'

function Write-Section {
    param([string]$Title)
    Write-Host "`n$Title" -ForegroundColor Green
}

Write-Host 'Iniciando manutenção do Windows...' -ForegroundColor Yellow

Write-Section '1. Procurando atualizações do Windows...'
try {
    if (-not (Get-Module -ListAvailable -Name PSWindowsUpdate)) {
        Write-Host 'O módulo PSWindowsUpdate não está instalado.' -ForegroundColor Yellow
        Write-Host 'Para instalar, abra o PowerShell como administrador e execute:'
        Write-Host 'Install-Module PSWindowsUpdate -Scope AllUsers'
    }
    else {
        Import-Module PSWindowsUpdate -ErrorAction Stop
        Get-WindowsUpdate -AcceptAll -Install -IgnoreReboot
    }
}
catch {
    Write-Warning "Falha ao verificar ou instalar atualizações: $($_.Exception.Message)"
}

Write-Section '2. Limpando arquivos temporários do usuário...'
try {
    $userTemp = Join-Path $env:LOCALAPPDATA 'Temp'
    if (Test-Path $userTemp) {
        Get-ChildItem -LiteralPath $userTemp -Force -ErrorAction SilentlyContinue |
            Remove-Item -Recurse -Force -ErrorAction SilentlyContinue
        Write-Host 'Arquivos temporários removidos quando não estavam em uso.'
    }
}
catch {
    Write-Warning "Falha ao limpar arquivos temporários: $($_.Exception.Message)"
}

Write-Section '3. Limpando componentes antigos do Windows...'
try {
    $dism = Join-Path $env:SystemRoot 'System32\Dism.exe'
    if (Test-Path $dism) {
        Start-Process -FilePath $dism `
            -ArgumentList '/Online', '/Cleanup-Image', '/StartComponentCleanup' `
            -Wait -NoNewWindow
    }
}
catch {
    Write-Warning "Falha na limpeza de componentes: $($_.Exception.Message)"
}

Write-Section '4. Esvaziando a Lixeira...'
try {
    Clear-RecycleBin -Force -ErrorAction Stop
}
catch {
    Write-Host 'A Lixeira já está vazia ou não foi possível limpá-la.'
}

Write-Section '5. Verificando serviços automáticos parados...'
try {
    $stoppedServices = Get-Service | Where-Object {
        $_.Status -eq 'Stopped' -and $_.StartType -eq 'Automatic'
    }

    if ($stoppedServices) {
        $stoppedServices |
            Select-Object Name, DisplayName, Status |
            Format-Table -AutoSize

        Write-Host 'Os serviços foram listados para inspeção; nenhum foi iniciado automaticamente.' -ForegroundColor Yellow
    }
    else {
        Write-Host 'Nenhum serviço automático parado foi encontrado.'
    }
}
catch {
    Write-Warning "Falha ao consultar serviços: $($_.Exception.Message)"
}

Write-Host "`nManutenção concluída. Talvez seja necessário reiniciar o Windows para aplicar atualizações." -ForegroundColor Yellow
