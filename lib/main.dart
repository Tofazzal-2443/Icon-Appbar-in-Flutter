import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Icon appbar"),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          )),
          actions: [
            IconButton(
              icon: Icon(
                Icons.comment,
                color: Colors.black,
              ),
              tooltip: "comment Icon",
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.settings),
              tooltip: "Setting Icon",
              onPressed: () {},
            )
          ],
          elevation: 50.0,
          backgroundColor: Colors.green,
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: "Menu Icon",
            onPressed: () {},
          ),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: Center(
          child: Text(
            "1 page",
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
