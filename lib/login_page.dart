import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:valorant/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  String? email;
  String? password;

  bool isLoading = false;

  void startLoading() {
    isLoading = true;
  }

  void endLoading() {
    isLoading = false;
  }

  void setEmail(String email) {
    email = email;
  }

  void setPassword(String password) {
    password = password;
  }

  Future login() async {
    this.email = emailController.text;
    this.password = passwordController.text;

    if (password == null || password == "") {}

    if (email == null || email == "") {}

    if (email != null && password != null) {
      // ログイン
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);

      final currentUser = FirebaseAuth.instance.currentUser;
      final uid = currentUser!.uid;
      final snackBar = SnackBar(
        backgroundColor: Colors.blue,
        content: Text('ログインしました'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    email = emailController.text;
    password = passwordController.text;
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // メールアドレスの入力フォーム
                Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 0, 25.0, 0),
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(labelText: "メールアドレス"),
                      onChanged: (String text) {
                        setState(() {
                          setEmail(text);
                        });
                      },
                    )),
                // パスワードの入力フォーム
                Padding(
                  padding: EdgeInsets.fromLTRB(25.0, 0, 25.0, 10.0),
                  child: TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(labelText: "パスワード（8～20文字）"),
                    obscureText: true, // パスワードが見えないようRにする
                    maxLength: 20, // 入力可能な文字数
                    onChanged: (String text) {
                      setState(() {
                        setPassword(text);
                      });
                    },
                  ),
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        startLoading();
                        try {
                          await login();
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'user-not-found') {
                            _userNotFoundDialog(context);
                          } else if (e.code == 'invalid-email') {
                            _invalidEmailDialog(context);
                          } else if (e.code == 'wrong-password') {
                            _wrongPassword(context);
                          }
                          if (email == null || email == "") {
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext dialogContext) {
                                return AlertDialog(
                                  title: Text('メールアドレスが入力されていません'),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text('OK'),
                                      onPressed: () {
                                        Navigator.pop(dialogContext);
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        }
                        endLoading();
                      },
                      child: Text(
                        'ログイン',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () async {
                        await Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => RegisterPage(),
                            fullscreenDialog: true,
                          ),
                        );
                      },
                      child: Text(
                        'アカウントを作成する',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            if (isLoading)
              Container(
                color: Colors.black54,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

void _userNotFoundDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        title: Text('ユーザーが見つかりません'),
        actions: <Widget>[
          TextButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.pop(dialogContext);
            },
          ),
        ],
      );
    },
  );
}

void _invalidEmailDialog(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text('メールアドレスが正しくありません'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.pop(dialogContext);
              },
            ),
          ],
        );
      });
}

void _wrongPassword(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text('パスワードが正しくありません'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.pop(dialogContext);
              },
            ),
          ],
        );
      });
}
