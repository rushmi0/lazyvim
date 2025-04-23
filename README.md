# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).  
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## 🔐 Backup your current Neovim setup

```bash
    mv ~/.config/nvim{,.bak}
    
    # Optional but recommended
    mv ~/.local/share/nvim{,.bak}
    mv ~/.local/state/nvim{,.bak}
    mv ~/.cache/nvim{,.bak}
```

## 🚀 Install LazyVim Starter

```bash
  git clone https://github.com/rushmi0/lazyvim.git ~/.config/nvim
```

Remove the git folder so you can use your own repository:

```bash
  rm -rf ~/.config/nvim/.git
```

Launch Neovim:

```bash
  nvim
```

---

# 📝 Vim Keymap Cheatsheet

## 🚀 Movement

| Key            | Description                              | Mode |
|----------------|------------------------------------------|------|
| `j`            | Move down (line wrap aware)              | n    |
| `k`            | Move up (line wrap aware)                | n    |
| `H`            | Move to top visible line                 | n    |
| `L`            | Move to bottom visible line              | n    |
| `<Ctrl><Move>` | Change cursor position                   | n    |
| `<Ctrl>/`      | Open terminal                            | n    |
| `<leader>o`    | Add new line below (stay in normal mode) | n    |
| `<leader>O`    | Add new line above (stay in normal mode) | n    |

---

## 📋 Text Editing

| Key       | Description                        | Mode |
|-----------|------------------------------------|------|
| `<Alt>j`  | Move current/selected line(s) down | n/v  |
| `<Alt>k`  | Move current/selected line(s) up   | n/v  |
| `<Ctrl>c` | Toggle comment                     | n/v  |
| `y`       | Yank/Copy                          | n    |
| `yiw`     | Yank inner word                    | n    |
| `u`       | Undo                               | n    |
| `<Ctrl>r` | Redo                               | n    |
| `p`       | Paste after cursor                 | n/x  |
| `P`       | Paste before cursor                | n    |

---

## ❌ Delete

| Key   | Description                         | Mode |
|-------|-------------------------------------|------|
| `x`   | Delete character (no yank)          | n    |
| `dw`  | Delete word forward                 | n    |
| `de`  | Delete to end of word               | n    |
| `diw` | Delete inner word                   | n    |
| `di"` | Delete content inside double quotes | n    |
| `di{` | Delete content inside curly braces  | n    |
| `"_d` | Delete without yanking              | v    |

---

## 🧠 Smart Features

| Key         | Description               | Mode |
|-------------|---------------------------|------|
| `<Esc>`     | Clear search highlight    | n    |
| `<Ctrl>a`   | Select all                | n    |
| `+`         | Increment number          | n    |
| `-`         | Decrement number          | n    |
| `<leader>]` | Go to next diagnostic     | n    |
| `<leader>[` | Go to previous diagnostic | n    |
| `<leader>i` | Toggle LSP inlay hints    | n    |

---

## 🗂️ Tabs & Splits

| Key          | Description                 | Mode |
|--------------|-----------------------------|------|
| `te`         | Open new tab                | n    |
| `<Tab>`      | Next tab                    | n    |
| `<S-Tab>`    | Previous tab                | n    |
| `ss`         | Horizontal split            | n    |
| `sv`         | Vertical split              | n    |
| `<leader>cw` | Set working directory       | n    |
| `<leader>cW` | Set local working directory | n    |
| `<leader>x`  | Close window                | n/v  |

---

## 🛠️ Command Mode

To enter Command Mode, press `Shift + :` while in Normal mode.

| Command              | Description                          | Mode |
|----------------------|--------------------------------------|------|
| `:e`                 | Reload current file                  | c    |
| `:e path/to/file`    | Open file by path                    | c    |
| `:W`                 | Save with sudo/root permission       | c    |
| `:tabedit`           | Open file in new tab                 | c    |
| `:cd %:p:h`          | Change working directory to file dir | c    |
| `:lcd %:p:h`         | Set local working directory to file  | c    |
| `:colorscheme <Tab>` | Change themes                        | c    |

---

## 🐞 Debugging (DAP)

These key mappings use [nvim-dap](https://github.com/mfussenegger/nvim-dap) to debug your code:

| Key          | Action                           | Mode |
|--------------|----------------------------------|------|
| `<Leader>dl` | Step into                        | n    |
| `<Leader>dj` | Step over                        | n    |
| `<Leader>dk` | Step out                         | n    |
| `<Leader>dc` | Continue                         | n    |
| `<Leader>db` | Toggle breakpoint                | n    |
| `<Leader>dd` | Set conditional breakpoint       | n    |
| `<Leader>de` | Terminate debugging              | n    |
| `<Leader>dr` | Run last debug session           | n    |
| `<Leader>dt` | Rust testable (via rustaceanvim) | n    |

---

## 🗝️ Mode Abbreviations

| Abbr | Description      |
|------|------------------|
| `n`  | Normal           |
| `v`  | Visual           |
| `i`  | Insert           |
| `c`  | Command-line     |
| `o`  | Operator-pending |
| `m`  | Motion           |
| `x`  | Visual block     |

---