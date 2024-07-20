import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';


class PrayScreen extends StatefulWidget {
  const PrayScreen({Key? key}) : super(key: key);

  @override
  _PrayScreenState createState() => _PrayScreenState();
}

class _PrayScreenState extends State<PrayScreen> {
  
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  @override


  

 @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.orange], // สีที่คุณต้องการใช้ในไล่สีพื้นหลัง
              ),
            ),),
        title: const Text('บทสวด',style: TextStyle(color: Colors.white),),
      ),
      body: Container(decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/bgg.JPG'), // ระบุตำแหน่งของไฟล์ GIF ใน assets
            fit: BoxFit.cover, // ปรับขนาดภาพให้เต็ม Container
          ),
        ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                    height: 50,
                    width: 300,
                child: SingleChildScrollView(
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
                        context: context,
                        builder: (BuildContext context) {
                          return SingleChildScrollView(
                            child: Expanded(
                              child: Container(padding: EdgeInsets.all(16),
                                child: Center(
                                  child: Column(
                                    children: [
                                      // หัวข้อ
                                      Container(
                                        child: Text('คาถาบทแผ่เมตตา',style: TextStyle(fontSize: 30),),
                                        alignment: Alignment.centerLeft,
                                      ),
                                      // รูปภาพ
                                      
                                      Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        icon: Icon(
          Icons.play_arrow,
        ),
        iconSize: 50,
        onPressed: () async {
          // เช็คว่าเสียงถูกเล่นอยู่หรือไม่
          if (audioPlayer.isPlaying.value) {
            // ถ้าเสียงกำลังเล่น ให้หยุดเล่น
            audioPlayer.stop();
          } else {
            // ถ้าเสียงไม่ได้เล่นอยู่ ให้เล่นเสียง
            audioPlayer.open(
              Audio('assets/sound/p1.mp3'), // ระบุตำแหน่งไฟล์เสียงถูกต้อง
            );
          }
        },
      ),
    ],
  ),
),
                                      
                                      // เนื้อหา
                                      
                                      Container(
                                        child: Text('สัพเพ สัตตา สัตว์ทั้งหลายที่เป็นเพื่อนทุกข์ เกิด แก่ เจ็บ ตาย ด้วยกันทั้งสิ้น',style: TextStyle(fontSize: 15),),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(2),
                                      ),
                                      Container(
                                        child: Text('อะเวรา โหนตุ จงเป็นผู้ไม่มีเวรแก่กันและกันเถิด',style: TextStyle(fontSize: 15),),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(2),
                                      ),
                                      Container(
                                        child: Text('อัพยาปัชฌา โหนตุ จงเป็นผู้ไม่เบียดเบียนซึ่งกันและกัน',style: TextStyle(fontSize: 15),),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(2),
                                      ),Container(
                                        child: Text('อะนีฆา โหนตุ จงเป็นผู้ไม่มีทุกข์กาย ทุกข์ใจเถิด',style: TextStyle(fontSize: 15),),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(2),
                                      ),
                                      Container(
                                        child: Text('สุขี อัตตานัง ปะริหะรันตุ จงเป็นผู้มีสุข พ้นจากทุกข์ภัยทั้งสิ้นเถิด',style: TextStyle(fontSize: 15),),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(2),
                                      ),
                                      
                                    ],
                                  ),
                                ),
                                
                              ),
                              
                            ),
                          );
                        },
                      );
                    },
                    child: const Text('คาถาบทแผ่เมตตา',style: TextStyle(color: Colors.white,fontSize: 20)),
                    style: ButtonStyle(
                            padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                            backgroundColor: MaterialStateProperty.all(Colors.orange),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                
                              ),
                            ),
                            
                          ),
                  ),
                ),
               
              ),
               const SizedBox(height: 30),
               Container(
                    height: 50,
                    width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
                        context: context,
                        builder: (BuildContext context) {
                          return SingleChildScrollView(
                            child: Expanded(
                              child: Container(padding: EdgeInsets.all(16),
                                child: Center(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text('พระคาถาชินบัญชร ฉบับย่อ',style: TextStyle(fontSize: 30),),
                                        alignment: Alignment.centerLeft,
                                      ),
                                      // หัวข้อ
                                       Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        icon: Icon(
          Icons.play_arrow,
        ),
        iconSize: 50,
        onPressed: () async {
          // เช็คว่าเสียงถูกเล่นอยู่หรือไม่
          if (audioPlayer.isPlaying.value) {
            // ถ้าเสียงกำลังเล่น ให้หยุดเล่น
            audioPlayer.stop();
          } else {
            // ถ้าเสียงไม่ได้เล่นอยู่ ให้เล่นเสียง
            audioPlayer.open(
              Audio('assets/sound/p2.mp3'), // ระบุตำแหน่งไฟล์เสียงถูกต้อง
            );
          }
        },
      ),
    ],
  ),
),
                                      Container(
                                        child: Text('(ตั้งนะโม 3 จบ )',style: TextStyle(fontSize: 15),),
                                        alignment: Alignment.centerLeft,
                                      ),
                                      // รูปภาพ
                                      
                                      // เนื้อหา
                                      Container(
                                        child: Text('ชิ นะ ปัญ ชะ ระ ปะ ริ ตัง มัง รัก ขะ ตุ สัพ พะ ทา (ภาวนา 10 จบ)',style: TextStyle(fontSize: 15),),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(16),
                                      ),
                                      
                                    ],
                                  ),
                                ),
                                
                              ),
                              
                            ),
                          );
                        },
                    );
                  },
                  child: const Text('พระคาถาชินบัญชร ฉบับย่อ',style: TextStyle(color: Colors.white,fontSize: 20)),
                  style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                          backgroundColor: MaterialStateProperty.all(Colors.orange),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              
                            ),
                          ),
                          
                        ),
                ),
               
              ),
               const SizedBox(height: 30),
               Container(
                    height: 50,
                    width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
                        context: context,
                        builder: (BuildContext context) {
                          return SingleChildScrollView(
                            child: Expanded(
                              child: Container(padding: EdgeInsets.all(16),
                                child: Center(
                                  child: Column(
                                    children: [
                                      // หัวข้อ
                                      Container(
                                        child: Text('(ตั้งนะโม 3 จบ ) ',style: TextStyle(fontSize: 30),),
                                        alignment: Alignment.centerLeft,
                                      ),
                                      // รูปภาพ
                                       Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        icon: Icon(
          Icons.play_arrow,
        ),
        iconSize: 50,
        onPressed: () async {
          // เช็คว่าเสียงถูกเล่นอยู่หรือไม่
          if (audioPlayer.isPlaying.value) {
            // ถ้าเสียงกำลังเล่น ให้หยุดเล่น
            audioPlayer.stop();
          } else {
            // ถ้าเสียงไม่ได้เล่นอยู่ ให้เล่นเสียง
            audioPlayer.open(
              Audio('assets/sound/p3.mp3'), // ระบุตำแหน่งไฟล์เสียงถูกต้อง
            );
          }
        },
      ),
    ],
  ),
),
                                      // เนื้อหา
                                      Container(
                                        child: Text('นะโมพุทธายะ มะพะ ทะนะ ภะ กะ สะ จะ '),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(16),
                                      ),
                                      Container(
                                        child: Text('สัพเพทวาปีสาเจวะ อาฬะวะกาทะโยปิยะ  '),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(16),
                                      ),
                                      Container(
                                        child: Text('ขัคคัง ตาละปัตตัง ทิสวา สัพเพยักขา '),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(16),
                                      ),
                                      Container(
                                        child: Text('ปะลายันติ สักกัสสะ วะชิราวุธัง  '),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(16),
                                      ),
                                      Container(
                                        child: Text('เวสสุวัณณัสสะ คะธาวุธัง '),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(16),
                                      ),
                                      Container(
                                        child: Text('อะฬะวะกัสสะ ทุสาวุธัง '),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(16),
                                      ),
                                      Container(
                                        child: Text('ยะมะนัสสะ นะยะนาวุธัง '),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(16),
                                      ),
                                      Container(
                                        child: Text('อิเมทิสวา สัพเพยักขา ปะลายันติ '),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(16),
                                      ),
                                      

                                      
                                    ],
                                  ),
                                ),
                                
                              ),
                              
                            ),
                          );
                        },
                    );
                  },
                  child: const Text('คาถา 5 อาวุธ',style: TextStyle(color: Colors.white,fontSize: 20)),
                  style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                          backgroundColor: MaterialStateProperty.all(Colors.orange),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              
                            ),
                          ),
                          
                        ),
                ),
               
              ),
               const SizedBox(height: 30),
               Container(
                    height: 50,
                    width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
                        context: context,
                        builder: (BuildContext context) {
                          return SingleChildScrollView(
                            child: Expanded(
                              child: Container(padding: EdgeInsets.all(16),
                                child: Center(
                                  child: Column(
                                    children: [
                                      // หัวข้อ
                                      Container(
                                        child: Text('การขออาราธนาคุณพระพุทธ พระธรรม และพระสงฆ์',style: TextStyle(fontSize: 30),),
                                        alignment: Alignment.centerLeft,
                                      ),
                                      // รูปภาพ
                                       Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        icon: Icon(
          Icons.play_arrow,
        ),
        iconSize: 50,
        onPressed: () async {
          // เช็คว่าเสียงถูกเล่นอยู่หรือไม่
          if (audioPlayer.isPlaying.value) {
            // ถ้าเสียงกำลังเล่น ให้หยุดเล่น
            audioPlayer.stop();
          } else {
            // ถ้าเสียงไม่ได้เล่นอยู่ ให้เล่นเสียง
            audioPlayer.open(
              Audio('assets/sound/p5.mp3'), // ระบุตำแหน่งไฟล์เสียงถูกต้อง
            );
          }
        },
      ),
    ],
  ),
),
                                      // เนื้อหา
                                      Container(
                                        child: Text('(ตั้งนะโม 3 จบ )'),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(16),
                                      ),
                                      Container(
                                        child: Text('พุท ธัง กันจะ ธรรมมัง กันจะ สังฆัง กันจะ นะระ นะจะ'),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(16),
                                      ),
                                      Container(
                                        child: Text('พุทธะ คุณณัง ธรรมมะ คุณณัง สังฆะ คุณณัง'),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(16),
                                      ),
                                      Container(
                                        child: Text('พุท โธ ภัณ ทะนะ จิตตัง'),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(16),
                                      ),
                                      Container(
                                        child: Text('ธรรมโม ภัณ ทะนะ จิตตัง'),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(16),
                                      ),
                                      Container(
                                        child: Text('สังโฆ ภัณ ทะนะ จิตตัง'),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(16),
                                      ),
                                      Container(
                                        child: Text('เอวัง อายุตโต โส ตะลา อิติกันนะ อิติ กันนา'),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(16),
                                      ),
                                      
                                      
                                      
                                    ],
                                  ),
                                ),
                                
                              ),
                              
                            ),
                          );
                        },
                    );
                  },
                  child: const Text('การขออาราธนาคุณ',style: TextStyle(color: Colors.white,fontSize: 20)),
                  style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                          backgroundColor: MaterialStateProperty.all(Colors.orange),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              
                            ),
                          ),
                          
                        ),
                ),
               
              ),
               const SizedBox(height: 30),
               Container(
                    height: 50,
                    width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
                        context: context,
                        builder: (BuildContext context) {
                          return SingleChildScrollView(
                            child: Expanded(
                              child: Container(padding: EdgeInsets.all(16),
                                child: Center(
                                  child: Column(
                                    children: [
                                      // หัวข้อ
                                      Container(
                                        child: Text('คาถาไล่ผี',style: TextStyle(fontSize: 30),),
                                        alignment: Alignment.centerLeft,
                                      ),
                                      // รูปภาพ
                                       Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        icon: Icon(
          Icons.play_arrow,
        ),
        iconSize: 50,
        onPressed: () async {
          // เช็คว่าเสียงถูกเล่นอยู่หรือไม่
          if (audioPlayer.isPlaying.value) {
            // ถ้าเสียงกำลังเล่น ให้หยุดเล่น
            audioPlayer.stop();
          } else {
            // ถ้าเสียงไม่ได้เล่นอยู่ ให้เล่นเสียง
            audioPlayer.open(
              Audio('assets/sound/p4.mp3'), // ระบุตำแหน่งไฟล์เสียงถูกต้อง
            );
          }
        },
      ),
    ],
  ),
),
                                      // เนื้อหา
                                      Container(
                                        child: Text('(ตั้งนะโม 3 จบ )'),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(16),
                                      ),
                                      Container(
                                        child: Text('พุทโธ อะระหัง พุทธังรักษา'),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(16),
                                      ),
                                      Container(
                                        child: Text('ธัมโม อะระหัง ธัมมังรักษา'),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(16),
                                      ),
                                      Container(
                                        child: Text('สังโฆ อะระหัง สังฆังรักษา'),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(16),
                                      ),
                                      Container(
                                        child: Text('ภูตผีทั้งหลาย คิดร้ายตัวข้า อะนันตา สูญเปล่า'),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(16),
                                      ),
                                      
                                      
                                    ],
                                  ),
                                ),
                                
                              ),
                              
                            ),
                          );
                        },
                    );
                  },
                  child: const Text('คาถาไล่ผี',style: TextStyle(color: Colors.white,fontSize: 20)),
                  style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                          backgroundColor: MaterialStateProperty.all(Colors.orange),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              
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

