import 'package:flutter/material.dart';
import 'register_screen.dart';
import 'menu_screen.dart';
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Add the logo at the top
            Image.asset(
              'assets/logo.jpg',  // Replace 'assets/logo.png' with your actual logo path
              height: 80.0,
              width: 80.0,
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Simulasi login berhasil
                // Ganti logika ini dengan proses login sesungguhnya
                // Misalnya, menggunakan Firebase, backend API, dll.
                bool loginSuccess = true;

                if (loginSuccess) {
                  // Navigasi ke layar home jika login berhasil
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MenuScreen()),
                  );
                } else {
                  // Tampilkan pesan kesalahan jika login gagal
                  // Anda dapat menambahkan logika tampilan pesan kesalahan di sini
                }
              },
              child: Text('Login'),
            ),
            SizedBox(height: 8.0),
            TextButton(
              onPressed: () {
                // Navigasi ke layar pendaftaran
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              child: Text('Belum punya akun? Daftar disini'),
            ),
          ],
        ),
      ),
    );
  }
}
