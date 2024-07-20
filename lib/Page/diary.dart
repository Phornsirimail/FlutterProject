import 'package:flutter/material.dart';

import '../database/model.dart';
import 'package:project_projai/database/database_helper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



// ignore: must_be_immutable
class DiaryScreen extends StatefulWidget {
  DiaryScreen({Key? key, required this.dbHelperpost}) : super(key: key);
  DatabaseHelperPost dbHelperpost;

  @override
  _DiaryScreenState createState() => _DiaryScreenState();
}

class _DiaryScreenState extends State<DiaryScreen> {
  // add List of Product variable for List creation
  List<Post> posts = [];

  Future<dynamic> _showConfirmDialog(BuildContext context, String action) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text('Do you want to $action this post?'),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, true);
                    },
                    child: const Text('Yes',style: TextStyle(color: Colors.white),)),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, false);
                    },
                    child: const Text('No',style: TextStyle(color: Colors.white),))
              ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () async {
                await ModalPostForm(
                  dbHelperpost: widget.dbHelperpost,
                ).showModalInputForm(context);
              },
              icon: const Icon(Icons.add_circle, color: Colors.orange)),
          

        ],
        title: Center(child: const Text('Diary',style: TextStyle(fontFamily: 'Borel',color: Colors.purple,fontSize: 30),)),
      ),
      //
      // *** Edit #7 *** => Add StreamBuilder for synchronize with Firebase cloud database
      //
      body: Container(
        
            decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/bgg.JPG'), // ระบุตำแหน่งของไฟล์ GIF ใน assets
            fit: BoxFit.cover, // ปรับขนาดภาพให้เต็ม Container
          ),
        ),
        child: StreamBuilder<QuerySnapshot>(
            stream: widget.dbHelperpost.getStream(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }
              posts.clear();
              for (var element in snapshot.data!.docs) {
                posts.add(Post(
                    head: element.get('head'),
                    date: element.get('date'),
                    story: element.get('story'),
                    favorite: element.get('favorite'),
                    referenceId: element.id));
              }
      
              return ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  //
                  // *** Edit #8 *** => Add swipe feature to delete item
                  //
                  return Dismissible(
                    key: UniqueKey(),
                    background: Container(color: Colors.blue),
                    secondaryBackground: Container(
                      color: Colors.red,
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 20),
                      child: const Icon(Icons.delete_forever_outlined,
                      color: Colors.white, size: 30)) ,
                    onDismissed: (direction) {
                      if (direction == DismissDirection.endToStart) {
                        widget.dbHelperpost.deletePost(posts[index]);
                      }
                    },
                    confirmDismiss: (direction) async {
                      if (direction == DismissDirection.endToStart) {
                        return await _showConfirmDialog( context, 'Delete');
                      }
                      return false;
                    },
                    child: Container(
                      margin: EdgeInsets.all(8), // ระยะห่างขอบของ Card
        decoration: BoxDecoration(
          border: Border.all(color: Colors.purple), // สีขอบของ Card
          borderRadius: BorderRadius.circular(8), // ขอบเรียกเข้ามาเพื่อทำให้มีขอบโค้ง
          boxShadow: [
        BoxShadow(
          color: Colors.purple.withOpacity(0.5), // สีเงา
          spreadRadius: 3, // ความกว้างของเงา
          blurRadius: 5, // ความคมของเงา
          offset: Offset(0, 3), // ตำแหน่งเงา
        ),
          ],
        ),
                      child: Card(
                      child: ListTile(
                        title: Text(posts[index].head),
                        subtitle:
                            Text('วัน/เดือน/ปี: ${posts[index].date.toString()}'),
                        trailing: posts[index].favorite == 1
                            ? const Icon(Icons.bookmark, color: Colors.orangeAccent)
                            : null,
                        onTap: () async {
                          var result = await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailScreen(postdetail: posts[index]),
                            ),
                          );
                          if (result != null) {
                            posts[index].favorite = result;
                            widget.dbHelperpost.updatePost(posts[index]);
                          }
                          ;
                        },
                        
                      ),
                                    ),
                    ),  ) ;
                },
              );
            }),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.postdetail}) : super(key: key);

  final Post postdetail;

  @override
  Widget build(BuildContext context) {
    var result = postdetail.favorite;
    return Scaffold(
      appBar: AppBar(flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.orange], // สีที่คุณต้องการใช้ในไล่สีพื้นหลัง
              ),
            ),),
        title:  Text(postdetail.head,style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(10),
            child: Text(postdetail.story),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10, top: 20.0),
            child: Text('วัน/เดือน/ปี: ${postdetail.date.toString()}'),
          ),
          Container(
            padding: const EdgeInsets.only(top: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(120, 40),
                      primary: postdetail.favorite == 1
                          ? Color.fromARGB(255, 215, 201, 233)
                          : Color.fromARGB(255, 145, 2, 223)),
                  child: postdetail.favorite == 1
                      ? const Text('Unbookmark',style: TextStyle(color: Colors.purple),)
                      : const Text('Bookmark',style: TextStyle(color: Colors.white),),
                  onPressed: () {
                    result = postdetail.favorite == 1 ? 0 : 1;
                    Navigator.pop(context, result);
                  },
                ),
                ElevatedButton(
                  child: const Text('Close',style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(120, 40),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class ModalPostForm {
  //
  // *** Edit #3 *** => parameter of ModalProductForm
  //
  ModalPostForm({Key? key, required this.dbHelperpost});

  DatabaseHelperPost dbHelperpost;

  

  String _head = '', _story = '',_date = '';
  
  final int _favorite = 0;

  Future<dynamic> showModalInputForm(BuildContext context) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ListTile(
                  title: Center(
                    child: Text(
                      'Post Form',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(15),
                      child: TextFormField(
                        initialValue: '',
                        autofocus: true,
                        decoration: const InputDecoration(
                          labelText: 'หัวเรื่อง',
                          hintText: 'โปรดใส่หัวข้อ',
                        ),
                        onChanged: (value) {
                          _head = value;
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(15),
                      child: TextFormField(
                        initialValue: '',
                        decoration: const InputDecoration(
                          labelText: 'วัน/เดือน/ปี',
                          hintText: 'ว/ด/ป',
                        ),
                        onChanged: (value) {
                          _date = value;
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(15),
                      child: TextFormField(
                        initialValue: '',
                        decoration: const InputDecoration(
                          labelText: 'เรื่องราว',
                          hintText: 'input description of product',
                        ),
                        onChanged: (value) {
                          _story = value;
                        },
                      ),
                    ),
                    
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: ElevatedButton(
                          child: const Text('บันทึก'),
                          onPressed: () async {
                            var newPost = Post(
                                head: _head,
                                date: _date,
                                
                                story: _story,
                                favorite: _favorite,
                                referenceId: null);
                            await dbHelperpost.insertPost(newPost).then(
                                (value) => newPost.referenceId = value.id);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                    '${newPost.head} is inserted complete...'),
                              ),
                            );
                            Navigator.pop(context);
                          }),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}

