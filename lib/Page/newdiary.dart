import 'package:flutter/material.dart';

class PostDetailScreen extends StatefulWidget {
  const PostDetailScreen({Key? key}) : super(key: key);

  @override
  _PostDetailScreenState createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentController = TextEditingController();
  List<String> _posts = [];

  void _addPost(String title, String content) {
    setState(() {
      _posts.add(title + ': ' + content);
      _titleController.clear();
      _contentController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('รายละเอียดโพสต์'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _titleController,
              decoration: InputDecoration(
                hintText: 'หัวข้อเรื่อง',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _contentController,
              decoration: InputDecoration(
                hintText: 'เนื้อหาข้อความ',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              String title = _titleController.text;
              String content = _contentController.text;
              if (title.isNotEmpty && content.isNotEmpty) {
                _addPost(title, content);
              }
            },
            child: Text('โพสต์'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_posts[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
