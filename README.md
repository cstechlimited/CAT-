# CAT

### A faster, smaller, dependency-free `cat`.

**CAT** is a high-performance replacement for the standard Linux `cat` command—built from the ground up for **speed, simplicity, and minimal dependencies**.

Written in **Sufi** and compiled to native assembly with **Sanne Karibo**, CAT delivers up to **~2.5× faster performance** than the default Linux `cat` in our benchmarked workloads, without relying on glibc or dynamic libraries.

Developed by **Sanne Karibo** (`github.com/sanneemmanuel`) under **CS-TECHNOLOGY**, CAT is a **property of CS-TECHNOLOGY — 2026**.

> **Do more with less.**

---

## ⚡ Why CAT?

* **~2.5× faster** in benchmarked workloads
* **No glibc dependency**
* **No dynamic libraries**
* **Native Linux executable**
* **Small and lightweight**
* **Open source**
* Written in **Sufi**
* Compiled to native assembly with **Sanne Karibo**

**Simple software. Minimal overhead. Native performance.**

---

## 📊 Performance

CAT is benchmarked against the default Linux `cat` using **Hyperfine**.

<!-- Place Hyperfine benchmark screenshot here -->

![CAT Hyperfine Benchmark](docs/hyperfine.png)

> Results may vary depending on hardware, filesystem, kernel, cache state, and workload.

---

## 📥 Installation

### Download the Binary

Download the prebuilt `cat` binary from the project's releases:

```bash
chmod +x cat
```

Optionally install it system-wide:

```bash
sudo cp cat /usr/local/bin/cat
```

### Build from Assembly

The generated assembly is included as `cat.S`.

```bash
gcc -nostdlib -static -o cat cat.S
chmod +x cat
```

CAT is designed to run without glibc or dynamically linked runtime libraries.

---

## ▶️ Usage

CAT keeps the interface you already know.

```bash
./cat filename
```

Multiple files:

```bash
./cat file1.txt file2.txt
```

Redirect output:

```bash
./cat file.txt > output.txt
```

Use it in a pipeline:

```bash
./cat file.txt | grep "hello"
```

> **If you know `cat`, you already know CAT.**

---

## 🔍 Source Code

CAT is completely open source.

**Original Sufi source:**

```text
cat.sufi
```

**Generated assembly:**

```text
cat.S
```

View the source:

```bash
less cat.sufi
```

View the generated assembly:

```bash
less cat.S
```

### From Source to Native Binary

```text
cat.sufi
   ↓
Sanne Karibo
   ↓
cat.S
   ↓
Native CAT
```

Every layer is open for inspection.

---

## 🧠 Built for Simplicity

CAT doesn't reinvent the interface. It refines the implementation.

The command stays familiar while the software underneath is stripped down to the essentials.

**Small. Native. Fast.**

---

## 🤝 Open Source

CAT is open-source software developed by **Sanne Karibo** under **CS-TECHNOLOGY** and released as a property of **CS-TECHNOLOGY**.

Contributions, optimizations, benchmarks, and improvements are welcome.

See `LICENSE` for licensing information.

---

# CAT

### The simplicity of `cat`.

### The performance of native code.

**Developed by Sanne Karibo**
**CS-TECHNOLOGY · 2026**

**© CS-TECHNOLOGY**
