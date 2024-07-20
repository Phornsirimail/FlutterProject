import 'package:flutter/material.dart';
import '../Page/pray/pray.dart';
import '../Page/lore/lore.dart';
import '../Page/fetist/fetist.dart';


class HelpmeScreen extends StatelessWidget {
  const HelpmeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        title: Center(child: const Text('Help Me',style: TextStyle(color: Colors.purple,fontSize: 30,fontFamily: 'Borel'),)),
      ),
      body: Container(
            decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/bgg.JPG'), // ระบุตำแหน่งของไฟล์ GIF ใน assets
            fit: BoxFit.cover, // ปรับขนาดภาพให้เต็ม Container
          ),
        ),
        
          
        child: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          
            children: [
              Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PrayScreen(),
                      ),
                    );
                  },
                  child: const Text('บทสวด',style: TextStyle(color: Colors.purple,fontSize: 20)),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(10)),
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
              const SizedBox(height: 40),
              Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoreScreen(),
                      ),
                    );
                  },
                  child: const Text('ความเชื่อ',style: TextStyle(color: Colors.purple,fontSize: 20)),
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
              const SizedBox(height: 40),
              Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FetistScreen(),
                    ),
                  );
                },
                child: const Text('เครื่องราง',style: TextStyle(color: Colors.purple,fontSize: 20)),
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
        ),
      ),
    );
  }
}

