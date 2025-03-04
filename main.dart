import 'package:flutter/material.dart';

// Fungsi utama yang menjalankan aplikasi Flutter
void main() {
  runApp(const MyApp());
}

// Kelas MyApp merupakan root widget dari aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug pada aplikasi
      home: Scaffold(
        appBar: AppBar(
          title: const Text("I Am Human", style: TextStyle(fontWeight: FontWeight.bold)), // Judul di AppBar
          backgroundColor: Colors.green, // Warna latar belakang AppBar
          centerTitle: true, // Posisi judul di tengah
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0), // Memberikan padding pada konten utama
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Menempatkan elemen di tengah secara vertikal
            crossAxisAlignment: CrossAxisAlignment.center, // Menempatkan elemen di tengah secara horizontal
            children: [
              Image.asset('image/img_1.png', width: 450), // Menampilkan gambar dari asset lokal dengan lebar 450
              const SizedBox(height: 100), // Jarak vertikal antara gambar dan container di bawahnya

              // Container untuk menampilkan daftar aktivitas
              Container(
                padding: const EdgeInsets.all(16), // Memberikan padding di dalam container
                decoration: BoxDecoration(
                  color: Colors.green[100], // Warna latar belakang hijau muda
                  borderRadius: BorderRadius.circular(12), // Membuat sudut container menjadi melengkung
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.3), // Warna bayangan dengan transparansi
                      blurRadius: 5, // Tingkat blur bayangan
                      offset: Offset(0, 4), // Posisi bayangan (horizontal: 0, vertikal: 4)
                    )
                  ],
                ),

                // Daftar teks yang merepresentasikan aktivitas manusia
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Menjadikan teks rata kiri
                  children: [
                    Text("📚 - Learning is Fun!", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    Text("🍜 - Time to Eat!", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    Text("😴 - Need Some Sleep!", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    Text("💰 - Let's Earn!", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    Text("🎮 - Game Time!", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    Text("🚀 - Adventure Awaits!", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
