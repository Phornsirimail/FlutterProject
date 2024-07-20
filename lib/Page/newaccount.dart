import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController nameController = TextEditingController();
  String? imagePath;
  bool isFavorite = false;
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ก้ไขโปรไฟล์'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: Colors.red,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                isBookmarked = !isBookmarked;
              });
            },
            icon: Icon(
              isBookmarked ? Icons.bookmark : Icons.bookmark_border,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // เพิ่มรูปภาพโปรไฟล์
                // คุณสามารถใช้แหล่งข้อมูลรูปภาพที่คุณต้องการ
                // เช่น Image Picker เพื่อให้ผู้ใช้เลือกรูปภาพ
              },
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  image: imagePath != null
                      ? DecorationImage(
                          image: NetworkImage(imagePath!),
                          fit: BoxFit.cover,
                        )
                      : null,
                ),
                child: Center(
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'ชื่อ',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // บันทึกข้อมูลโปรไฟล์
                String name = nameController.text;
                // อัพเดตรูปภาพและชื่อในฐานข้อมูลหรือส่งไปที่ที่คุณต้องการ
              },
              child: Text('บันทึก'),
            ),
          ],
        ),
      ),
    );
  }
}