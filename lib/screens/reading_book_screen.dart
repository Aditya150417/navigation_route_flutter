import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '../models/book.dart';

class ReadingBookScreen extends StatefulWidget {
  final Book book;

  const ReadingBookScreen({super.key, required this.book});

  @override
  State<ReadingBookScreen> createState() => _ReadingBookScreenState();
}

class _ReadingBookScreenState extends State<ReadingBookScreen> {
  bool _isLoading = true;
  String? _errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.book.title,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: Stack(
        children: [
          SfPdfViewer.asset(
            widget.book.pdfUrl,
            onDocumentLoaded: (PdfDocumentLoadedDetails details) {
              setState(() {
                _isLoading = false;
              });
            },
            onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
              setState(() {
                _isLoading = false;
                _errorMessage = 'Gagal memuat PDF.\n\nPastikan file PDF bernama sesuai dan berada di folder lib/assets/books_pdf.\n\nError: ${details.description}';
              });
            },
          ),
          // Loading indicator saat PDF sedang diambil
          if (_isLoading)
            Container(
              color: Colors.white,
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: 20),
                    Text(
                      'Memuat PDF...',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF475569),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          // Tampilan error jika PDF gagal dimuat
          if (_errorMessage != null)
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(32),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error_outline, size: 64, color: Color(0xFFCB3234)),
                    const SizedBox(height: 20),
                    Text(
                      _errorMessage!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 15, color: Color(0xFF334155), height: 1.6),
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton.icon(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back),
                      label: const Text('Kembali'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0F172A),
                        foregroundColor: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
