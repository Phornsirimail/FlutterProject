import 'package:flutter/material.dart';

class elevenScreen extends StatelessWidget {
  const elevenScreen({Key? key}) : super(key: key);
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('วิธีการ7'),
      ),
      body: Container(decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/bgg.JPG'), // ระบุตำแหน่งของไฟล์ GIF ใน assets
            fit: BoxFit.cover, // ปรับขนาดภาพให้เต็ม Container
          ),
        ),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('ย้อนกลับ'),
          ),
        ),
      ),
    );
  }
}


 
