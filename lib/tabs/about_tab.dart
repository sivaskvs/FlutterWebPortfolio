import 'package:sivasubramanian/config/assets.dart';
import 'package:sivasubramanian/config/constants.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;
class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
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
                  'Data Analyst. Full Stack Developer.\nAndroid. Spring. Angular.\nPhotography and Travelling.',
                  style: Theme.of(context).textTheme.caption,
                  textScaleFactor: 2,
                  textAlign: TextAlign.left,
                ),
              SizedBox(
                height: 40,
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
                    onPressed:()=> html.window.open(Constants.PROFILE_GITHUB,'SivaFlutter' ),
                  ),FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.twitter)),
                    label: Text('Twitter'),
                    onPressed:()=> html.window.open(Constants.PROFILE_TWITTER,'SivaFlutter' ),
                  ),FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.medium)),
                    label: Text('Medium'),
                    onPressed:()=> html.window.open(Constants.PROFILE_MEDIUM,'SivaFlutter' ),
                  )
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
                    onPressed:()=> html.window.open(Constants.PROFILE_INSTAGRAM,'SivaFlutter' ),
                  ),FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.facebook)),
                    label: Text('Facebook'),
                    onPressed:()=> html.window.open(Constants.PROFILE_FACEBOOK,'SivaFlutter' ),
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
    );
  }
}
