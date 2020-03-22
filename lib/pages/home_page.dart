import 'package:sivasubramanian/config/assets.dart';
import 'package:sivasubramanian/tabs/projects_tab.dart';
import 'package:sivasubramanian/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';

import '../tabs/about_tab_copy.dart';
import '../tabs/contact_me.dart';

import '../tabs/stepper_experience_tab copy.dart';
import '../tabs/image_gallery.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    AboutTabCopy(),
    ProjectsTab(),
    StepperExperienceTab2(),
    ImageGallery(),
    HomeMaterial(),
  ];

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: ThemeSwitcher.of(context).isDarkModeOn?Icon(Icons.wb_sunny):Image.asset(Assets.moon,height: 20,width: 20,),
              onPressed: ()=> ThemeSwitcher.of(context).switchDarkMode(),
            )
        ]
      ),
  drawer:Drawer(
            elevation: 1.5,
            child: Column(children: <Widget>[
              // DrawerHeader(
              //     decoration: BoxDecoration(
              //   color: Colors.redAccent,
              // )),
              Expanded(
                  child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Portfolio',
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Assets.header_nav),
                        // image: AssetImage('assets/twoInOne.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('About'),
                  onTap: (){
                    setState(() => _selectedIndex = 0);
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.mobile_screen_share),
                  title: Text('Projects'),
                  onTap: (){
                    setState(() => _selectedIndex = 1);
                    Navigator.pop(context);

                  },
                ),
                ListTile(
                  leading: Icon(Icons.timeline),
                  title: Text('Timeline'),
                  onTap: (){
                    setState(() => _selectedIndex = 2);
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.camera),
                  title: Text('Photographs'),
                  onTap: (){
                    setState(() => _selectedIndex = 3);
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.chat),
                  title: Text('Contact me!'),
                  onTap: (){                        
                    setState(() => _selectedIndex = 4);
                    Navigator.pop(context);

                  },
                ),                
              ],
            )),
            Container(
              color: Colors.black,
              width: double.infinity,
              height: 0.1,
            ),
            Container(
              // padding: EdgeInsets.all(4),
              alignment: Alignment.centerRight,
              height: 100,
              child: 
              new Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget> [ 
                Text("               ",style: TextStyle(fontWeight: FontWeight.bold),),
                Text("Made with ",style: TextStyle(fontWeight: FontWeight.bold),), 
                Image.asset(Assets.love,height: 20,width: 20,),
                Text(" in ",style: TextStyle(fontWeight: FontWeight.bold),),
                Image.asset(Assets.flutterImg, height: 20,width: 20,),
                Text(" and ",style: TextStyle(fontWeight: FontWeight.bold),),
                Image.asset(Assets.firebaseImg, height: 20,width: 20,), 
                ])
              ),
            ])),


      body: Center(
          child: tabWidgets.elementAt(_selectedIndex),
      ),
    );
  }

}
