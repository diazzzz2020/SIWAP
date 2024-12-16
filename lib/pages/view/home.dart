import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          Center(
            child: Column(
              children: [
                // Image
                Image.asset(
                  'assets/wifi.png',
                  width: 85,
                  height: 85,
                ),
                // Title
                const SizedBox(height: 20),
                const Text(
                  'Login Admin',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                
                // Username field with margin
                Container(
                  margin: const EdgeInsets.only(bottom: 20.0), // Add margin at the bottom
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter your username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                
                // Password field with margin
                Container(
                  margin: const EdgeInsets.only(bottom: 20.0), // Add margin at the bottom
                  child: TextFormField(
                    obscureText: true, // Make password field hide text
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                
                // Login Button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
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
