import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    const cokelat = Color(0xFF795238);
    const krem = Color(0xFFF5EBDD);
    const cokelatTua = Color(0xFF4A2E20);

    return Scaffold(
      backgroundColor: krem,

      appBar: AppBar(
        title: const Text(
          'LOKASI & KONTAK',
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
            // Judul halaman
            const Text(
              'Hubungi Kami',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: cokelatTua,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Temukan informasi lokasi dan kontak '
              'Pawon Ainun melalui halaman ini.',
              style: TextStyle(
                fontSize: 15,
                height: 1.6,
                color: cokelat,
              ),
            ),

            const SizedBox(height: 25),

            // Ilustrasi lokasi
            Container(
              width: double.infinity,
              height: 170,
              decoration: BoxDecoration(
                color: const Color(0xFFE7D5B8),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(
                Icons.location_on,
                size: 85,
                color: cokelat,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Informasi Kontak',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: cokelatTua,
              ),
            ),

            const SizedBox(height: 15),

            informasiKontak(
              Icons.location_on_outlined,
              'Alamat',
              'Silakan isi alamat restoran Pawon Ainun.',
            ),

            const SizedBox(height: 12),

            informasiKontak(
              Icons.access_time,
              'Jam Operasional',
              'Senin - Minggu\n09.00 - 21.00 WIB',
            ),

            const SizedBox(height: 12),

            informasiKontak(
              Icons.phone_outlined,
              'Nomor Telepon',
              '081326885510',
            ),

            const SizedBox(height: 12),

            informasiKontak(
              Icons.camera_alt_outlined,
              'Instagram',
              '@pawonainun',
            ),

            const SizedBox(height: 25),

            // Informasi tambahan
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: cokelat,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Column(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Color(0xFFD6B77A),
                    size: 35,
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Terima Kasih!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Terima kasih telah mengenal '
                    'kuliner tradisional bersama Pawon Ainun.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),

      bottomNavigationBar: NavigationBar(
        selectedIndex: 3,
        onDestinationSelected: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/home');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/menu');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/about');
          }
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          NavigationDestination(
            icon: Icon(Icons.restaurant_menu),
            label: 'Katalog',
          ),
          NavigationDestination(
            icon: Icon(Icons.info_outline),
            label: 'Tentang',
          ),
          NavigationDestination(
            icon: Icon(Icons.location_on_outlined),
            label: 'Kontak',
          ),
        ],
      ),
    );
  }

  static Widget informasiKontak(
    IconData icon,
    String judul,
    String isi,
  ) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: const Color(0xFFD6B77A),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 30,
            color: const Color(0xFF795238),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  judul,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF4A2E20),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  isi,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.5,
                    color: Color(0xFF795238),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
