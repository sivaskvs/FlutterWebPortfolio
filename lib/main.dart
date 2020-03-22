import 'package:sivasubramanian/pages/home_page.dart';
import 'package:sivasubramanian/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';
import 'package:firebase/firebase.dart'  as fb;
import 'package:mongo_dart/mongo_dart.dart';

// import 'package:dart_mongo/dart_mongo.dart' as dart_mongo;


// import '../../../development/flutter/.pub-cache/hosted/pub.dartlang.org/firebase-7.1.0/lib/firebase.dart';
import 'config/themes.dart';

void main() {
  



  if (fb.apps.isEmpty) { 

  fb.initializeApp(   
    /*Firebase config*/ 
  );
  }
  runApp(MyApp());
  }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: true,
      child: SivaFlutter(),
    );
  }
}
class SivaFlutter extends StatelessWidget {
  const SivaFlutter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Siva Subramanian L',
      theme:ThemeSwitcher.of(context).isDarkModeOn?darkTheme(context):lightTheme(context),
      home: HomePage(),
    );
  }
}
