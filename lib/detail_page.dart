import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String name;
  final String description;
  final IconData icon;
  final String category;
  final String image;

  const DetailPage({
    super.key,
    required this.name,
    required this.description,
    required this.icon,
    required this.category,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    const cokelat = Color(0xFF795238);
    const krem = Color(0xFFF5EBDD);

    return Scaffold(
      backgroundColor: krem,
      appBar: AppBar(
        title: const Text(
          'DETAIL MENU',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: true,
        backgroundColor: cokelat,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- BAGIAN GAMBAR KOTAK (DIPERBAIKI) ---
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: SizedBox(
                  width: 300, // Lebar gambar
                  height: 300, // Tinggi gambar (sama dengan lebar agar jadi kotak)
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover, // Agar gambar mengisi kotak tanpa gepeng
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: const Color(0xFFE7D5B8),
                        child: Icon(
                          icon,
                          size: 110,
                          color: cokelat,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            // -------------------------------------------

            const SizedBox(height: 24), // Jarak gambar ke kategori

            // Kategori
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 7,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFD6B77A),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                category,
                style: const TextStyle(
                  color: Color(0xFF4A2E20),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const SizedBox(height: 12), // Jarak kategori ke nama

            // Nama menu
            Text(
              name,
              style: const TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4A2E20),
              ),
            ),

            const SizedBox(height: 12), // Jarak nama ke garis

            const Divider(
              color: Color(0xFFD6B77A),
              thickness: 1,
            ),

            const SizedBox(height: 16), // Jarak garis ke teks "Tentang Menu"

            const Text(
              'Tentang Menu',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4A2E20),
              ),
            ),

            const SizedBox(height: 8), // Jarak judul ke deskripsi

            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                height: 1.8,
                color: Color(0xFF795238),
              ),
            ),

            const SizedBox(height: 24), // Jarak deskripsi ke kotak info

            // Informasi tambahan
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cita Rasa Tradisional Jawa',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4A2E20),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Setiap hidangan memiliki keunikan rasa '
                    'dan cerita budaya yang menjadi bagian '
                    'dari kekayaan kuliner tradisional Jawa.',
                    style: TextStyle(
                      height: 1.6,
                      color: Color(0xFF795238),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24), // Jarak kotak info ke tombol

            // Tombol kembali
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text('Kembali ke Katalog'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: cokelat,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}