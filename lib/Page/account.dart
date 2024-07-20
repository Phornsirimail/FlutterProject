import 'package:flutter/material.dart';
import 'package:project_projai/Page/mein.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        title: Center(child: const Text('Developer',style: TextStyle(color: Colors.purple,fontSize: 30,fontFamily: 'Borel'),)),
      ),
      body: Container(decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/bgg.JPG'), // ระบุตำแหน่งของไฟล์ GIF ใน assets
            fit: BoxFit.cover, // ปรับขนาดภาพให้เต็ม Container
          ),
        ),
        child: Center(
          child: Column(
            
            children: [const SizedBox(height: 40),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                Container(width: 180, height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      child: Image.asset('assets/images/dv1.jpg'),
                      
                    ),
                    Container(
                      
                      child: Text("เจมส์",style: TextStyle(fontSize: 20,color: Colors.purple),),
                      padding: const EdgeInsets.all(8),
                    ),
                    Container(
                      
                      child: Text("มงคล เกิดฤทธิ์",style: TextStyle(fontSize: 15,color: Colors.purple),),
                      padding: const EdgeInsets.all(4),
                    ),
                    Container(
                      
                      child: Text("ออกแบบUI, Backend, จัดการข้อมูล",style: TextStyle(fontSize: 10,color: Colors.purple),),
                      padding: const EdgeInsets.all(4),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 20),
                Container(width: 180, height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      child: Image.asset('assets/images/dv2.jpg'),
                      
                    ),
                    Container(
                      
                      child: Text("เมล",style: TextStyle(fontSize: 20,color: Colors.purple),),
                      padding: const EdgeInsets.all(8),
                    ),
                    Container(
                      
                      child: Text("พรศิริ วัฒนาศตานนท์",style: TextStyle(fontSize: 15,color: Colors.purple),),
                      padding: const EdgeInsets.all(4),
                    ),
                    Container(
                      
                      child: Text("พัฒนาโครงสร้างแอพพลิเคชัน",style: TextStyle(fontSize: 10,color: Colors.purple),),
                      padding: const EdgeInsets.all(4),
                    )
                  ],
                ),
              )
              ],),
              const SizedBox(height: 60),
              Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const meinScreen(),
                    ),
                  );
                },
                child: const Text('Main',style: TextStyle(color: Colors.purple,fontSize: 20)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                        color: Colors.purple,
                        width: 5,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  
                ),
              ),
              ),
            ],
            
              
          ),
        )
      ),
    );
  }
}