import 'package:flutter/material.dart';
import 'user.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginPageState();
  }
}
class LoginPageState extends State<LoginPage>{
     final User user = new User(); // mutable property for StatefulWidget
  @override
  Widget build(BuildContext context) {

 
    // how to change this object? use "setstate" fuction
    



    final TextField _txtUserName = new TextField(
      decoration: new InputDecoration(
        hintText: 'Enter your userName',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.text,
      autocorrect: false, // cái này giúp bỏ đi bàn phím hỗ trợ k cần thiết
      onChanged: (text){
        setState(() {
          this.user.userName = text;
        });
      },
    );

   final TextField _txtEmail = new TextField(
      decoration: new InputDecoration(
        hintText: 'Enter your Email',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.emailAddress,
      autocorrect: false, // cái này giúp bỏ đi bàn phím hỗ trợ k cần thiết
        onChanged: (text){
        setState(() {
          this.user.email = text;
        });
      },
    );

final TextField _txtPassword = new TextField(
      decoration: new InputDecoration(
        hintText: 'Enter your PassWord',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.visiblePassword,
      autocorrect: false, // cái này giúp bỏ đi bàn phím hỗ trợ k cần thiết
      obscureText: true, // giup pass word hiện thị các dấu chấm
        onChanged: (text){
        setState(() {
          this.user.password = text;
        });
      },
    );




    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Login Page"),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            margin: new EdgeInsets.only(left: 20.0,right: 20.0,bottom: 10.0),
            decoration: new BoxDecoration(
              color: new Color.fromARGB(255, 240, 240, 240),
              border: new Border.all(width: 1.2,color: Colors.black12),
              borderRadius: const BorderRadius.all(const Radius.circular(6.0))
            ),
            child: _txtUserName,
          ),
             new Container(
            margin: new EdgeInsets.only(left: 20.0,right: 20.0,bottom: 10.0),
            decoration: new BoxDecoration(
              color: new Color.fromARGB(255, 240, 240, 240),
              border: new Border.all(width: 1.2,color: Colors.black12),
              borderRadius: const BorderRadius.all(const Radius.circular(6.0))
            ),
            child: _txtEmail,
          ),
             new Container(
            margin: new EdgeInsets.only(left: 20.0,right: 20.0,bottom: 10.0),
            decoration: new BoxDecoration(
              color: new Color.fromARGB(255, 240, 240, 240),
              border: new Border.all(width: 1.2,color: Colors.black12),
              borderRadius: const BorderRadius.all(const Radius.circular(6.0))
            ),
            child: _txtPassword,
          ),
          new Container(
            margin: new EdgeInsets.only(left: 20.0,right: 20.0),
            child: new Row(
            children: <Widget>[ new Expanded(child: new RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: new Text("Login"),
                onPressed: (){
                  print('UserName: ${user.userName},' 'Email: ${user.email},' 'Password: ${user.password}');
                },
              ))
            ],
          ),
          )

        ],
      )
    );
  }
}