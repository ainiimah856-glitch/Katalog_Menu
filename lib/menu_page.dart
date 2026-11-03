import 'package:flutter/material.dart';
import 'detail_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  static const Color cokelat = Color(0xFF795238);
  static const Color krem = Color(0xFFF5EBDD);
  static const Color cokelatTua = Color(0xFF4A2E20);
  static const Color emas = Color(0xFFD6B77A);

  final List<Map<String, dynamic>> daftarMenu = const [
    {
      'nama': 'Nasi Liwet',
      'kategori': 'Makanan Utama',
      'gambar': 'assets/images/nasi_liwet.jpg',
      'deskripsi':
          'Nasi liwet merupakan makanan tradisional '
          'khas Jawa yang dimasak dengan santan, '
          'daun salam, serai, dan berbagai rempah. '
          'Biasanya disajikan bersama ayam suwir, '
          'telur, dan sayuran.',
      'icon': Icons.rice_bowl,
    },
    {
      'nama': 'Opor Ayam',
      'kategori': 'Makanan Utama',
      'gambar': 'assets/images/opor_ayam.jpg',
      'deskripsi':
          'Opor ayam adalah hidangan tradisional '
          'yang menggunakan ayam dengan kuah santan '
          'gurih serta campuran bumbu rempah. '
          'Makanan ini sering disajikan saat hari raya.',
      'icon': Icons.soup_kitchen,
    },
    {
      'nama': 'Rawon',
      'kategori': 'Makanan Utama',
      'gambar': 'assets/images/rawon.jpg',
      'deskripsi':
          'Rawon merupakan sup daging khas Jawa Timur '
          'yang memiliki kuah berwarna hitam. '
          'Warna hitam tersebut berasal dari kluwek '
          'yang memberikan cita rasa khas.',
      'icon': Icons.ramen_dining,
    },
    {
      'nama': 'Gudeg',
      'kategori': 'Makanan Tradisional',
      'gambar': 'assets/images/gudeg.jpg',
      'deskripsi':
          'Gudeg merupakan makanan khas Yogyakarta '
          'yang terbuat dari nangka muda yang dimasak '
          'dengan santan dan bumbu tradisional '
          'hingga menghasilkan rasa manis dan gurih.',
      'icon': Icons.restaurant,
    },
    {
      'nama': 'Klepon',
      'kategori': 'Jajanan Tradisional',
      'gambar': 'assets/images/klepon.jpg',
      'deskripsi':
          'Klepon adalah jajanan tradisional berbentuk '
          'bulat yang terbuat dari tepung ketan. '
          'Di dalamnya terdapat gula merah cair '
          'dan bagian luarnya dilapisi kelapa parut.',
      'icon': Icons.circle,
    },
    {
      'nama': 'Wedang Jahe',
      'kategori': 'Minuman Tradisional',
      'gambar': 'assets/images/wedang_jahe.jpg',
      'deskripsi':
          'Wedang jahe merupakan minuman tradisional '
          'yang dibuat dari jahe dan air hangat. '
          'Minuman ini memiliki aroma khas dan '
          'memberikan sensasi hangat pada tubuh.',
      'icon': Icons.local_cafe,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: krem,

      appBar: AppBar(
        title: const Text(
          'KATALOG MENU',
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
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Jelajahi Menu Kami',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: cokelatTua,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Kenali beragam makanan dan minuman '
              'tradisional khas Jawa.',
              style: TextStyle(
                color: cokelat,
                fontSize: 14,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 25),

            // --- BAGIAN GRID YANG SUDAH DIPERBAIKI ---
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: daftarMenu.length,
              // Menggunakan MaxCrossAxisExtent agar otomatis menyesuaikan layar
              // (Mobile 2 kolom, Laptop 3 atau 4 kolom)
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300, // Lebar maksimal 1 kartu
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.78, // Rasio agar tinggi kartu pas (tidak ada white space)
              ),
              // -----------------------------------------

              itemBuilder: (context, index) {
                final menu = daftarMenu[index];

                return InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          name: menu['nama'],
                          description: menu['deskripsi'],
                          icon: menu['icon'],
                          category: menu['kategori'],
                          image: menu['gambar'],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: emas,
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.brown.withValues(alpha: 0.08),
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(15),
                          ),
                          // MENGGUNAKAN ASPECT RATIO AGAR GAMBAR TIDAK KEPOTONG
                          child: AspectRatio(
                            aspectRatio: 16 / 10, // Rasio gambar 16:10
                            child: Image.asset(
                              menu['gambar'],
                              width: double.infinity,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  color: const Color(0xFFE7D5B8),
                                  child: Icon(
                                    menu['icon'],
                                    size: 70,
                                    color: cokelat,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),

                        // EXPANDED AGAR MENGISI SISA RUANG
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  menu['nama'],
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: cokelatTua,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  menu['kategori'],
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: cokelat,
                                  ),
                                ),
                                
                                const Spacer(), // Mendorong tombol ke paling bawah
                                
                                SizedBox(
                                  width: double.infinity,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: cokelat,
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: const Text(
                                      'Lihat Detail →',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 25),

            const Center(
              child: Text(
                'Melestarikan Rasa, Mengenalkan Budaya.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: cokelat,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            const SizedBox(height: 15),
          ],
        ),
      ),

      bottomNavigationBar: NavigationBar(
        selectedIndex: 1,
        onDestinationSelected: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/home');
          } else if (index == 2) {
            Navigator.pushReplacementNamed(context, '/about');
          } else if (index == 3) {
            Navigator.pushReplacementNamed(context, '/contact');
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
