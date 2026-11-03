import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    const cokelat = Color(0xFF795238);
    const krem = Color(0xFFF5EBDD);
    const cokelatTua = Color(0xFF4A2E20);

    return Scaffold(
      backgroundColor: krem,

      appBar: AppBar(
        title: const Text(
          'TENTANG KAMI',
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
            // Identitas restoran
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: cokelat,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/joglo.jpeg',
                      width: 350,
                      height: 200,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 150,
                          height: 100,
                          color: krem,
                          child: const Icon(
                            Icons.image_not_supported,
                            size: 40,
                            color: cokelat,
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    'Rasa Tradisi, Hangat di Hati.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFD6B77A),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            const Text(
              'Siapa Kami?',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: cokelatTua,
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              'Pawon Ainun merupakan sebuah platform '
              'katalog kuliner yang memperkenalkan berbagai '
              'makanan dan minuman tradisional khas Jawa. '
              'Nama Pawon diambil dari istilah dalam budaya '
              'Jawa yang berarti dapur, yaitu tempat '
              'mengolah makanan dan berkumpul bersama keluarga.',
              style: TextStyle(
                fontSize: 15,
                height: 1.8,
                color: cokelatTua,
              ),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 25),

            const Text(
              'Tujuan Kami',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: cokelatTua,
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              'Pawon Ainun hadir untuk mengenalkan '
              'keanekaragaman kuliner tradisional Jawa '
              'kepada masyarakat melalui informasi menu '
              'yang mudah diakses dan dipahami.',
              style: TextStyle(
                fontSize: 15,
                height: 1.8,
                color: cokelatTua,
              ),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 25),

            const Text(
              'Nilai Kami',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: cokelatTua,
              ),
            ),

            const SizedBox(height: 15),

            nilaiKami(
              Icons.restaurant_menu,
              'Cita Rasa',
              'Memperkenalkan kekayaan rasa kuliner tradisional.',
            ),

            const SizedBox(height: 12),

            nilaiKami(
              Icons.history_edu,
              'Warisan Budaya',
              'Menjaga pengetahuan tentang makanan khas Jawa.',
            ),

            const SizedBox(height: 12),

            nilaiKami(
              Icons.favorite,
              'Kehangatan',
              'Menghadirkan cerita dan kenangan melalui makanan.',
            ),

            const SizedBox(height: 30),

            Center(
              child: Column(
                children: [
                  const Text(
                    'Melestarikan Rasa, Mengenalkan Budaya.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: cokelat,
                      fontStyle: FontStyle.italic,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    'PAWON AINUN',
                    style: TextStyle(
                      color: cokelat.withValues(alpha: 0.7),
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
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
        selectedIndex: 2,
        onDestinationSelected: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/home');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/menu');
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

  static Widget nilaiKami(
    IconData icon,
    String judul,
    String deskripsi,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: const Color(0xFFD6B77A),
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 35,
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
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4A2E20),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  deskripsi,
                  style: const TextStyle(
                    fontSize: 13,
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