import 'package:flutter/material.dart';

class LoreScreen extends StatelessWidget {
  const LoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.orange], // สีที่คุณต้องการใช้ในไล่สีพื้นหลัง
              ),
            ),),
        title: const Text('ความเชื่อ',style: TextStyle(color: Colors.white),),
      ),
      body: 
              Container(decoration: BoxDecoration(
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
                                            children:  [
                Container(
                      height: 50,
                      width: 200,
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
                                          child: Text('ผีแม่หม้าย',style: TextStyle(fontSize: 30),),
                                          alignment: Alignment.centerLeft,
                                        ),
                                        const SizedBox(height: 10),
                                        // รูปภาพ
                                        Container(
                                          child: Image.asset('assets/images/l1.GIF'),
                                          alignment: Alignment.center,
                                        ),
                                        const SizedBox(height: 10),
                                        // เนื้อหา
                                        Container(
                                          child: Text('"ผีแม่หม้าย" เป็นความเชื่อในวงการเชื้อสายศาสนาและวัฒนธรรมที่มีตำนานและเรื่องราวที่นิยมระหว่างประชากรในบางส่วนของโลก โดยเฉพาะในภูมิภาคที่มีความเชื่อในวิญญาณและนิรันดร์ เรื่องราวเกี่ยวกับผีแม่หม้ายมักเป็นเรื่องผีที่มีลักษณะต่างๆ ในแต่ละวัฒนธรรม แต่ส่วนใหญ่มักเป็นเรื่องราวเกี่ยวกับวิญญาณของผู้หญิงที่เสียชีวิต ซึ่งมีการเชื่อว่าวิญญาณนี้ยังคงหลงเหลือในโลกของมนุษย์หลังจากเสียชีวิต',overflow: TextOverflow.clip,),
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.all(5),
                                        ),
                                        Container(
                                          child: Text('ผีแม่หม้ายมักถูกบอกเป็นผีที่มีความกรุณาและดีใจต่อบุตรชายหรือหลานชายของพวกเธอ และบางครั้งอาจช่วยเหลือหรือคุ้มครองคนที่มีพฤติกรรมที่ดีต่อครอบครัวของพวกเธอ',overflow: TextOverflow.clip,),
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.all(5),
                                        ),
                                        Container(
                                          child: Text('ความเชื่อในผีแม่หม้ายมักเป็นส่วนหนึ่งของที่มาของความเคารพและบูชาวิญญาณของบรรพบุรุษที่เสียชีวิตแล้วในวัฒนธรรมบางแห่ง เชื่อว่าการบูชาผีแม่หม้ายอาจช่วยให้ผู้ตายมีความสุขในโลกหลังความตายและทำให้ครอบครัวปลอดภัยจากบางปัญหาหรือความรุนแรงที่อาจมากับวิญญาณของผู้ตายนั้น ในบางกรณีผีแม่หม้ายมักถูกเคารพโดยการจัดงานเที่ยวที่สมพร้อมให้กับเธอ เช่น เทศกาลผีแม่หม้ายหรือการสวมใส่เสื้อผ้าหรือของที่ระลึกเพื่อเคารพและปฏิบัติพิธีกรรมต่อเธอ',overflow: TextOverflow.clip,),
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
                      child: const Text('ผีแม่หม้าย',style: TextStyle(color: Colors.white,fontSize: 20)),
                      style: ButtonStyle(
                              padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                              backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  
                                ),
                              ),
                              
                            ),
                    ),
                  ),
                 
                ),
                const SizedBox(height: 20),
                Container(
                      height: 50,
                      width: 200,
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
                                          child: Text('ปอบ',style: TextStyle(fontSize: 30),),
                                          alignment: Alignment.centerLeft,
                                        ),
                                        const SizedBox(height: 20),
                                        // รูปภาพ
                                        Container(
                                          child: Image.asset('assets/images/l2.GIF'),
                                          alignment: Alignment.center,
                                        ),
                                        const SizedBox(height: 20),
                                        // เนื้อหา
                                        Container(
                                          child: Text('"ผีปอบ" หมายถึงวิญญาณของผู้ตายที่ยังคงหลงเหลือในโลกของมนุษย์หลังจากเสียชีวิต ผีปอบมักถูกบอกเป็นผีที่มีความเดือดร้อน โรคร้ายแรง หรือความไม่พอใจและมีความกระตือรือร้นที่จะกลับมาสร้างปัญหาหรือความเสียหายให้กับมนุษย์'),
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.all(5),
                                        ),
                                        Container(
                                          child: Text('ความเชื่อในผีปอบมักแตกต่างกันขึ้นอยู่กับวัฒนธรรมและศาสนาของแต่ละท้องถิ่น และมักมีประเพณีหรือพิธีกรรมในการบรรเทาความกระตือรือร้นของผีปอบหรือในการช่วยผีปอบเดียวกัน'),
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.all(5),
                                        ),
                                        Container(
                                          child: Text('ในบางกรณี ผีปอบอาจถูกเรียกร้องให้ปลดปล่อยจากความเดือดร้อนหรือความเครียดที่ทำให้มีพฤติกรรมที่ไม่พอใจ และการทำพิธีหรือส่งเสริมให้ผีปอบหายไปจากโลกของมนุษย์'),
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.all(5),
                                        ),
                                        Container(
                                          child: Text('ผีปอบมักถูกกล่าวถึงในเรื่องราวของวิทยาศาสตร์สังคมและวัฒนธรรม และมักนำเสนอในรูปแบบของนวนิยาย ภาพยนตร์ หรือภาพยนตร์เรื่องสยองขวัญเพื่อสร้างความตื่นเต้นและบรรยากาศของความเกรียนกรานและสยองขวัญในวงการบันเทิง'),
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
                      child: const Text('ปอบ',style: TextStyle(color: Colors.white,fontSize: 20)),
                      style: ButtonStyle(
                              padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                              backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  
                                ),
                              ),
                              
                            ),
                    ),
                  ),
                 
                ),
                const SizedBox(height: 20),
                Container(
                      height: 50,
                      width: 200,
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
                                          child: Text('ผีโพง',style: TextStyle(fontSize: 30),),
                                          alignment: Alignment.centerLeft,
                                        ),
                                        const SizedBox(height: 30),
                                        // รูปภาพ
                                        Container(
                                          child: Image.asset('assets/images/l4.GIF'),
                                          alignment: Alignment.center,
                                        ),
                                        const SizedBox(height: 30),
                                        // เนื้อหา
                                        Container(
                                          child: Text('"ผีโพง" เป็นคำที่ใช้ในท้องถิ่นในประเทศไทยเพื่ออธิบายเหตุการณ์หรือปรากฏการณ์ที่คล้ายกับเหตุการณ์ผีหรือปัญหาที่ไม่สามารถอธิบายได้ด้วยวิธีการทางวิทยาศาสตร์หรือตามประสบการณ์ทั่วไป ซึ่งความเชื่อในผีโพงมักเกี่ยวข้องกับวัฒนธรรมและความเชื่อทางวิจัยของท้องถิ่นในประเทศไทย มักเป็นเหตุการณ์ที่เกิดขึ้นในที่ที่ถูกเชื่อว่าเป็นสถานที่ของผีหรือวิญญาณ เช่น ป่าหรือพื้นที่สูง หรือในช่วงเวลาที่ถูกเชื่อว่าเป็นช่วงเวลาที่ผีมักปรากฏตัว เช่น ตอนกลางคืน'),
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.all(16),
                                        ),
                                        
                                        Container(
                                          child: Text('นักวิจัยและนักเรียนศาสนาชนิดต่างๆ มักมีความเชื่อในผีโพงและมีการศึกษาเรื่องราวเกี่ยวกับผีโพงเพื่อทำความเข้าใจเพิ่มเติม แต่การเชื่อในผีโพงมักมีลักษณะทางวัฒนธรรมและศาสนาที่เฉพาะตัว ความเชื่อในผีโพงมีลักษณะทางวัฒนธรรมและศาสนาที่เฉพาะตัวและสามารถแปรผันได้ตามภูมิภาคและบริบททางวัฒนธรรมที่แตกต่างกันในประเทศไทยและที่อื่นๆ ในภูมิภาคเอเชียตะวันออก'),
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.all(16),
                                        ),
                                        const SizedBox(height: 20),
                                        Container(
                                          child: Text('สำหรับคนที่เชื่อในผีโพง พวกเขามักใช้วิธีการพิเศษเพื่อป้องกันตัวจากผีโพงหรือเคล็ดลับในการแก้ปัญหาที่เกี่ยวข้องกับผีโพง เช่น การทำพิธีกรรม การนำเสนอของสัจว์ เป็นต้น ผีโพงมักถูกพูดถึงในเรื่องราวท้องถิ่นและมังสวิรัติที่สืบทอดต่อกันมาโดยระบบมุสลิมและศาสนาพุทธในประเทศไทยและประเทศใกล้เคียง'),
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
                      child: const Text('ผีโพง',style: TextStyle(color: Colors.white,fontSize: 20)),
                      style: ButtonStyle(
                              padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                              backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  
                                ),
                              ),
                              
                            ),
                    ),
                  ),
                 
                ),
                const SizedBox(height: 20),
                Container(
                      height: 50,
                      width: 200,
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
                                          child: Text('ผีพราย',style: TextStyle(fontSize: 30),),
                                          alignment: Alignment.centerLeft,
                                        ),
                                        const SizedBox(height: 30),
                                        // รูปภาพ
                                        Container(
                                          child: Image.asset('assets/images/l5.GIF'),
                                          alignment: Alignment.center,
                                        ),
                                        const SizedBox(height: 30),
                                        // เนื้อหา
                                        Container(
                                          child: Text('"ผีพราย" ส่วนใหญ่มีถิ่นที่อยู่อยู่ในน้ำมากกว่าบนบก เชื่อกันว่าเป็นจิตวิญญาณชนิดหนึ่งที่มีขนาดเล็กสุดตามลำดับของดวงจิตวิญญาณที่สามารถปรากฏให้รับรู้ได้ คือ พราย ภูติ ผี ปีศาจ ส่วนใหญ่มักมีที่มาจากการหมักหมมของซากพืชหรือสิ่งมีชีวิตขนาดเล็ก ๆ ดวงจิตวิญญาณนี้มักแสดงตนมีลักษณะเป็นผู้หญิงใส่เสื้อสีขาว เป็นดวงไฟเรืองแสง มักปรากฏตัวตอนเวลาหกโมงเช้า เที่ยงวัน หกโมงเย็น และเที่ยงคืน มักอยู่ในคลองหรือแม่น้ำที่มีผู้เสียชีวิตมากที่สุด เมื่อจับเหยื่อได้จะเอาร่างเหยื่อที่ไร้วิญญาณเป็นร่างของตน'),
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.all(5),
                                        ),
                                        Container(
                                          child: Text('ผีพรายส่วนมากจึงมักปรากฏร่างเป็นผู้หญิง นางไม้ บางทีก็จัดเข้าพวกผีพรายได้เช่นกัน เช่น พรายตะเคียน พรายตานี เป็นต้น หรือแม้แต่ผีทะเลหรือผีน้ำก็จัดเป็นพรายด้วยเช่นกัน เช่น พรายทะเล พรายน้ำ แต่ว่าพรายน้ำที่เป็นฟองผุด ๆ ขึ้นจากน้ำนั้น เป็นคนละอย่างกัน'),
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
                      child: const Text('ผีพราย',style: TextStyle(color: Colors.white,fontSize: 20)),
                      style: ButtonStyle(
                              padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                              backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  
                                ),
                              ),
                              
                            ),
                    ),
                  ),
                 
                ),
                const SizedBox(height: 20),
                Container(
                      height: 50,
                      width: 200,
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
                                          child: Text('ผีกะ',style: TextStyle(fontSize: 30),),
                                          alignment: Alignment.centerLeft,
                                        ),
                                        const SizedBox(height: 30),
                                        // รูปภาพ
                                        Container(
                                          child: Image.asset('assets/images/l3.GIF'),
                                          alignment: Alignment.center,
                                        ),
                                        const SizedBox(height: 30),
                                        // เนื้อหา
                                        Container(
                                          child: Text('"ผีกะ" เป็นผีพื้นบ้านทางภาคเหนือ ผีพวกนี้จะมีลักษณะคล้ายผีปอบ คือเข้าสิงในคน และชอบกินของสดของคาว'),
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.all(5),
                                        ),
                                        Container(
                                          child: Text('คนที่เลี้ยงผีกะ เป็นคนที่มีวิชาอาคม เล่นคุณเล่นของ ผีกะจะถูกเลี้ยงไว้ในหม้อดิน โดยมีผ้ายันต์สีขาวปิดปากหม้อไว้ โดยจะวางไว้บนเพดานบ้าน เจ้าของจะเซ่นผีกะด้วยไข่ดิบวันละฟอง'),
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.all(5),
                                        ),
                                        Container(
                                          child: Text('ผีกะ แต่เดิมคนที่เริ่มนำมาเผยแพร่ คือพวกลิเก หรือพวกนักดนตรี ที่แสดงการละเล่น เรียกว่าผีกะพระ-นาง ผีกะชนิดนี้มีลักษณะคล้ายวอกหรือค่าง ตัวเล็ก ๆ สองตัว มักจะนั่งบนบ่าคนเลี้ยง ผีกะชนิดนี้มีคุณประโยชน์ตรงที่ หากใครเลี้ยงไว้ไม่ว่านักแสดงจะขี้เหร่แค่ไหน พอตกกลางคืนมันจะเลียหน้า ทำให้ยิ่งดึกยิ่งงดงาม การเลี้ยงผีกะจึงเป็นแฟชั่นของนักแสดงทางภาคเหนือในช่วงหนึ่งและเริ่มแพร่หลายสู่ภาคเหนือในจังหวัดต่าง ๆ จนกระทั่งแยกเป็นหลายชนิด ผีกะมีคุณอนันต์แต่ก็มีโทษมหันต์ หากใครเลี้ยงไม่ดี ปล่อยให้ผีกะอด ๆอยาก ๆ มันก็จะทำให้เจ้าของกลายสภาพเป็นกึ่งคนกึ่งภูติ ชอบสิงสู่ชาวบ้านกินตับไตไส้พุง ต้องหาหมอผีมาไล่ออกไปเป็นประจำ'),
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
                      child: const Text('ผีกะ',style: TextStyle(color: Colors.white,fontSize: 20)),
                      style: ButtonStyle(
                              padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                              backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  
                                ),
                              ),
                              
                            ),
                    ),
                  ),
                 
                ),
                
                                              // หัวข้อ
                                              
                                              
                                            ],
                                            
                                          ),
                                        ),
                                        
                                      ),
                                      
                                    ),
                                  );
                                },
                              );
                            },
                            child: const Text('เหนือและอีสาน',style: TextStyle(color: Colors.white,fontSize: 20)),
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
                                          child: Text('ญิน',style: TextStyle(fontSize: 30),),
                                          alignment: Alignment.centerLeft,
                                        ),
                                        const SizedBox(height: 30),
                                        // รูปภาพ
                                        Container(
                                          child: Image.asset('assets/images/l6.GIF'),
                                          alignment: Alignment.center,
                                        ),
                                        const SizedBox(height: 30),
                                        // เนื้อหา
                                        Container(
                                          child: Text('โดยทั่วไปแล้ว ลักษณะของญิน หรือ ดีญิน จะคล้ายคลึงกับผีหรือปีศาจตามความเชื่อของศาสนาหรือลัทธิอื่น หากแต่ญินกำเนิดมาจากไฟไร้ควันที่อัลลอฮ์ทรงสร้างขึ้น และกำเนิดก่อนมนุษย์คนแรกคืออาดัมเป็นเวลานานมาก'),
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.all(16),
                                        ),
                                        Container(
                                          child: Text('ญินเกิดมาเพื่อสร้างความดี (อิบาดะฮ์) ถวายแด่อัลลอฮฺ ญินอาศัยอยู่บนโลกมนุษย์ แต่อยู่อีกมิติหนึ่ง มีสังคมเหมือนกับมนุษย์ มีการดำเนินชีวิต มีเกิด มีตาย มีปัญญา มีศรัทธา มีปฏิเสธ มีความสามารถเหนือมนุษย์ สามารถทำในสิ่งที่หลากหลายมากกว่า อายุยืนยาวมากกว่ามาก สามารถบินได้ ปรากฏกายได้ จำแลงกายทั้งในรูปมนุษย์และสัตว์ ญินสามารถมองเห็นมนุษย์ได้ แต่มนุษย์จะมองไม่เห็นญิน เว้นแต่ญินจะปรากฏร่างให้เห็นเอง'),
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.all(16),
                                        ),
                                        Container(
                                          child: Text('โดยรากศัพท์ของคำว่าญิน หมายถึง "ปกปิดซ่อนเร้น" ญินสามารถหลอกล่อหรือหลอกลวงมนุษย์ให้หลงผิดไปได้ด้วย หากผู้ใดที่พยายามติดต่อหรือสื่อสารกับญินจะสุ่มเสี่ยงมากต่อการผิดต่อหลักศาสนาหรือกลายเป็นผู้นอกรีต เนื่องจากเป็นการเข้าไปสู่ไสยศาสตร์'),
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
                      child: const Text('ศาสนาอิสลาม',style: TextStyle(color: Colors.white,fontSize: 20)),
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
                      height: 50,
                      width: 200,
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
                                          child: Text('ซาตาน',style: TextStyle(fontSize: 30),),
                                          alignment: Alignment.centerLeft,
                                        ),
                                        // รูปภาพ
                                        Container(
                                          child: Image.asset('assets/images/l7.GIF'),
                                          alignment: Alignment.center,
                                        ),
                                        // เนื้อหา
                                        Container(
                                          child: Text('ในศาสนาคริสต์ คำว่า "ซาตาน" (Satan) หมายถึงผู้ปฏิเสธเทียนพระเจ้าและถูกพิษสวรรค์ออกจากสวรรค์ ซึ่งเป็นบุคคลสัญลักษณ์ของความชั่วร้ายและปลายปีนาระหว่างดีกับชั่ว เขาเรียกอย่างอื่นอีกชื่อหนึ่งว่า "ลูซิเฟอร์" (Lucifer) หรือ "เอนเจิล" (Angel of Light) และเคยเป็นนายแสดงสวรรค์ก่อนที่จะตกอยู่ในความหลอกลวงและความโอ้อวดของเขา'),
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.all(5),
                                        ),
                                        Container(
                                          child: Text('ซาตานถูกอธิบายว่าเป็นศัตรูของความดีและความเชื่อในศาสนาคริสต์ ที่พยายามหลอกลวงและทำให้มนุษย์ตกเข้าไปในความชั่วร้าย'),
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.all(5),
                                        ),
                                        Container(
                                          child: Text('ในคริสตนิกาและคริสตนิกาทางประสาทเวสต์, ซาตานถูกพิจารณาว่าเป็นปรากฏการณ์ของความชั่วร้ายและความบั่นทอนความศรัทธา มีบทบาทในเรื่องราวของการทดสอบความศรัทธาและความเชื่อของมนุษย์ และเป็นผู้ยั่วยุของคนในส่วนที่ยิ่งใหญ่ของคริสตนิกาที่เชื่อในมนุษย์ล่วงละเมิด นอกจากนี้ ซาตานยังมีบทบาทในความเชื่อเรื่องการอุดมการณ์และการต่อสู้ในสงครามของความดีกับความชั่ว'),
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
                      child: const Text('ซาตาน',style: TextStyle(color: Colors.white,fontSize: 20)),
                      style: ButtonStyle(
                              padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                              backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
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
                      width: 200,
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
                                          child: Text('วิญญาณ',style: TextStyle(fontSize: 30),),
                                          alignment: Alignment.centerLeft,
                                        ),
                                        const SizedBox(height: 30),
                                        // รูปภาพ
                                        Container(
                                          child: Image.asset('assets/images/l8.GIF'),
                                          alignment: Alignment.center,
                                        ),
                                        const SizedBox(height: 30),
                                        // เนื้อหา
                                        Container(
                                          child: Text('ในศาสนาคริสต์, คำว่า "วิญญาณ" (spirit) มักมีหลายความหมายและอาจถูกใช้ในบริบทต่าง ๆ ได้ตามที่ใช้งาน อย่างไรก็ดี, ในบางกรณี, คำว่า "วิญญาณ" ในศาสนาคริสต์อาจหมายถึง:'),
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.all(16),
                                        ),
                                        Container(
                                          child: Text('วิญญาณมนุษย์: วิญญาณมนุษย์คือส่วนที่ไม่ตายของมนุษย์ ศาสนาคริสต์นับถือว่ามนุษย์มีอิสระในการตัดสินใจและมีวิญญาณที่สามารถรับความสัมผัสได้หลังจากความตาย วิญญาณมนุษย์เชื่อว่าจะต้องบอกบัญญัติของพระเจ้าและมีการตัดสินใจเกี่ยวกับสิ่งต่าง ๆ ในชีวิตที่ต่อมา'),
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.all(16),
                                        ),
                                        Container(
                                          child: Text('วิญญาณแห่งพระเจ้า: ในศาสนาคริสต์, วิญญาณของพระเจ้าหมายถึงส่วนของพระเจ้าที่มีการติดต่อกับมนุษย์ วิญญาณแห่งพระเจ้าถือเป็นส่วนที่ให้พระเจ้าแสดงความคิดดีและคำแนะนำในชีวิตมนุษย์ และเป็นแหล่งความหวังและกำลังในสายชีวิตของคนคริสต์'),
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.all(16),
                                        ),
                                        Container(
                                          child: Text('วิญญาณแห่งความดีและความชั่ว: วิญญาณในบางกรณีอาจหมายถึงความแตกต่างระหว่างความดีและความชั่วในมนุษย์ ความดีและความชั่วถือเป็นส่วนหนึ่งของการตัดสินใจและการกระทำของมนุษย์ วิญญาณนี้ช่วยกำหนดความเป็นอยู่และพฤติกรรมของคน'),
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.all(16),
                                        ),
                                        Container(
                                          child: Text('วิญญาณบาปและวิญญาณสวรรค์: ในศาสนาคริสต์, วิญญาณบาปมักหมายถึงการที่มนุษย์ละเมิดสิทธิ์และพระบัญญัติของพระเจ้า ในขณะที่วิญญาณสวรรค์คือการมีความสัมพันธ์และความปกครองของพระเจ้า ความเชื่อในวิญญาณบาปและวิญญาณสวรรค์มีบทบาทสำคัญในเรื่องราวเกี่ยวกับบาปและการฟื้นตัวในศาสนาคริสต์'),
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
                      child: const Text('วิญญาณ',style: TextStyle(color: Colors.white,fontSize: 20)),
                      style: ButtonStyle(
                              padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                              backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  
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
                                
                              ),
                            );
                          },
                        );
                      },
                      child: const Text('ศาสนาคริสต์',style: TextStyle(color: Colors.white,fontSize: 20)),
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
                    ],
              
                  ),
                ),
              ),
      );
      
    
  }
}
