import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project_projai/database/model.dart';
import 'package:project_projai/database/database_helper.dart';
import 'Page/account.dart';
import 'Page/diary.dart';
import 'Page/helpme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // เรียก Firebase.initializeApp()
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Curved Novigation Bar',
      theme: ThemeData(
        fontFamily: 'Kanit',
        primarySwatch: Colors.orange
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}



DatabaseHelperPost dbHelperPost = DatabaseHelperPost();

class _HomeScreenState extends State<HomeScreen>{
  int selectedpage = 0; //initial value 

  
  
  final _pageOptions = [
  HelpmeScreen(),
  DiaryScreen(dbHelperpost : DatabaseHelperPost()),
  ProfileScreen(),
]; // listing of all 3 pages index wise
  
  final bgcolor = [ Colors.white , Colors.white, Colors.white, Colors.white,Colors.white];  // changing color as per active index value
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: null, // ลบ title ออก
          centerTitle: true, // กำหนดให้ title อยู่ตรงกลาง
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.orange], // สีที่คุณต้องการใช้ในไล่สีพื้นหลัง
              ),
            ),
            child: Center(
              child: Image.asset(
                'assets/images/logo.PNG', // ระบุเส้นทางไปยังโลโก้ของคุณ
                width: 120, // ปรับขนาดของโลโก้ตามความต้องการ
                height: 120,
              ),
            ),
          ),
        ),
            
            
            
          
        
      body: _pageOptions[selectedpage],
          
          
       
      
       
      
            // initial value is 0 so HomePage will be shown 
      bottomNavigationBar: CurvedNavigationBar(
        height: 50, 
        buttonBackgroundColor: Colors.purple,
        backgroundColor: bgcolor[selectedpage],
        color: Colors.purple,
        animationCurve: Curves.linearToEaseOut,
        items: <Widget>[
          Icon(
            Icons.temple_buddhist,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.auto_stories,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.face,
            size: 30,
            color: Colors.white,
          ),
          
        ],
        onTap: (index) {
          setState(() {
            selectedpage = index;  // changing selected page as per bar index selected by the user
          });
        },
      ),
    );
  }
}