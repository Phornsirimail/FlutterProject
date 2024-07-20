import 'package:flutter/material.dart';

class fiveScreen extends StatelessWidget {
  const fiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('บทสวด1'),
      ),
      body: Container(decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/bgg.JPG'), // ระบุตำแหน่งของไฟล์ GIF ใน assets
            fit: BoxFit.cover, // ปรับขนาดภาพให้เต็ม Container
          ),
        ),
        child: Center(
          child: Container(padding: EdgeInsets.all(16),
                                child: Center(
                                  child: Column(
                                    children: [
                                      // หัวข้อ
                                      Container(
                                        child: Text('น้ำพุทธมนต์',style: TextStyle(fontSize: 30),),
                                        alignment: Alignment.centerLeft,
                                      ),
                                      // รูปภาพ
                                      Container(
                                        child: Image.asset('assets/images/matk.jpg'),
                                        alignment: Alignment.center,
                                      ),
                                      // เนื้อหา
                                      Container(
                                        child: Text('"น้ำพุทธมนต์"  คือ น้ำที่ผ่านพิธีปลุกเสก น้ำพุทธมนต์สามารถนำมาใช้ในงานประกอบพิธีมงคลต่าง ๆ หรือผ่านการปลุกเสก (สวด) ของพระภิกษุหรือคฤหัสถ์ผู้มีวิชาอาคม'),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(16),
                                      ),
                                      
                                      
                                    ],
                                  ),
                                ),
                                
                              ),
                              
        ),
      ),
    );
  }
}