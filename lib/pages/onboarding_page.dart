import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            child: Image.asset(
              'assets/miniaturr.png',
              width: 240,
              height: 240,
            ),
          ),
          const SizedBox(
            height: 46,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  'SIWAP',
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
                const SizedBox(height: 20,),
                Text(
                    'Solusi praktis untuk menemukan jaringan WiFi publik diskominfo terdekat dan tetap terkoneksi di mana saja. ',
                    textAlign: TextAlign.center,
                    ),
                const SizedBox(
                  height: 46,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Cari Titik Wifi",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
