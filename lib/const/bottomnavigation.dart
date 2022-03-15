// import 'package:flutter/material.dart';
// import 'package:myonlineshop/pages/personal_details.dart';
// import 'package:myonlineshop/pages/views/alert.dart';
// import 'package:myonlineshop/pages/views/jobmenu.dart';
// import 'package:myonlineshop/pages/views/searchpage.dart';
// import 'package:myonlineshop/pages/views/timeline.dart';
//
// class NormalBottomNavBar extends StatefulWidget {
//   NormalBottomNavBar({Key? key}) : super(key: key);
//
//   @override
//   NormalBottomNavBarState createState() => NormalBottomNavBarState();
// }
//
// class NormalBottomNavBarState extends State<NormalBottomNavBar> {
//   int _currentIndex = 0;
//   final List<Widget> _children = [
//     TimeLine(),
//     JobMenuPage(),
//     SearchPage(),
//     AlertPage(),
//     PersonalDetails(),
//
//   ];
//
//   void onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //  appBar: AppBar(
//       //    title: Text('Persistent BottomNavBar'),
//       //  ),
//       body: _children[_currentIndex], // new
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: onTabTapped, // new
//         currentIndex: _currentIndex, // new
//         items: [
//           BottomNavigationBarItem(
//             icon: new Icon(Icons.payment_rounded),
//             label: 'TimeLine',
//           ),
//           BottomNavigationBarItem(
//             icon: new Icon(Icons.shopping_bag_outlined),
//             label: 'Jobs',
//           ),
//           BottomNavigationBarItem(
//             icon: new Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: new Icon(Icons.notifications_none_sharp),
//             label: 'Alerts',
//           ),
//           BottomNavigationBarItem(
//             icon: new Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }
// class App extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => AppState();
// }
//
// class AppState extends State<App> {
//   String _currentPage = "Page1";
//   List<String> pageKeys = ["Page1", "Page2", "Page3"];
//   Map<String, GlobalKey<NavigatorState>> _navigatorKeys = {
//     "Page1": GlobalKey<NavigatorState>(),
//     "Page2": GlobalKey<NavigatorState>(),
//     "Page3": GlobalKey<NavigatorState>(),
//   };
//   int _selectedIndex = 0;
//
//
//   void _selectTab(String tabItem, int index) {
//     if(tabItem == _currentPage ){
//       _navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
//     } else {
//       setState(() {
//         _currentPage = pageKeys[index];
//         _selectedIndex = index;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () async {
//         final isFirstRouteInCurrentTab =
//         !await _navigatorKeys[_currentPage]!.currentState!.maybePop();
//         if (isFirstRouteInCurrentTab) {
//           if (_currentPage != "Page1") {
//             _selectTab("Page1", 1);
//
//             return false;
//           }
//         }
//         // let system handle back button if we're on the first route
//         return isFirstRouteInCurrentTab;
//       },
//       child: Scaffold(
//         body: Stack(
//             children:<Widget>[
//               _buildOffstageNavigator("Page1"),
//               _buildOffstageNavigator("Page2"),
//               _buildOffstageNavigator("Page3"),
//             ]
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           selectedItemColor: Colors.blueAccent,
//           onTap: (int index) { _selectTab(pageKeys[index], index); },
//           currentIndex: _selectedIndex,
//           items: [
//             BottomNavigationBarItem(
//               icon: new Icon(Icons.payment_rounded),
//               label: 'TimeLine',
//             ),
//             BottomNavigationBarItem(
//               icon: new Icon(Icons.shopping_bag_outlined),
//               label: 'Jobs',
//             ),
//             BottomNavigationBarItem(
//               icon: new Icon(Icons.search),
//               label: 'Search',
//             ),
//             BottomNavigationBarItem(
//               icon: new Icon(Icons.notifications_none_sharp),
//               label: 'Alerts',
//             ),
//             BottomNavigationBarItem(
//               icon: new Icon(Icons.person),
//               label: 'Profile',
//             ),
//
//           ],
//           type: BottomNavigationBarType.fixed,
//         ),
//       ),
//     );
//
//   }
//
//
//
//   Widget _buildOffstageNavigator(String tabItem) {
//     return Offstage(
//       offstage: _currentPage != tabItem,
//       child: TabNavigator(
//         navigatorKey: _navigatorKeys![tabItem]!,
//         tabItem: tabItem,
//       ),
//     );
//   }
// }
//
//
// class TabNavigatorRoutes {
//   static const String root = '/';
//   static const String detail = '/detail';
// }
//
// class TabNavigator extends StatelessWidget {
//   TabNavigator({required this.navigatorKey, required this.tabItem});
//   final GlobalKey<NavigatorState> navigatorKey;
//   final String tabItem;
//
//   @override
//   Widget build(BuildContext context) {
//
//     Widget Child ;
//     if(tabItem == "TimeLine")
//       Child = TimeLine();
//     else if(tabItem == "Jobs")
//       Child = JobMenuPage();
//     else if(tabItem == "Search")
//       Child = SearchPage();
//     else if(tabItem == "Alert")
//       Child = AlertPage();
//     else if(tabItem == "Profile")
//       Child = SearchPage();
//
//     return Navigator(
//       key: navigatorKey,
//       onGenerateRoute: (routeSettings) {
//         return MaterialPageRoute(
//             builder: (context) => Child
//         );
//       },
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:myonlineshop/const/color.dart';
import 'package:myonlineshop/pages/personal_details.dart';
import 'package:myonlineshop/pages/views/alert.dart';
import 'package:myonlineshop/pages/views/jobmenu.dart';
import 'package:myonlineshop/pages/views/searchpage.dart';
import 'package:myonlineshop/pages/views/timeline.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {


  int _currentIndex = 0;

  final List<Widget> _children =
  [
    TimeLine(),
    JobMenuPage(),
    SearchPage(),
    AlertPage(),
    PersonalDetails(),
  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IndexedStack(
            //child: _children[_currentIndex]
          index: _currentIndex,
          children: _children,
        ),
      ),
      bottomNavigationBar:
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child:  ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            //selectedFontSize: ,
            selectedIconTheme: IconThemeData(color: gradient2),
            selectedItemColor: gradient2,
            //selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            //  onTap: (index) => _currentIndex = index,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.insert_drive_file_outlined,
                    size: 30,
                  ),
                  label: "TimeLine",
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    size: 30,
                  ),
                label: "Jobs",
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                label: "Search",
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notifications_none_sharp,
                    size: 30,
                  ),
                label: "Alerts",
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    size: 30,
                  ),
                label: "Profile",
              ),
            ],
            onTap:(index) =>
                setState(() {
                  _currentIndex = index;
                }),
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

