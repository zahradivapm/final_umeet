import 'package:flutter/material.dart';

class PenyelenggaraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Penyelenggara',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Penyelenggara',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'Outfit',
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  OrganizerItem(
                    imagePath: 'assets/images/himsi-logo.png',
                    name: 'Himpunan Mahasiswa Sistem Informasi',
                  ),
                  OrganizerItem(
                    imagePath: 'assets/images/bem.jpg',
                    name: 'Badan Eksekutif Mahasiswa',
                  ),
                  OrganizerItem(
                    imagePath: 'assets/images/hmif.jpg',
                    name: 'Himpunan Mahasiswa Informatika',
                  ),
                  OrganizerItem(
                    imagePath: 'assets/images/intel.jpg',
                    name: 'Intel Committee',
                  ),
                  OrganizerItem(
                    imagePath: 'assets/images/fasco.jpg',
                    name: 'Fasco Community',
                  ),
                  OrganizerItem(
                    imagePath: 'assets/images/bgf.jpg',
                    name: 'Business Growth Forum',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrganizerItem extends StatelessWidget {
  final String imagePath;
  final String name;

  OrganizerItem({required this.imagePath, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Logo
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: Offset(2, 2),
                ),
              ],
            ),
          ),
          SizedBox(width: 16), // Jarak antara logo dan teks
          // Nama Organisasi
          Expanded(
            child: Text(
              name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
