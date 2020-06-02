import 'package:sivasubramanian/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_youtube/flutter_youtube.dart';
import 'package:webview_flutter/webview_flutter.dart';  


class ImageGallery extends StatelessWidget  {

  final _key = UniqueKey();  

@override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("#Through the Camera"),
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
    ),
    smallScreen: MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("#Through the Camera"),
          centerTitle: true,
          textTheme: Theme.of(context).textTheme,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Container(
          color: Theme.of(context).primaryColor,
          padding: EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 1,
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
              Container(
                child: WebView(
                  initialUrl: Uri.dataFromString('<html><body><iframe src="https://www.youtube.com/embed/abc"></iframe></body></html>', mimeType: 'text/html').toString(),
                  javascriptMode: JavascriptMode.unrestricted,
                )),
            ],
        )),
      ),
    ),
    );
  }
}