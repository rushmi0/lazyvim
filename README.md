# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

Make a backup of your current Neovim files:

# required

```bash
    mv ~/.config/nvim{,.bak}
    
    # optional but recommended
    mv ~/.local/share/nvim{,.bak}
    mv ~/.local/state/nvim{,.bak}
    mv ~/.cache/nvim{,.bak}
```

Clone the starter

```bash
  git clone https://github.com/rushmi0/lazyvim.git ~/.config/nvim
```

Remove the .git folder, so you can add it to your own repo later

```bash
  rm -rf ~/.config/nvim/.git
```

Start Neovim!

```bash
  nvim
```

# 📝 Vim Keymap Cheatsheet

## 🔁 การคัดลอก (Yank)

```vim
y        = yank (คัดลอก)
i        = in
w        = word (คำ)
y, i, w    = คัดลอกคำ
```

---

## ↩️ Undo / Redo

```vim
u           = undo
Ctrl, r    = redo
```

---

## 🚀 การเคลื่อนที่ / Terminal

```vim
Ctrl, <move>   = เคลื่อนที่ไปตำแหน่งต่าง ๆ
Ctrl, /        = เปิด terminal (ในบาง config)
```

---

## 📋 วางข้อความ (Paste)

```vim
p           = วางข้อความด้านหลัง cursor
Shift, p   = วางข้อความภายในวงเล็บ
```

---

## ❌ การลบข้อความ (Delete)

```vim
x             = ลบตัวอักษรตัวเดียว
d, w           = ลบคำข้างหน้า
d, e           = ลบถึงท้ายคำ
d, i, w         = ลบคำทั้งคำ
d, i, "         = ลบข้อความภายในเครื่องหมาย ""
d, i, { or }    = ลบข้อความภายในวงเล็บปีกกา
```

---

## 🛠️ คำสั่ง (Command Mode)

```vim
:e                     = render / โหลดไฟล์ปัจจุบันใหม่
:e to/path/filename    = เปิด/แก้ไขไฟล์ที่ระบุ path
```
