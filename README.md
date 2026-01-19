# 🚀 X86/64 Assembly Program – Accept & Display 64-bit Hexadecimal Numbers
## 📌 Project Title
**X86/64 ALP to Accept Five 64-bit Hexadecimal Numbers and Display Them**
---
## 📝 Overview
This project demonstrates a **64-bit Assembly Language Program (ALP)** using **NASM syntax** on a **Linux (x86_64)** platform.
The program accepts **five 64-bit hexadecimal numbers** from the user, stores them in an array, and displays the entered values using **Linux system calls**.
---
## 🎯 Aim
To develop an X86/64 assembly language program that:
* Accepts **five 64-bit hexadecimal numbers**
* Stores them in an **array**
* Displays the stored numbers on the screen
---
## ⚙️ Features
✔ Uses Linux **system calls** (`read`, `write`, `exit`)
✔ Implements **array handling** in assembly
✔ Demonstrates **looping and counter logic**
✔ Written in **NASM (Netwide Assembler)** syntax
✔ Suitable for **educational and practical lab use**
---
## 🧠 Program Logic
1. Display a prompt asking the user to enter five numbers
2. Read each number (17 bytes per input) and store it in an array
3. Repeat until all five numbers are stored
4. Display a message before output
5. Print all stored numbers sequentially
6. Exit the program gracefully
---
## 🛠️ System Calls Used
| System Call | RAX Value | Purpose                  |
| ----------- | --------- | ------------------------ |
| `read`      | 0         | Accept input from user   |
| `write`     | 1         | Display output on screen |
| `exit`      | 60        | Terminate program        |
---
## 🧾 Registers Used
* **RAX** – Holds system call number
* **RDI** – File descriptor
* **RSI** – Address of data buffer
* **RDX** – Number of bytes to read/write
* **RBX** – Offset for array indexing
---
## 📤 Sample Output
```
Enter 5 64-bit numbers
1
A
6
2
F

Entered 5 64-bit numbers are:
1
A
6
2
```

---

## 🧪 How to Assemble & Run

```bash
nasm -f elf64 program.asm
ld program.o -o program
./program
```

---

## ✅ Conclusion

This project provides hands-on experience with **64-bit assembly programming**, focusing on **input/output operations**, **array storage**, and **loop control** using Linux system calls. It is a strong foundation for understanding **low-level programming** on x86_64 architecture.

---

⭐ *If you found this project helpful, feel free to star the repository!*
