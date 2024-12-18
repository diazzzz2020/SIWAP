import 'package:flutter/material.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar untuk ikon panah dan judul
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back, // Ikon panah ke kiri
              color: Colors.black, // Warna hitam
            ),
            onPressed: () {
              Navigator.pop(context); // Navigasi kembali
            },
          ),
        ),
        title: const Text(
          'Admin Page',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: false,
      ),

      // Body untuk menampilkan peta
      body: Column(
        children: [
          // Peta di tengah layar
          Expanded(
            child: Container(
              color: Colors.grey[200],
              child: const Center(
                child: Text(
                  'Map Placeholder',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              // Jika ingin menggunakan peta asli, gunakan GoogleMap widget:
              // child: GoogleMap(...),
            ),
          ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Tombol Add Wifi
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/addwifi'); // Navigasi ke AddWifiPage
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.add_circle_outline, color: Colors.green),
                    Text(
                      'Add Wifi',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),

              // Tombol Back/List Wifi
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back, color: Colors.grey),
                  Text(
                    'Back',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
