import 'package:flutter/material.dart';
import 'package:test_app/next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  List<String> titleList = ["Amazon","楽天","Yahoo!"];

  // void _incrementCounter() {
  //   setState(() {
      
  //   });
  // }

  @override
  // アプリのUIを作成している部分
  // ウィジェット＝部品=大文字
  // プロパティ=小文字
  Widget build(BuildContext context) {
    return Scaffold(
      // 上のバーの部分
      appBar: AppBar(
        title: Text("パスワードポスト"),
      ),
      body: ListView.builder(
        itemCount: titleList.length,
        itemBuilder: (BuildContext context, int i){
          return   Column(
            children :[
              ListTile(
                onTap: () {
                  // 画面遷移の処理を記述
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NextPage(titleList[i])));
                },
                leading: Icon(Icons.vpn_key),
                title: Text(titleList[i]),
             ),
             Divider(thickness: 2),
            ],
          );
        },
        ),


      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ボタンが押された時の処理
          titleList.add("Google");
          print(titleList);
          setState(() {
            
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}








