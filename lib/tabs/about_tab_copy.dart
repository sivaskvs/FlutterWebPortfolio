import 'package:sivasubramanian/config/assets.dart';
import 'package:sivasubramanian/config/constants.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

import '../widgets/responsive_widget.dart';


class AboutTabCopy extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
    smallScreen: SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset(Assets.avatar),
                width: MediaQuery.of(context).size.width
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Siva Subramanian L',
                textScaleFactor: 4,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  'Data Analyst. Full Stack Developer.\nPython. R. Machine Learning.\nAndroid. Java. Kotlin. Spring. Angular. \nFlutter. Firebase. TensorFlow.\nPhotography. Travelling.',
                  style: Theme.of(context).textTheme.caption,
                  textScaleFactor: 2,
                  textAlign: TextAlign.left,
                ),
              FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.resume)),
                    label: Text('Resume'),
                    onPressed:()=> html.window.open(Constants.RESUME,'siva' ),
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.github)),
                    label: Text('Github'),
                    onPressed:()=> html.window.open(Constants.PROFILE_GITHUB,'siva' ),
                  ),FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.twitter)),
                    label: Text('Twitter'),
                    onPressed:()=> html.window.open(Constants.PROFILE_TWITTER,'siva' ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.instagram)),
                    label: Text('Instagram'),
                    onPressed:()=> html.window.open(Constants.PROFILE_INSTAGRAM,'siva' ),
                  ),FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.facebook)),
                    label: Text('Facebook'),
                    onPressed:()=> html.window.open(Constants.PROFILE_FACEBOOK,'siva' ),
                  ),FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.linkedin)),
                    label: Text('Linkedin'),
                    onPressed:()=> html.window.open(Constants.PROFILE_LINKEDIN,'SivaFlutter' ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ), 
    largeScreen:SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child:Row(
            children: <Widget>[
                Container(
                child: Image.asset(Assets.avatar2),
                width: MediaQuery.of(context).size.width/2,
                height: MediaQuery.of(context).size.height - 50
              ),
              Container(
                child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              
              SizedBox(
                height: 20,
              ),
              Text(
                'Siva Subramanian L',
                textScaleFactor: 4,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  'Data Analyst. Full Stack Developer.\nPython. R. Machine Learning.\nAndroid. Java. Kotlin. Spring. Angular. \nFlutter. Firebase. TensorFlow.\nPhotography. Travelling.',
                  style: Theme.of(context).textTheme.caption,
                  textScaleFactor: 2,
                  textAlign: TextAlign.left,
                ),
              SizedBox(
                height: 5,
              ),
              FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.resume)),
                    label: Text('Resume'),
                    onPressed:()=> html.window.open(Constants.RESUME,'siva' ),
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.github)),
                    label: Text('Github'),
                    onPressed:()=> html.window.open(Constants.PROFILE_GITHUB,'siva' ),
                  ),FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.twitter)),
                    label: Text('Twitter'),
                    onPressed:()=> html.window.open(Constants.PROFILE_TWITTER,'siva' ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.instagram)),
                    label: Text('Instagram'),
                    onPressed:()=> html.window.open(Constants.PROFILE_INSTAGRAM,'siva' ),
                  ),FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.facebook)),
                    label: Text('Facebook'),
                    onPressed:()=> html.window.open(Constants.PROFILE_FACEBOOK,'siva' ),
                  ),FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.linkedin)),
                    label: Text('Linkedin'),
                    onPressed:()=> html.window.open(Constants.PROFILE_LINKEDIN,'siva' ),
                  )
                ],
              )
            ],
          )
              )
            ]
    
          ),
        ),
      ),
    ),
    );

  }
}
