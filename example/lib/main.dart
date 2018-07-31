// Copyright 2017 Deven Joshi. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:easy_pip/easy_pip.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: PIPStack(
        backgroundWidget: Center(
          child: RaisedButton(
            onPressed: () {
              setState(() {
                isEnabled = !isEnabled;
              });
            },
            child: Text("Click here to enable PIP"),
          ),
        ),
        pipWidget: isEnabled
            ? Container(
          color: Colors.pink,
        )
            : Container(),
        pipEnabled: isEnabled,
        pipExpandedContent: Card(
          color: Colors.white,
          child: Column(
            children: <Widget>[Text("Hello World"), Row()],
          ),
        ),
        onClosed: () {
          setState(() {
            isEnabled = !isEnabled;
          });
        },
      ),
    );
  }
}
