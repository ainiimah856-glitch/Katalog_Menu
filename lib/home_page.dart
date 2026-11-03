import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const cokelat = Color(0xFF795238);
    const krem = Color(0xFFF5EBDD);

    return Scaffold(
      backgroundColor: krem,

      appBar: AppBar(
        title: const Text(
          'PAWON AINUN',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
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
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: cokelat,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sugeng Rawuh!',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Rasa Tradisi, Hangat di Hati.',
                    style: TextStyle(
                      color: Color(0xFFD6B77A),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Nikmati berbagai hidangan tradisional '
                    'Jawa dengan cita rasa khas Nusantara.',
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.6,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/menu');
                    },
                    child: const Text('Lihat Katalog Menu'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            const Text(
              'Selamat Datang di Pawon Ainun',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4A2E20),
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Pawon Ainun merupakan katalog kuliner '
              'yang memperkenalkan berbagai makanan dan '
              'minuman tradisional khas Jawa.',
              style: TextStyle(
                height: 1.7,
                color: Color(0xFF4A2E20),
              ),
            ),

            const SizedBox(height: 28),

            const Text(
              'Menu Unggulan',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4A2E20),
              ),
            ),

            const SizedBox(height: 12),

            // GAMBAR UTAMA (melebar penuh & di tengah)
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/rawon.jpg',
                width: double.infinity,
                fit: BoxFit.fitWidth,
                alignment: Alignment.center,
              ),
            ),

            const SizedBox(height: 20),

            // MENU UNGGULAN DENGAN FOTO
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/images/nasi_liwet.jpg',
                          width: double.infinity,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text('Nasi Liwet'),
                    ],
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/images/rawon.jpg',
                          width: double.infinity,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text('Rawon'),
                    ],
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/images/klepon.jpg',
                          width: double.infinity,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text('Klepon'),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            const Center(
              child: Text(
                'Melestarikan Rasa, Mengenalkan Budaya.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: cokelat,
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        onDestinationSelected: (index) {
          if (index == 1) {
            Navigator.pushNamed(context, '/menu');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/about');
          } else if (index == 3) {
            Navigator.pushNamed(context, '/contact');
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
}