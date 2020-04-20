import 'package:amazon_clone/models/global.dart';
import 'package:flutter/material.dart';

class DrawerTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView
        (
                  child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 50, left: 10),
              constraints: BoxConstraints.expand(height: 80),
              child: Text("Hello. Sign In", style: productTitleStyle),
              color: darkBlue,
            ),
            Container(
              child:SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FlatButton(
                      child: Text("Home"),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  FlatButton(
                      child: Text("Shop by Category"),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  FlatButton(
                      child: Text("Your Orders"),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  FlatButton(
                      child: Text("Your Wish List"),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  FlatButton(
                      child: Text("Your Account"),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  FlatButton(
                      child: Text("Amazon Pay"),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  FlatButton(
                      child: Text("Try Prime"),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  FlatButton(
                      child: Text("Sell on Amazon"),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  FlatButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Program and Features"),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                          )
                        ],
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ],
              ),
            )
            ),
            Divider(
              thickness: 2,
            ),
            Container(
             // child: SingleChildScrollView(
                            child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FlatButton(
                          child: Text("Languagae A/क"),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      FlatButton(
                          child: Text("Your Notifications"),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      FlatButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Text("Settings"),
                                    Container(
                                      margin: EdgeInsets.only(left: 15),
                                      height: 20,
                                      child: Image(
                                          image:
                                              AssetImage("lib/assets/murica.png")),
                                    )
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 14,
                              )
                            ],
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      FlatButton(
                          child: Text("Customer Service"),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ]),
             // ),
            ),
          ]),
        )
        );
  }
}
