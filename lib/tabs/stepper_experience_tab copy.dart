import 'package:flutter/material.dart';
import 'timeline.dart';



class StepperExperienceTab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'Timeline',
      theme: Theme.of(context),
      // theme: ThemeData(
      //   primaryColor: ,
      //   primarySwatch: Colors.blue,
      // ),
      home: TimelinePage(title: 'Timeline'),
    );
  }
}