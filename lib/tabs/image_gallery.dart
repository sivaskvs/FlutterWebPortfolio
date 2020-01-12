import 'package:sivasubramanian/config/projects.dart';
import 'package:sivasubramanian/widgets/project_widget.dart';
import 'package:sivasubramanian/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';





class ImageGallery extends StatelessWidget  {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("#ShotOnOnePlus Gallery"),
          centerTitle: true,
          textTheme: Theme.of(context).textTheme,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Container(
          color: Theme.of(context).primaryColor,
          padding: EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 8.0,
          
            children: <Widget>[
              Image.network("https://i.ibb.co/58hqyVF/3.jpg"),
              Image.network("https://i.ibb.co/LPM2sZj/5.jpg"),
              Image.network("https://i.ibb.co/jLXTWVC/7.jpg"),
              Image.network("https://i.ibb.co/fS1R6Qg/9.jpg"),
              Image.network("https://i.ibb.co/9gY1gdZ/11.jpg"),
              Image.network("https://i.ibb.co/b28T0pZ/13.jpg"),
              Image.network("https://i.ibb.co/QC7xq3h/15.jpg"),
              Image.network("https://i.ibb.co/C8DLmd5/20.jpg"),
              Image.network("https://i.ibb.co/zSVHLQY/22.jpg"),
              Image.network("https://i.ibb.co/5ntCmKN/24.jpg"),
              Image.network("https://i.ibb.co/QYkLC0n/IMG-20190116-125921.jpg"),
              Image.network("https://i.ibb.co/6JgYdZ6/LRM-EXPORT-20170924-134205-01.jpg"),
            ],
        )),
      ),
    );
  }
}