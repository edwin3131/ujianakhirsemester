import 'package:flutter/material.dart';

class Berandaadmin extends StatefulWidget {
  @override
  _BerandaadminState createState() => _BerandaadminState();
}

class _BerandaadminState extends State<Berandaadmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Beranda Admin"),
      ),
      body: Center(
        child: Text("Ini Beranda Admin"),
      )
    );
  }
}