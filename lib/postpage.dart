import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  final String agent;
  final myController = TextEditingController();
  PostPage(this.agent);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          widget.agent,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (text) {
                    text = text;
                  },
                  minLines: 9,
                  maxLines: 9,
                  enabled: true,
                  cursorColor: Colors.pink,
                  cursorRadius: Radius.circular(4.0),
                  cursorWidth: 4.0,
                  decoration: InputDecoration(
                    hintText: 'コメント',
                    alignLabelWithHint: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 5,
                        color: Colors.pink,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 5,
                          color: Colors.pink,
                        )),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  '決定',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  primary: Colors.black, //ボタンの背景色
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
