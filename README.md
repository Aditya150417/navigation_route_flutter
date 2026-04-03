# 📚 Navigation Route Flutter — Book Reader App

Proyek Flutter untuk tugas mata kuliah **Pemrograman Perangkat Mobile** (Pertemuan 6).  
Aplikasi ini mengimplementasikan konsep **navigasi dan route** pada Flutter dengan fitur pembaca buku digital berbasis PDF yang berjalan 100% offline secara lokal.

---

## 🎯 Deskripsi Tugas

> **Lengkapi kode program yang ada pada contoh program navigasi dan route.**
> - Tambahkan jumlah buku pada halaman utama menjadi **10 buku**
> - Pada tombol **"Read the Book"** buatlah fungsi navigasi yang mengarah ke halaman baru dan membuka **FILE PDF** dari buku tersebut

---

## ✨ Fitur Aplikasi

- 📖 **Daftar 10 Buku** — Menampilkan 10 buku pemrograman berkualitas yang tersemat langsung di dalam aplikasi.
- 🔍 **Halaman Detail Buku** — Menampilkan judul, penulis, dan detail sinopsis komprehensif.
- 📄 **Offline PDF Viewer** — Membaca file PDF buku langsung tanpa internet dengan menggunakan metode `SfPdfViewer.asset`.
- 🧭 **Navigasi Multi-Halaman** — Navigasi dan rute layar bertingkat: Daftar → Detail Buku → Pembaca PDF.
- 🎨 **UI Modern & Profesional** — Tema visual aplikasi bersih, elegan, dengan profil warna gelap untuk pengalaman membaca terbaik.

---

## 📂 Struktur Direktori Terbaru

Sistem folder telah dioptimalkan agar *routing* dan penempatan *assets* berjalan sempurna:

```
lib/
├── main.dart                   # Entry point aplikasi & konfigurasi behavior UI
├── models/
│   └── book.dart               # Kelas model data buku
├── assets/
│   ├── books_data.dart         # Dataset 10 buku beserta referensi *path* asetnya
│   └── books_pdf/              # Direktori berisi 10 file master PDF lokal
└── screens/
    ├── book_list_screen.dart    # Halaman Utama: Menampilkan *list* buku
    ├── book_detail_screen.dart  # Halaman Kedua: Memuat detail buku & tombol Read
    └── reading_book_screen.dart # Halaman Ketiga: Mesin perender PDF
```

---

## 🛠️ Teknologi & Dependensi

- **Flutter SDK** — Framework utama pengembangan
- **Dart** — Bahasa pemrograman logik
- [`syncfusion_flutter_pdfviewer`](https://pub.dev/packages/syncfusion_flutter_pdfviewer) — Diaplikasikan dengan `.asset()` untuk menampilkan PDF statis.

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
   > **Info:** Semua buku sudah *bundled* (terpaket) di dalam APK. Aplikasi bisa dibuka dan buku bisa dibaca meskipun perangkat Anda sedang tidak terkoneksi ke internet / offline! 🎉

---

## 👨‍💻 Informasi Pengembang

- **Mata Kuliah:** Pemrograman Perangkat Mobile
- **Materi:** Pertemuan 6 — Navigasi dan Route
- **Deadline:** 3 April 2026, 23.59 WIB
