import 'package:flutter/material.dart';
import 'package:myonlineshop/const/button.dart';
import 'package:myonlineshop/const/color.dart';
import 'package:myonlineshop/const/input.dart';
import 'package:myonlineshop/pages/fake.dart';
import 'package:myonlineshop/pages/profile.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  _PersonalDetailsState createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {

  String? valueChoose;
  List listItem = [
    "Available",
    "Busy",
    "Unavailable"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 80,
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 25,
          ),
          title: const Text(
            "Profile",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 27),
          ),
        ),
        body: Container(
          color: background,
          padding: const EdgeInsets.only(right: 10, top: 2, left: 10),
          width: double.maxFinite,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  // alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  width: 500,
                  height: 800,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text("Personal Details", style: TextStyle(color: gradient2, fontSize: 20, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Divider(height: 4,thickness: 3, color: grey,),
                      SizedBox(height: 40,),
                      DetailsInput(
                          obsecureText: false,
                          text: "Full Name"
                      ),
                      DetailsInput(
                          obsecureText: false,
                          text: "Email"
                      ),
                      DetailsInput(
                          obsecureText: false,
                          text: "Occupation"
                      ),
                      DetailsInput(
                          obsecureText: false,
                          text: "State"
                      ),
                      DetailsInput(
                          obsecureText: false,
                          text: "City"
                      ),
                      DetailsInput(
                          obsecureText: false,
                          text: "Home Address"
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0, right: 0),
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),),
                          child: DropdownButton(
                              hint: Text("Select" , style: TextStyle(
                                color: grey,
                                fontSize: 16,
                              ),),
                              dropdownColor: Colors.white,
                              icon: Icon(Icons.arrow_drop_down),
                              iconSize: 30,
                              isExpanded: true,
                              underline: SizedBox(),
                              value: valueChoose,
                              onChanged: (newValue){
                                setState(() {
                                  valueChoose = newValue as String;
                                });
                              },
                              items: listItem.map((valueItem){
                                return DropdownMenuItem(
                                  value: valueItem,
                                  child: Text(valueItem),
                                );
                              }).toList()
                          ),
                        ),
                      ),
                       SizedBox(height: 10,),
                      DetailsInput(
                          obsecureText: false,
                          text: "Whatsapp Link"
                      ),
                      DetailsInput(
                          obsecureText: false,
                          text: "Facebook Link"
                      ),
                      DetailsInput(
                          obsecureText: false,
                          text: "Instagram Link"
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                       // onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>FakePage())),
                        child: Container(
                          width: double.maxFinite,
                          child: AppButton(
                            color: white, size: 50, background: range, borderColor: range,text: "Update",

                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    //     bottomNavigationBar: BottomNavigationBar(
    //   backgroundColor: white,
    //   showUnselectedLabels: true,
    //   selectedIconTheme: IconThemeData(color: gradient2),
    //   selectedItemColor: gradient1,
    //   unselectedItemColor: grey,
    //   // selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
    //   type: BottomNavigationBarType.fixed,
    //   currentIndex: _currentIndex,
    //   // onTap: (index) => _currentIndex = index,
    //   items: const <BottomNavigationBarItem>[
    //     BottomNavigationBarItem(
    //       icon: Icon(
    //         Icons.print,
    //         size: 30,
    //       ),
    //       label:"Timeline",
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(
    //         Icons.card_travel_rounded,
    //         size: 30,
    //       ),
    //       label:"Jobs",),
    //     BottomNavigationBarItem(
    //       icon: Icon(
    //         Icons.search,
    //         size: 30,
    //       ),
    //       label:"Search",),
    //     BottomNavigationBarItem(
    //       icon: Icon(
    //         Icons.notifications_none_outlined,
    //         size: 30,
    //       ),
    //       label:"Alerts",),
    //     BottomNavigationBarItem(
    //       icon: Icon(
    //         Icons.person_outline_sharp,
    //         size: 30,
    //       ),
    //       label:"Profile",
    //
    //     )
    //   ],
    //   onTap:(index) =>
    //       setState(() {
    //         _currentIndex = index;
    //       }),
    //
    // ),
    );
  }
}
