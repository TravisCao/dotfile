# Dotfiles

Personal configuration files for development environment.

## Contents

- **shell/**: Zsh and Bash configurations
- **tmux/**: Tmux configuration
- **claude/**: Claude Code settings and global instructions

## Installation

```bash
git clone https://github.com/TravisCao/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

## Manual Installation

If you prefer to set up manually:

```bash
# Shell configs
ln -sf ~/dotfiles/shell/zshrc ~/.zshrc
ln -sf ~/dotfiles/shell/bashrc ~/.bashrc

# Tmux config
ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

# Claude config
mkdir -p ~/.claude
ln -sf ~/dotfiles/claude/CLAUDE.md ~/.claude/CLAUDE.md
ln -sf ~/dotfiles/claude/settings.json ~/.claude/settings.json
```

## Backup

The install script automatically creates backups of existing files in `~/.dotfiles_backup_<timestamp>/`.