#!/bin/bash

# Dotfiles installation script
# Usage: ./install.sh

set -e

DOTFILES_DIR="$HOME/dotfiles"

echo "🔧 Installing dotfiles..."

# Check if Oh My Zsh is installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "⚠️  Oh My Zsh is not installed but required for the zsh configuration."
    echo "Would you like to install Oh My Zsh now? (y/n)"
    read -r response
    if [[ "$response" =~ ^[Yy]$ ]]; then
        echo "📥 Installing Oh My Zsh..."
        if sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended; then
            echo "✅ Oh My Zsh installed successfully!"
        else
            echo "❌ Failed to install Oh My Zsh. Please install it manually later."
            echo "Run: sh -c \"\$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)\""
        fi
    else
        echo "❌ Oh My Zsh installation skipped. The zsh configuration may not work properly."
        echo "You can install it later by running:"
        echo "sh -c \"\$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)\""
    fi
fi

# Backup existing files
backup_dir="$HOME/.dotfiles_backup_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$backup_dir"

echo "📁 Creating backup directory: $backup_dir"

# Function to backup and link
backup_and_link() {
    local source="$1"
    local target="$2"
    
    if [ -e "$target" ] && [ ! -L "$target" ]; then
        echo "Backing up existing $target"
        mv "$target" "$backup_dir/$(basename "$target")"
    fi
    
    echo "Linking $source -> $target"
    ln -sf "$source" "$target"
}

# Shell configurations
backup_and_link "$DOTFILES_DIR/shell/zshrc" "$HOME/.zshrc"
backup_and_link "$DOTFILES_DIR/shell/bashrc" "$HOME/.bashrc"

# Tmux configuration
backup_and_link "$DOTFILES_DIR/tmux/tmux.conf" "$HOME/.tmux.conf"

# Claude configuration
mkdir -p "$HOME/.claude"
backup_and_link "$DOTFILES_DIR/claude/CLAUDE.md" "$HOME/.claude/CLAUDE.md"
backup_and_link "$DOTFILES_DIR/claude/settings.json" "$HOME/.claude/settings.json"

echo "✅ Dotfiles installation completed!"
echo "📦 Backups stored in: $backup_dir"
echo "🔄 Please restart your shell or run 'source ~/.zshrc' to apply changes"