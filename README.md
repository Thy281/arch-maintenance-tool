# Unix Maintenance Tool 🛠️

> **Status:** Stable / Estável  
> **Supported Systems:** Arch Linux • macOS

[Português](#português) | [English](#english)

---

# Português

## 📝 Descrição

O **Unix Maintenance Tool** é um script em Bash desenvolvido para automatizar tarefas de manutenção em sistemas Unix-like. Atualmente suporta **Arch Linux** e **macOS**, executando atualizações, limpeza do sistema e verificações de integridade para manter o ambiente sempre atualizado e otimizado.

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

---

## 📂 Estrutura

```
.
├── arch-maintenance.sh
├── macos-maintenance.sh
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

---

## ▶️ Como usar

Clone o repositório

```bash
git clone https://github.com/Thy281/unix-maintenance-tool.git
```

Entre na pasta

```bash
cd unix-maintenance-tool
```

Permita execução

```bash
chmod +x *.sh
```

### Executar no Arch Linux

```bash
./arch-maintenance.sh
```

### Executar no macOS

```bash
./macos-maintenance.sh
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

Este projeto foi criado para simplificar a manutenção de diferentes sistemas operacionais Unix, automatizando tarefas repetitivas de atualização, limpeza e verificação do ambiente através de scripts Bash.

---

# English

## 📝 Description

**Unix Maintenance Tool** is a Bash automation script designed to simplify routine maintenance on Unix-like operating systems. It currently supports **Arch Linux** and **macOS**, performing updates, cleanup and health checks to keep the system optimized.

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

---

## 📋 Requirements

### Arch Linux

- pacman

### macOS

- Homebrew

---

## ▶️ Usage

```bash
git clone https://github.com/Thy281/unix-maintenance-tool.git
cd unix-maintenance-tool
chmod +x *.sh
```

Run on Arch:

```bash
./arch-maintenance.sh
```

Run on macOS:

```bash
./macos-maintenance.sh
```

---

## 👨‍💻 Author

**Hugo Quesada**

- ☕ Java Backend Developer
- 🔐 Cybersecurity Enthusiast
- 🐧 Linux • 🍎 macOS • 🐳 Docker
- 🇧🇷 Brazil
