import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "GoogleSans",
        buttonColor: Colors.blue
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          child: ListView(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            children: <Widget>[
              SizedBox(height: 30.0),
              Row(
                children: <Widget>[
                  SizedBox(width: 10.0),
                  Text('Login',
                      style:
                      TextStyle(fontSize: 50.0, fontFamily: 'GoogleSans')),
                  SizedBox(width: 150.0),
                  Hero(
                    tag: 'sd',
                    child: Image(
                      image: AssetImage('images/logo.png'),
                      width: 130.0,
                      height: 130.0,
                    ),
                  )
                ],
              ),
              SizedBox(height: 50.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  filled: true,
                  fillColor: Colors.white12,
                  suffixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  filled: true,
                  fillColor: Colors.white12,
                  suffixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
              ),
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: Text('Cancel',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'GoogleSans')),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: () {},
                  ),
                  RaisedButton(
                    child: Text('Sign In',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'GoogleSans')),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: () {},
                  ),
                ],
              ),
              FlatButton(
                child: Text('Not a user? Click here'),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                onPressed: () {},
              ),
            ],
          )),
    );
  }

}
