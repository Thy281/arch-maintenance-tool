# System Maintenance Tool 🛠️

> **Status:** Stable / Estável  
> **Supported Systems:** Arch Linux • macOS • Windows

[Português](#português) | [English](#english)

---

# Português

## 📝 Descrição

O **System Maintenance Tool** reúne scripts Bash e PowerShell para automatizar tarefas de manutenção. Atualmente suporta **Arch Linux**, **macOS** e **Windows**, executando atualizações, limpeza do sistema e verificações de integridade para manter o ambiente atualizado e otimizado.

---

## 🚀 Funcionalidades

### 🐧 Arch Linux

- 📦 Atualização completa do sistema (`pacman`)
- 🧹 Limpeza do cache de pacotes
- 🗑️ Remoção de dependências órfãs
- ⚡ Limpeza de arquivos temporários
- 🔧 Otimização do banco de dados do Pacman

### 🍎 macOS

- 🍺 Atualização do Homebrew (`brew update`)
- 📦 Atualização dos pacotes instalados (`brew upgrade`)
- 🧹 Remoção de dependências não utilizadas (`brew autoremove`)
- 🗑️ Limpeza do cache (`brew cleanup`)
- 🩺 Diagnóstico do Homebrew (`brew doctor`)
- ⚙️ Listagem dos serviços (`brew services list`)

### 🪟 Windows

- 🔄 Verificação e instalação de atualizações do Windows (`PSWindowsUpdate`)
- 🧹 Limpeza dos arquivos temporários do usuário
- 🛠️ Limpeza de componentes antigos do Windows (`DISM`)
- 🗑️ Esvaziamento da Lixeira
- 🔍 Listagem de serviços automáticos parados para inspeção

---

## 📂 Estrutura

```
.
├── maintain_archlinux.sh
├── maintain_macos.sh
├── maintain_windows.sh
└── README.md
```

---

## 📋 Requisitos

### Arch Linux

- pacman
- sudo

### macOS

- Homebrew

Instalação do Homebrew:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Windows

- Windows 10 ou Windows 11
- PowerShell
- Permissões de administrador
- Módulo `PSWindowsUpdate` para atualizar o sistema

Instalação do módulo `PSWindowsUpdate`:

```powershell
Install-Module PSWindowsUpdate -Scope AllUsers
```

---

## ▶️ Como usar

Clone o repositório

```bash
git clone https://github.com/Thy281/arch-maintenance-tool.git
```

Entre na pasta

```bash
cd arch-maintenance-tool
```

Permita execução

```bash
chmod +x *.sh
```

### Executar no Arch Linux

```bash
./maintain_archlinux.sh
```

### Executar no macOS

```bash
./maintain_macos.sh
```

### Executar no Windows

Abra o PowerShell como administrador e execute:

```powershell
powershell.exe -ExecutionPolicy Bypass -File .\maintain_windows.sh
```

---

## 🔄 Fluxo de execução

### Arch Linux

```
Pacman Update
      ↓
System Upgrade
      ↓
Cache Cleanup
      ↓
Orphan Removal
      ↓
Database Optimization
```

### macOS

```
brew update
      ↓
brew upgrade
      ↓
brew autoremove
      ↓
brew cleanup
      ↓
brew doctor
      ↓
brew services list
```

---

## 🎯 Objetivo

Este projeto foi criado para simplificar a manutenção de diferentes sistemas operacionais, automatizando tarefas repetitivas de atualização, limpeza e verificação do ambiente através de scripts Bash e PowerShell.

---

# English

## 📝 Description

**System Maintenance Tool** combines Bash and PowerShell scripts to simplify routine system maintenance. It currently supports **Arch Linux**, **macOS** and **Windows**, performing updates, cleanup and health checks to keep systems optimized.

---

## 🚀 Features

### 🐧 Arch Linux

- Full system update
- Package cache cleanup
- Orphan package removal
- Temporary files cleanup
- Pacman database optimization

### 🍎 macOS

- Homebrew update
- Package upgrades
- Remove unused dependencies
- Homebrew cache cleanup
- Homebrew diagnostics
- Homebrew services inspection

### 🪟 Windows

- Check and install Windows updates (`PSWindowsUpdate`)
- Clean user temporary files
- Clean old Windows components (`DISM`)
- Empty the Recycle Bin
- List stopped automatic services for inspection

---

## 📋 Requirements

### Arch Linux

- pacman

### macOS

- Homebrew

### Windows

- Windows 10 or Windows 11
- PowerShell
- Administrator privileges
- `PSWindowsUpdate` module for system updates

Install the `PSWindowsUpdate` module:

```powershell
Install-Module PSWindowsUpdate -Scope AllUsers
```

---

## ▶️ Usage

```bash
git clone https://github.com/Thy281/arch-maintenance-tool.git
cd arch-maintenance-tool
chmod +x *.sh
```

Run on Arch:

```bash
./maintain_archlinux.sh
```

Run on macOS:

```bash
./maintain_macos.sh
```

Run on Windows in PowerShell as Administrator:

```powershell
powershell.exe -ExecutionPolicy Bypass -File .\maintain_windows.sh
```

---

## 👨‍💻 Author

**Hugo Quesada**

- ☕ Java Backend Developer
- 🔐 Cybersecurity Enthusiast
- 🐧 Linux • 🍎 macOS • 🐳 Docker
- 🇧🇷 Brazil
