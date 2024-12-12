import 'package:flutter/material.dart';

class EventCertificatePage extends StatelessWidget {
  final List<Map<String, String>> events = [
    {
      "image": "assets/images/sifest3.png",
      "title": "SI Fest 2023",
      "certificate": "assets/images/sertifikatsifest.jpeg",
    },
    {
      "image": "assets/images/iffest.jpg",
      "title": "IFFEST 2024",
      "certificate": "assets/images/sertifikat2.png",
    },
    {
      "image": "assets/images/oprecintel1.png",
      "title": "Recruitment",
      "certificate": "assets/images/sertifikat3.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Download Sertifikat"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(12.0),
                  ),
                  child: Image.asset(
                    event["image"]!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        event["title"]!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Tampilkan notifikasi bahwa sertifikat telah berhasil diunduh
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "Sertifikat ${event["title"]} berhasil diunduh!",
                              ),
                            ),
                          );

                          // Tampilkan dialog dengan gambar sertifikat
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    event["certificate"]!,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    "Sertifikat ${event["title"]}",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("Tutup"),
                                ),
                              ],
                            ),
                          );
                        },
                        icon: const Icon(Icons.download),
                        label: const Text("Download Sertifikat"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
