{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    lazygit
    atuin # shell history, local server on homelab
    git-ignore # Quickly and easily fetch .gitignore templates from gitignore.io
    pass-git-helper
    just
    xh # Friendly and fast tool for sending HTTP requests
    zellij
    progress
    noti
    ripgrep
    procs
    tealdeer #A very fast implementation of tldr in Rust
    aria A lightweight, multi-protocol, multi-source, command-line download utility
    sd # Intuitive find & replace CLI (sed alternative)
    duf # Disk Usage/Free Utility
    du-dust # du + rust = dust. Like du but more intuitive
    fd # A simple, fast and user-friendly alternative to find
    jq
    gh
    trash-cli
    zoxide # A fast cd command that learns your habits
    fzf
    bat
    mdcat # cat for markdown
    pandoc
    lsof # A tool to list open files
    gping # Ping, but with a graph
    viu # A command-line application to view images from the terminal written in Rust
    tre-command # Tree command, improved
    cava # Console-based Audio Visualizer for Alsa
  ];
}
