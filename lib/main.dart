import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('image/logo.png', width: 100, height: 100),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                );
              },
              child: Text('Forgot Password'),
            ),
            ElevatedButton(
              onPressed: () {

                // Ganti dengan kode untuk mendapatkan email dan password dari input
                String enteredEmail = 'aaa';
                String enteredPassword = 'bbb';

                if (enteredEmail == 'aaa' && enteredPassword == 'bbb') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Autentikasi gagal. Periksa kembali email dan password Anda.'),
                  ));
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Text('Selamat Datang, Selamat Berbelanja'),
      ),
    );
  }
}

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Lupa Password')),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'New Password'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Confirm Password'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Tambahkan logika untuk mengganti password di sini
                    // Misalnya, validasi dan penyimpanan password baru
                    // Setelah berhasil mengganti password, kembali ke halaman login
                    Navigator.pop(context);
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        );
      }
}