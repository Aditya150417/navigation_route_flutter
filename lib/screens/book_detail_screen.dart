import 'package:flutter/material.dart';
import '../models/book.dart';
import 'reading_book_screen.dart';

class BookDetailScreen extends StatelessWidget {
  final Book book;

  const BookDetailScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(), 
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 120,
                height: 160,
                decoration: BoxDecoration(
                  color: const Color(0xFFE2E8F0),
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    )
                  ],
                ),
                child: const Icon(Icons.menu_book, color: Color(0xFF94A3B8), size: 50),
              ),
              const SizedBox(height: 32),
              Text(
                book.title,
                style: const TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.w800, 
                  color: Color(0xFF0F172A),
                  height: 1.3,
                  letterSpacing: -0.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                book.author,
                style: const TextStyle(
                  fontSize: 16, 
                  color: Color(0xFF475569),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              const Divider(color: Color(0xFFF1F5F9), thickness: 2),
              const SizedBox(height: 24),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Synopsis',
                  style: TextStyle(
                    fontSize: 18, 
                    fontWeight: FontWeight.w700, 
                    color: Color(0xFF0F172A),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                book.description,
                style: const TextStyle(
                  fontSize: 16, 
                  height: 1.8, 
                  color: Color(0xFF334155),
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.grey.shade200)),
        ),
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context) => ReadingBookScreen(book: book),
              ),
            );
          },
          icon: const Icon(Icons.book),
          label: const Text(
            'Read Full Book', 
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, letterSpacing: 0.5)
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF0F172A),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 16),
            elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ),
    );
  }
}
