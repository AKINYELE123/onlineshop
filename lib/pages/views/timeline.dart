import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myonlineshop/const/color.dart';
import 'package:myonlineshop/pages/views/jobs.dart';

class TimeLine extends StatefulWidget {
  const TimeLine({Key? key}) : super(key: key);

  @override
  _TimeLineState createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: white,
          centerTitle: true,
          title: Text(
            "TimeLine",
            style: TextStyle(
              color: first,
              fontSize: 18,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                // height:50,
                // width: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: range, width: 3),
                    borderRadius: BorderRadius.circular(30)),
                padding: EdgeInsets.all(1),
                child: const CircleAvatar(
                  // radius: 30,
                  backgroundImage: AssetImage(
                    "images/pro.png",
                  ),
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Container(
            color: background,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    //border: Border.all(color: Colors.grey)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      isDense: true,
                      filled: true,
                      fillColor: input,
                      // border: OutlineInputBorder(),
                      hintText: "Search for Jobs",
                      hintStyle: TextStyle(fontSize: 14, color: hint),
                      suffixIcon: Container(
                          decoration: BoxDecoration(
                            color: gradient2,
                            border: Border.all(color: gradient2),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                          ),
                          child: Icon(
                            Icons.search,
                            color: white,
                          )),
                    ),
                  ),
                ),
                //SizedBox(height: 20,),
                Container(
                  color: tab,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                      labelPadding: EdgeInsets.only(left: 20, right: 20),
                      controller: _tabController,
                      labelColor: gradient2,
                     // overlayColor: ,
                      unselectedLabelColor: Colors.grey,
                      isScrollable: true,
                      indicatorColor: gradient2,
                      indicatorSize: TabBarIndicatorSize.label,
                      //indicator: CircleTabIndicator(color: Colors.blue, radius: 4),
                      tabs: [
                        Tab(text: "MY FEEDS"),
                        Tab(text: "BEST MATCH"),
                      ],
                    ),
                  ),
                ),
                //SizedBox(height: 20,),
                Container(
                  //height: MediaQuery.of(context).size.height,
                  width: double.maxFinite,
                  //color: background.withOpacity(0.1),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      GestureDetector(
                        onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> JobPage())),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          height: 280,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,),
                              Text("Interior Decorator",style: TextStyle(fontWeight: FontWeight.bold, color: text, fontSize: 20), ),
                              SizedBox(height: 30,),
                              Row(
                                children: [
                                  Text("Budget: #10000",style: TextStyle(color: text,fontSize: 16),),
                                  SizedBox(width: 10,),
                                  Text("-Posted 1h ago",style: TextStyle(color: text,fontSize: 16),)
                                ],
                              ),
                              SizedBox(height: 20,),
                              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. elit Venenatis in ullamcorper amet diam tincidunt onsectetur adipiscing elit consectetur adipiscing Venenatis in ...", textAlign: TextAlign.justify, style: TextStyle(color: text, fontSize: 16),),
                              Text("See more", style: TextStyle(color: red,fontSize: 16),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      GestureDetector(
                        onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> JobPage())),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          height: 300,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,),
                              Text("Interior Decorator",style: TextStyle(fontWeight: FontWeight.bold, color: text, fontSize: 20), ),
                              SizedBox(height: 30,),
                              Row(
                                children: [
                                  Text("Budget: #10000",style: TextStyle(color: text,fontSize: 16),),
                                  SizedBox(width: 10,),
                                  Text("-Posted 1h ago",style: TextStyle(color: text,fontSize: 16),)
                                ],
                              ),
                              SizedBox(height: 20,),
                              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. elit Venenatis in ullamcorper amet diam tincidunt onsectetur adipiscing elit consectetur adipiscing Venenatis in ...", textAlign: TextAlign.justify, style: TextStyle(color: text, fontSize: 16),),
                              Text("See more",style: TextStyle(color: red,fontSize: 16),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}


class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // TODO: implement paint

    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 6 - radius / 6,
        configuration.size!.height - radius);

    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
