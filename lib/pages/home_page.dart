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
        // appBar: AppBar(
        //   actions: <Widget>[
        //     IconButton(
        //       icon: ThemeSwitcher.of(context).isDarkModeOn?Icon(Icons.wb_sunny):Image.asset(Assets.moon,height: 20,width: 20,),
        //       onPressed: ()=> ThemeSwitcher.of(context).switchDarkMode(),
        //     )
        //   ],
        // ),
      key: scaffoldKey,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: ThemeSwitcher.of(context).isDarkModeOn?Icon(Icons.wb_sunny):Image.asset(Assets.moon,height: 20,width: 20,),
              onPressed: ()=> ThemeSwitcher.of(context).switchDarkMode(),
            )
        ]
      ),
      drawer: Drawer(
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
      
    ),
  ),
      body: Center(
          child: tabWidgets.elementAt(_selectedIndex),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.account_circle),
      //         title: Text('About'),
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.chrome_reader_mode),
      //         title: Text('Blog'),
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.mobile_screen_share),
      //         title: Text('Projects'),
      //       )
      //     ],
      //     currentIndex: _selectedIndex,
      //     onTap: (index)=> setState(() => _selectedIndex = index),
      //     selectedItemColor: Theme.of(context).accentColor,
      // ),
    );
  }

}
