import 'package:flutter/material.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';
import 'data.dart';

class TimelinePage extends StatefulWidget {
  TimelinePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _TimelinePageState createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  final PageController pageController =
      PageController(initialPage: 0, keepPage: true);
  int pageIx = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      timelineModel(TimelinePosition.Left,0),
      timelineModel(TimelinePosition.Left,1)
    ];

    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: pageIx,
            backgroundColor: Theme.of(context).backgroundColor,
            onTap: (i) => pageController.animateToPage(i,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.work),
                title: Text("Experience"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                title: Text("Education"),
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.format_align_right),
              //   title: Text("RIGHT"),
              // ),
            ]),
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        body: PageView(
          onPageChanged: (i) => setState(() => pageIx = i),
          controller: pageController,
          children: pages,
        ));
  }

  timelineModel(TimelinePosition position, int val) => Timeline.builder(
      itemBuilder: val == 0 ? centerTimelineBuilder: eductionTimelineBuilder,
      itemCount: val == 0 ? doodles.length: doodlesEducation.length,
      physics: ClampingScrollPhysics(),
            position: position);

  TimelineModel centerTimelineBuilder(BuildContext context, int i) {
    final doodle = doodles[i];
    final textTheme = Theme.of(context).textTheme;
    return TimelineModel(
      Container(
        width: 400,
        child:  new Card(
            margin: EdgeInsets.symmetric(vertical: 16.0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
            clipBehavior: Clip.antiAlias,
            child: new InkWell(
            onTap: () {
              print("tapped");
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(doodle.time, style: textTheme.subhead),
                  Text(doodle.title,style: textTheme.title),
                  Text(doodle.name,style: textTheme.subtitle),
                  // const SizedBox(
                  //   height: 4.0,
                  // ),
                  Text(
                    doodle.place,
                    style: textTheme.caption,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                ],
              ),
            ),
          )
          )
          ),
        position:
            i % 2 == 0 ? TimelineItemPosition.right : TimelineItemPosition.left,
        isFirst: i == 0,
        isLast: i == doodles.length,
        iconBackground: doodle.iconBackground,
        icon: doodle.icon);
  }

  TimelineModel eductionTimelineBuilder(BuildContext context, int i) {
    final doodle = doodlesEducation[i];
    final textTheme = Theme.of(context).textTheme;
    return TimelineModel(
      Container(
        width: 400,
        child:  new Card(
            margin: EdgeInsets.symmetric(vertical: 16.0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
            clipBehavior: Clip.antiAlias,
            child: new InkWell(
            onTap: () {
              print("tapped");
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(doodle.time, style: textTheme.subhead),
                  Text(doodle.title,style: textTheme.title),
                  Text(doodle.name,style: textTheme.subtitle),
                  // const SizedBox(
                  //   height: 4.0,
                  // ),
                  Text(
                    doodle.place,
                    style: textTheme.caption,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                ],
              ),
            ),
          )
          )
          ),
        position:
            i % 2 == 0 ? TimelineItemPosition.right : TimelineItemPosition.left,
        isFirst: i == 0,
        isLast: i == doodles.length,
        iconBackground: doodle.iconBackground,
        icon: doodle.icon);
  }
}