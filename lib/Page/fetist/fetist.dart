import 'package:flutter/material.dart';

class FetistScreen extends StatelessWidget {
  const FetistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.orange], // สีที่คุณต้องการใช้ในไล่สีพื้นหลัง
              ),
            ),),
        title: const Text('เครื่องราง',style: TextStyle(color: Colors.white),),
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
                                        child: Text('ต้นทับทิม',style: TextStyle(fontSize: 30),),
                                        alignment: Alignment.centerLeft,
                                      ),
                                      // รูปภาพ
                                      Container(
                                        child: Image.asset('assets/images/ft1.JPG'),
                                        alignment: Alignment.center,
                                      ),
                                      // เนื้อหา
                                      Container(
                                        child: Text('มีความเชื่อว่าเวลาไปงานศพให้พกกิ่งทับทิมไว้ในกระเป๋าเสื้อ เพราะเชื่อว่าจะช่วยป้องกันวิญญาณ หรือสิ่งชั่วร้าย หลังจากที่กลับมาจากงานศพได้ และอีกวิธีหนึ่งคือหลังจากที่กลับจากงานศพก็จะใช้วิธีล้างหน้าด้วยน้ำที่แช่ด้วยใบทับทิม เพื่อป้องกันสิ่งชั่วร้ายตามมาด้วยเช่นกัน'),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(5),
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
                    child: const Text('ต้นทับทิม',style: TextStyle(color: Colors.white,fontSize: 20)),
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
                                      // หัวข้อ
                                      Container(
                                        child: Text('ท้าวเวสสุวรรณ',style: TextStyle(fontSize: 30),),
                                        alignment: Alignment.centerLeft,
                                      ),
                                      // รูปภาพ
                                      Container(
                                        child: Image.asset('assets/images/ft2.JPG'),
                                        alignment: Alignment.center,
                                      ),
                                      // เนื้อหา
                                      Container(
                                        child: Text('"ท้าวเวสสุวรรณ" เป็นเทพผู้ยิ่งใหญ่ในท้าวจตุโลกบาลทั้ง 4 อธิบดีแห่งอสูร โดยเป็นเทพผู้ปกป้องพระพุทธศาสนา และ เป็นเทพผู้คุ้มครองโลกมนุษย์ คอยปัดเป่าสิ่งไม่ดีออกไปจากชีวิต อีกทั้งยังเป็นเทพเจ้าแห่งโชคลาภที่มีขุมทรัพย์มหาศาล'),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(5),
                                      ),
                                      Container(
                                        child: Text('ท่านได้ปรากฎอยู่ในหลายความเชื่อทางศาสนา ไม่ว่าจะเป็นท้าวกุเวรของอินเดียใต้ พระซัมภลของทิเบต หรือ ตัวเหวินเทียนหวังของจีน ทำให้ท่านเป็นเทพองค์หนึ่งที่เป็นที่เคารพนับถือในหลาย ๆ ประเทศ'),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(5),
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
                  child: const Text('ท้าวเวสสุวรรณ',style: TextStyle(color: Colors.white,fontSize: 20)),
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
                                        child: Text('ตะกรุด',style: TextStyle(fontSize: 30),),
                                        alignment: Alignment.centerLeft,
                                      ),
                                      // รูปภาพ
                                      Container(
                                        child: Image.asset('assets/images/ft3.JPG'),
                                        alignment: Alignment.center,
                                      ),
                                      // เนื้อหา
                                      Container(
                                        child: Text('"ตะกรุด" เป็นหนึ่งในเครื่องรางของขลังที่ผูกพันกับคติความเชื่อในสังคมไทยมาช้านาน เพื่อความเข้มขลัง ศักดิ์สิทธิ์ ดีในทางแคล้วคลาด คงกระพันชาตรี ป้องกันภยันตราย ภัยพิบัติทั้งปวง รวมทั้งด้านเมตตามหานิยม ค้าขาย โชคลาภ กลับดวง พลิกชะตา เลื่อนยศ ร้ายกลายเป็นดี ฯลฯ '),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(5),
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
                  child: const Text('ตะกรุด',style: TextStyle(color: Colors.white,fontSize: 20)),
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
                                        child: Text('น้ำพุทธมนต์',style: TextStyle(fontSize: 30),),
                                        alignment: Alignment.centerLeft,
                                      ),
                                      // รูปภาพ
                                      Container(
                                        child: Image.asset('assets/images/ft4.JPG'),
                                        alignment: Alignment.center,
                                      ),
                                      // เนื้อหา
                                      Container(
                                        child: Text('"น้ำพุทธมนต์"  คือ น้ำที่ผ่านพิธีปลุกเสก น้ำพุทธมนต์สามารถนำมาใช้ในงานประกอบพิธีมงคลต่าง ๆ หรือผ่านการปลุกเสก (สวด) ของพระภิกษุหรือคฤหัสถ์ผู้มีวิชาอาคม'),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(5),
                                      ),
                                      Container(
                                        child: Text('ในการใช้ประพรมน้ำมนต์ ชาวพุทธมีคติความเชื่อในพระรัตนตรัยว่าเป็นที่พึงของชาวพุทธและมีอานุภาพมากทั้งอานุภาพพุทธคุณ ธรรมคุณ และสังฆคุณ '),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(5),
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
                  child: const Text('น้ำพุทธมนต์',style: TextStyle(color: Colors.white,fontSize: 20)),
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
                                        child: Text('ฮู้',style: TextStyle(fontSize: 30),),
                                        alignment: Alignment.centerLeft,
                                      ),
                                      // รูปภาพ
                                      Container(
                                        child: Image.asset('assets/images/ft5.JPG'),
                                        alignment: Alignment.center,
                                      ),
                                      // เนื้อหา
                                      Container(
                                        child: Text('"ฮู้" นั้น มีลักษณะเป็นกระดาษมีที่ทั้งสีแดง สีเขียว หรือ สีเหลือง มาพร้อมกับข้อความตัวอักษรจีนที่เป็นวลีมงคล หรือ สัญลักษณ์ต่างๆ ซึ่งเชื่อว่าในปัจจุบันที่ทุกคนเห็นกันบ่อยก็คือ ‘ฮู้’ ที่จะมาในลักษณะแบบพิมพ์ลงบนกระดาษ เพื่อความสะดวกในการแจกให้กับผู้ที่ไปกราบไหว้ที่ศาลเจ้านั้นๆ แต่ก็จะมีบ้างที่จะเห็นการเขียนยันต์ฮู้ด้วยหมึก'),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(5),
                                      ),
                                      Container(
                                        child: Text('โดยจุดประสงค์ของ ‘ฮู้’ นั้น หลักๆ ใช้เพื่อปกป้องภยันตราย, รักษาอาการเจ็บไข้ได้ป่วย, ใช้คุ้มครองให้แคล้วคลาดปลอดภัย, ใช้ขอโชคลาภ หรือ ความสำเร็จในธุรกิจ, ใช้ในการสอบ, ใช้เพื่อให้มีมนุษย์สัมพันธ์ดี, ใช้เกี่ยวกับการจัดฮวงจุ้ย, รวมไปถึงการใช้ไล่ผี  หรือไล่สิ่งอัปมงคล ด้วย'),
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(5),
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
                  child: const Text('ฮู้',style: TextStyle(color: Colors.white,fontSize: 20)),
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
