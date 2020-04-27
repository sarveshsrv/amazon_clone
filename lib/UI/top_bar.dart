import 'package:amazon_clone/models/global.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final Drawer drawer = new Drawer();
  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.only(top: 14),
      color: darkBlue,
      height: 70,
      child:SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 5, right: 5),
              margin: EdgeInsets.all(5),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 200,
                    child:SingleChildScrollView(
                    
                    child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.search, color: darkBlue)),
                    ),
                  )
                  ),
                  Icon(Icons.camera_alt, color: darkBlue)
                ],
              ))
        ],
      ),
    )
    );
  }
}
