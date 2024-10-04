import 'package:flutter/material.dart';

class Cs extends StatelessWidget {
  const Cs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 520,
                width: 300,
                child: Card( 
                  
                  color: Colors.white70,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Text('Pertanyaan Umum (FAQ)'),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text("Temukan jawaban atas berbagai pertanyaan yang sering ditanyakan oleh pengguna mengenai penggunaan aplikasi ini. Dari proses pendaftaran, cara membeli barang, hingga pengaturan akun, semua jawaban ada di sini untuk mempermudah pengalaman Anda"
),
                      ),
                     
                    ],
                  ),
              ),
              ),
            ),
          ],
        ),
    );
  }
}