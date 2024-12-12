import 'package:flutter/material.dart';

class Pengingateventpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Detail Event'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Pamflet Image
            Container(
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/event8.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16), // Space between image and text
            // Title Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: const Text(
                "Seminar SI Fest 2023",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: const Text(
                "Tanggal: 10 Desember 2024\nWaktu: 09.00 - 12.00 WIB\nTempat: Grand Ballroom Ayola Hotel Palembang",
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
            ),
            const SizedBox(height: 16),
            // Description Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Deskripsi",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "[SEMINAR IT NASIONAL SI FEST 2023]\n\nHello Fellas! 👋\n\nHIMSI UNSRI Proudly Present ✨SEMINAR IT NASIONAL SI FEST 2023✨\n\nPada tahun ini, SI FEST 2023 kembali menghadirkan acara puncak dari rangkaian SI FEST itu sendiri yaitu, Seminar Nasional dengan mengangkat tema menarik.",
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Keuntungan",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Column(
                    children: const [
                      ListTile(
                        leading: Icon(Icons.check_circle, color: Colors.blue),
                        title: Text("Seminar Kit"),
                      ),
                      ListTile(
                        leading: Icon(Icons.check_circle, color: Colors.blue),
                        title: Text("Sertifikat"),
                      ),
                      ListTile(
                        leading: Icon(Icons.check_circle, color: Colors.blue),
                        title: Text("Ilmu yang bermanfaat"),
                      ),
                      ListTile(
                        leading: Icon(Icons.check_circle, color: Colors.blue),
                        title: Text("Menambah Relasi"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Terdaftar",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: List.generate(6, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey[300],
                          child: const Icon(Icons.person, color: Colors.white),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
