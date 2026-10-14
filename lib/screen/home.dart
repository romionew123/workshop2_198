import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const double _imageSize = 120; // ขนาดภาพเท่ากันทั้ง 3 ภาพ
  static const double _gap = 15;        // ระยะห่างระหว่างภาพ = 15

  static const _items = [
    ("assets/images/1.png", "ไข่กะทะ"),
    ("assets/images/2.png", "ชุดสลัดพร้อมเครื่องดื่ม"),
    ("assets/images/3.png", "สเต็กเนื้อวากิว"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CET App ID:198"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: _gap), // ระยะห่างขอบบน
              for (int i = 0; i < _items.length; i++) ...[
                Image.asset(
                  _items[i].$1,
                  width: _imageSize,
                  height: _imageSize,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 5),
                Text(
                  _items[i].$2,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                const SizedBox(height: _gap), // ระยะห่างระหว่างภาพ = 15
              ],
            ],
          ),
        ),
      ),
    );
  }
}