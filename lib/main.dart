import 'package:amazon_clone/UI/product_list.dart';
import 'package:amazon_clone/UI/tab_drawer.dart';
import 'package:amazon_clone/UI/top_bar.dart';
import 'package:amazon_clone/models/global.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(child: DrawerTab()),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: darkBlue,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  child: SingleChildScrollView(
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 101,
                      child: Image(
                          image:
                              AssetImage('lib/assets/amazon-logo-white.png')),
                    ),
                  ],
                ),
              )),
              Container(
                  child: SingleChildScrollView(
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.mic, color: Colors.white),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.shopping_cart, color: Colors.white),
                      onPressed: () {},
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
        body: Container(
            constraints: BoxConstraints.expand(),
            color: Colors.grey,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  TopBar(),
                  Container(
                    height: MediaQuery.of(context).size.height - 140,
                    child: ProductList(),
                  )
                ],
              ),
            )));
  }
}
