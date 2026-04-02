# 📚 Navigation Route Flutter — Book Reader App

Proyek Flutter untuk tugas mata kuliah **Pemrograman Perangkat Mobile** (Pertemuan 6).  
Aplikasi ini mengimplementasikan konsep **navigasi dan route** pada Flutter dengan fitur pembaca buku digital berbasis PDF.

---

## 🎯 Deskripsi Tugas

> **Lengkapi kode program yang ada pada contoh program navigasi dan route.**
> - Tambahkan jumlah buku pada halaman utama menjadi **10 buku**
> - Pada tombol **"Read the Book"** buatlah fungsi navigasi yang mengarah ke halaman baru dan membuka **FILE PDF** dari buku tersebut

---

## ✨ Fitur Aplikasi

- 📖 **Daftar 10 Buku** — Menampilkan 10 buku pemrograman berkualitas tinggi yang bersumber dari internet
- 🔍 **Halaman Detail Buku** — Menampilkan judul, penulis, dan sinopsis tiap buku
- 📄 **PDF Viewer** — Membuka dan membaca file PDF buku langsung di dalam aplikasi menggunakan `syncfusion_flutter_pdfviewer`
- 🧭 **Navigasi Multi-Halaman** — Navigasi bertingkat: Daftar → Detail → Baca PDF
- 🎨 **UI Modern & Profesional** — Tampilan bersih dengan tema warna gelap profesional

---

## 📂 Struktur Direktori

```
lib/
├── main.dart                   # Entry point aplikasi & konfigurasi tema
├── models/
│   └── book.dart               # Model data buku (title, author, description, pdfUrl)
├── data/
│   └── books_data.dart         # Dataset 10 buku dengan URL PDF resmi
└── screens/
    ├── book_list_screen.dart    # Halaman 1: Daftar semua buku
    ├── book_detail_screen.dart  # Halaman 2: Detail & sinopsis buku
    └── reading_book_screen.dart # Halaman 3: Pembaca PDF online
```

---

## 📚 Daftar 10 Buku

| No | Judul | Penulis | Sumber PDF |
|----|-------|---------|------------|
| 1 | Python for Everybody | Charles R. Severance | py4e.com |
| 2 | Dive into Deep Learning | Aston Zhang, et al. | d2l.ai |
| 3 | Open Data Structures (C++) | Pat Morin | opendatastructures.org |
| 4 | Pro Git | Scott Chacon & Ben Straub | Springer |
| 5 | Eloquent JavaScript | Marijn Haverbeke | eloquentjavascript.net |
| 6 | Think Python | Allen B. Downey | greenteapress.com |
| 7 | Structure & Interpretation of Computer Programs | Abelson & Sussman | MIT |
| 8 | Programming Languages: App. and Interpretation | Shriram Krishnamurthi | Brown University |
| 9 | Deep Learning | Goodfellow, Bengio, Courville | deeplearningbook.org |
| 10 | Operating Systems: Three Easy Pieces | Arpaci-Dusseau | UW-Madison |

---

## 🛠️ Teknologi & Dependensi

- **Flutter SDK** — Framework utama pengembangan aplikasi mobile
- **Dart** — Bahasa pemrograman
- [`syncfusion_flutter_pdfviewer`](https://pub.dev/packages/syncfusion_flutter_pdfviewer) — Untuk menampilkan PDF dari URL

---

## 🚀 Cara Menjalankan

1. **Clone repository ini**
   ```bash
   git clone https://github.com/Aditya150417/navigation_route_flutter.git
   cd navigation_route_flutter
   ```

2. **Install dependensi**
   ```bash
   flutter pub get
   ```

3. **Jalankan aplikasi**
   ```bash
   flutter run
   ```

> **Catatan:** Pastikan emulator/device terhubung ke internet agar PDF dapat dimuat dari sumber online.

---

## 👨‍💻 Informasi

- **Mata Kuliah:** Pemrograman Perangkat Mobile
- **Materi:** Pertemuan 6 — Navigasi dan Route
- **Deadline:** 3 April 2026, 23.59 WIB
