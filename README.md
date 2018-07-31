# easy_pip

A widget for creating a Picture-In-Picture interface in Flutter. Note that this is not a plugin for 
enabling the PIP mode in Android. EasyPIP makes it easy to construct a YouTube like interface in 
Flutter.

## Usage

### Import the package 

To use this package, [add easy_pip as a dependency](https://pub.dartlang.org/packages/easy_pip#-installing-tab-) in your pubspec.yaml

### Use the package

    import 'package:easy_pip/easy_pip.dart';

The main widget to use is PIPStack.

The PIPStack has three elements: 

1) Background Widget (Displays behind the pip widget)
2) PIP Widget (The widget which shrinks to go into PIP mode)
3) PIP Expanded Content (The content below the PIP widget when the widget is expanded)

Important: The pipEnabled field needs to be set to 'true' to make the pipWindow visible.

Note: If the pipExpandedContent field is left blank, the pipWidget will fill the entire screen when
expanded.

Taking an analogy of the YouTube app: 

The backgroundWidget would be the master list of all videos.

The pipWidget would be the video player which would be shrinkable and expandable.

The pipExpandedContent would be the list of recommended videos.

## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).
