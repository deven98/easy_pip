# easy_pip

A widget for creating a Picture-In-Picture interface in Flutter. Note that this is not a plugin for 
enabling the PIP mode in Android. EasyPIP makes it easy to construct a YouTube like interface in 
Flutter.

## Usage

To use this package, add easy_pip as a dependency in your pubspec.yaml

The main widget to use is PIPStack.

## Example

    import 'package:flutter/material.dart';
    import 'package:easy_pip/easy_pip.dart';
    
    /...
    
    .../
    
    class _MyHomePageState extends State<MyHomePage> {
    
      var pipEnabled = false;
    
      @override
      Widget build(BuildContext context) {
        return new Scaffold(
          appBar: new AppBar(),
          body: PIPStack(
            backgroundWidget: Center(
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    pipEnabled = !pipEnabled;
                  });
                },
                child: Text("Click here to enable PIP"),
              ),
            ),
            pipWidget: pipEnabled
                ? Container(
                    color: Colors.pink,
                  )
                : Container(),
            pipEnabled: pipEnabled,
            pipExpandedContent: Card(
              color: Colors.white,
              child: Column(
                children: <Widget>[Text("Hello World"), Row()],
              ),
            ),
            onClosed: () {
              setState(() {
                pipEnabled = !pipEnabled;
              });
            },
          ),
        );
      }
    }

## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).
