# Script para limpiar la cach� de Git y aplicar el nuevo .gitignore
# Ejecutar este script en PowerShell para que Git reconozca los cambios en el .gitignore

Write-Host "?? Limpiando cach� de Git..." -ForegroundColor Yellow

# Elimina los archivos del �ndice de Git (no borra los archivos f�sicamente)
git rm -r --cached . 2>$null

Write-Host "? Cach� limpiada" -ForegroundColor Green

# A�ade todos los archivos de nuevo, respetando el nuevo .gitignore
Write-Host "?? Aplicando nuevo .gitignore..." -ForegroundColor Yellow
git add .

Write-Host "? Nuevo .gitignore aplicado" -ForegroundColor Green

# Muestra el estado para verificar qu� archivos ser�n incluidos
Write-Host "?? Estado actual:" -ForegroundColor Cyan
git status --short

Write-Host ""
Write-Host "?? Archivos que YA NO aparecer�n en futuros commits:" -ForegroundColor Green
Write-Host "   � Carpetas bin/ y obj/"
Write-Host "   � Carpeta .vs/"
Write-Host "   � Archivos *.cache.json"
Write-Host "   � Archivos *.dll, *.exe, *.pdb"
Write-Host "   � Archivos de configuraci�n local"
Write-Host ""
Write-Host "? Solo aparecer�n archivos de c�digo fuente esenciales" -ForegroundColor Green
Write-Host ""
Write-Host "Para confirmar los cambios ejecuta:" -ForegroundColor White -BackgroundColor DarkBlue
Write-Host "git commit -m 'Aplicando nuevo .gitignore - solo archivos esenciales'" -ForegroundColor White -BackgroundColor DarkBlue