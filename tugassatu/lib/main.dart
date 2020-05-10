import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  /* Ganti dengan Navigator Push
  final routes = <String, WidgetBuilder>{
   HalamanLogin.tag: (context) => HalamanLogin(),
   HalamanRegister.tag: (context) => HalamanRegister(),
  };
*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Pertama',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HalamanLogin(),
      //routes: routes,
    );
  }
}
class HalamanLogin extends StatelessWidget {
 // static String tag = 'HalamanLogin';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selamat Datang"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(hintText: "Masukan Username", icon: Icon(Icons.account_circle)),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: "Masukan Password", icon: Icon(Icons.lock)),
              ),
              RaisedButton(
                child: Text("Login"),
                color: Colors.lightBlue,
                onPressed: (){},
                //onPressed: (){Navigator.of(context).pushNamed(HalamanLogin.tag);},
              ),
              FlatButton(
                child: Text(
                  'Register?',
                  style: TextStyle(color: Colors.black54),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HalamanRegister()))
                ;},
                //onPressed: (){Navigator.of(context).pushNamed(HalamanRegister.tag);},
              )
            ],
          ),
        ),
      ),
    );
  }
}
class HalamanRegister extends StatelessWidget {
  //static String tag = 'HalamanRegister';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Silahkan Register Terlebih Dahulu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(hintText: "Masukan Username", icon: Icon(Icons.account_circle)),
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Masukan Email", icon: Icon(Icons.email)),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: "Masukan Password", icon: Icon(Icons.lock)),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: "Masukan Password Kembali", icon: Icon(Icons.lock)),
              ),
              RaisedButton(
                child: Text("Register"),
                color: Colors.lightBlue,
                onPressed: (){},
                //onPressed: (){Navigator.of(context).pushNamed(HalamanLogin.tag);},
              )
            ],
          ),
        ),
      ),
    );
  }
}

