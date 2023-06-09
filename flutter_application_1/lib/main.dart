import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cuerpo(),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"),
            fit: BoxFit.cover)),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[titulo(), nombre(), icon()],
      ),
    ),
  );
}

Widget titulo() {
  return Text(
    "Hello World",
    style: TextStyle(
      color: Colors.white,
      fontSize: 55.0,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget nombre() {
  return Text(
    "Bienvenidos a Moviex",
    style: TextStyle(
      color: Colors.white,
    fontSize: 30.0,
    ),
  );
}

Widget icon() {
  return Icon(Icons.account_circle, size: 100, color: Colors.white);
}