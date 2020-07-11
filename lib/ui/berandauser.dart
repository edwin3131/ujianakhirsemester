import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Berandauser extends StatefulWidget {
  @override
  _BerandauserState createState() => _BerandauserState();
}

class _BerandauserState extends State<Berandauser> {
  String id, nama, email, photo:
  int level=o;
  getPref() async{
    SharedPreferences preferences=await SharedPreferences.getInstance();
    setState(() {
      level=preferences.get Int("level");
      level=preferences.get Int("id");
      level=preferences.get Int("nama");
      level=preferences.get Int("email");
      level=preferences.get Int("photo");
    });
  }
  signOut() async{
    SharedPreferences preferences=await SharedPreferences.getInstance();
    setState(() {
      preferences.setIn("level", 0);
    });
    Navigator.push(context, MaterialPageRoute(
      builder: (BuildContext context)=>Login()
    ));
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPref();
  }
  @override
  Widget build(BuildContext context) {
    switch (level1) {
      case 1:
        return Berandaadmin();
        break;
      case 2:
            return Scaffold(
          appBar: AppBar(
            title: Text("Beranda User"),
          ),
          body: Center(
            child: Text("Ini Beranda User"),
          )
        );
        break;
      default:
      return Login();
    }
  }
}