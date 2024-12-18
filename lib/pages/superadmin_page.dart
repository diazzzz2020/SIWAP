import 'package:flutter/material.dart';

class SuperAdminPage extends StatefulWidget {
  const SuperAdminPage({super.key});

  @override
  State<SuperAdminPage> createState() => _SuperAdminPageState();
}

class _SuperAdminPageState extends State<SuperAdminPage> {
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
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context); // Navigasi kembali
            },
          ),
        ),
        title: const Text(
          'Superadmin Page',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: false,
      ),

      // Body untuk menampilkan placeholder
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.grey[200],
              child: const Center(
                child: Text(
                  'Map Placeholder',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
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
                  Navigator.pushNamed(context, '/addwifi');
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

              // Tombol Add Admin
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/addadmin'); // Navigasi ke AddAdminPage
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.add, color: Colors.green),
                    Text(
                      'Add Admin',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),

              // Tombol List Admin
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/listadmin'); // Navigasi ke ListAdminPage
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.list, color: Colors.green),
                    Text(
                      'List Admin',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),

              // Tombol Back
              GestureDetector(
                onTap: () {
                  Navigator.pop(context); // Kembali ke halaman sebelumnya
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.arrow_back, color: Colors.grey),
                    Text(
                      'Back',
                      style: TextStyle(color: Colors.grey),
                    ),
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
