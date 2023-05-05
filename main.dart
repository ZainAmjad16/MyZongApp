import 'package:flutter/material.dart';
import 'my_drawer_header.dart';
import 'profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  // ************ BOTTOM NAV **********
  List<Widget> body_list = [
    Center(
      child: Text('List'),
    ),
    Center(
      child: Text('Search'),
    ),
    profile(),
    Center(
      child: Text('Menu'),
    ),
  ];

  int current_index = 0;
  void ontabitem(int index) {
    setState(() {
      current_index = index;
    });
  }

// *********** BOTTOM NAV *************
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 180, 0),
        leading: Icon(Icons.notifications),
        title: Text('Hello, Zain!'),
        centerTitle: true,
        // actions: <Widget>[
        //   Builder(
        //     builder: (BuildContext context) {
        //       return SizedBox(
        //         width: 40,
        //         child: IconButton(
        //           icon: Icon(Icons.line_style),
        //           onPressed: () {
        //             Scaffold.of(context).openDrawer();
        //           },
        //         ),
        //       );
        //     },
        //   ),
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //color: Colors.amber,
              height: 120,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Container(
                      //color: Colors.red,
                      width: 160,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            //color: Colors.amber,
                            width: 100,
                            height: 20,
                            child: Text(
                              '03323 461617',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                          ),
                          Container(
                            //color: Colors.green,
                            width: 150,
                            height: 40,
                            child: Row(
                              children: [
                                Text('500',
                                    style: TextStyle(
                                        color: Colors.pinkAccent,
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold)),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Text(
                                      'PKR',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            //color: Colors.blue,
                            width: double.infinity,
                            height: 40,
                            child: Text(
                              'expired on 9th, Jul, 2023',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    //color: Colors.blue,
                    //width: 60,
                    padding: EdgeInsets.only(right: 90.0),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {
                            // Do something when button is pressed
                          },
                          child: Text(
                            'Recharge',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(14, 190, 20, 1),
                            ),
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(
                                  color: Color.fromRGBO(14, 190, 20, 1),
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(234, 255, 251, 251),
                            ),
                            elevation: MaterialStateProperty.all<double>(4.0),
                          ),
                        ),
                        SizedBox(
                          height: 5, // specify the height of the gap
                        ),
                        TextButton(
                          onPressed: () {
                            // Do something when button is pressed
                          },
                          child: Text(
                            'Loan',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 247, 245, 245),
                            ),
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(
                                  color: Color.fromARGB(255, 199, 0, 27),
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 199, 0, 27),
                            ),
                            elevation: MaterialStateProperty.all<double>(4.0),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // *********** NET PACKAGE STARTS ************
            Container(
              //color: Colors.red,
              height: 180,
              width: 460,
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.wifi,
                          color: Color.fromARGB(255, 10, 207, 16),
                          size: 40,
                        ),
                        Row(
                          children: [
                            Text(
                              "100",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pinkAccent,
                                  fontSize: 20),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "MB",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          "remianing",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 60,
                          height: 3,
                          color: Colors.red,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                        ),
                        Text("1 offer active"),
                      ],
                    ),
                  ),
                  // *********** NET PACKAGE ENDS ************
                  // *********** CALL PACKAGE STARTS ************
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.phone,
                          color: Color.fromARGB(255, 10, 207, 16),
                          size: 40,
                        ),
                        Row(
                          children: [
                            Text(
                              "100",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pinkAccent,
                                  fontSize: 20),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "MINS",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          "remianing",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 60,
                          height: 3,
                          color: Color.fromARGB(255, 255, 19, 3),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                        ),
                        Text("1 offer Active"),
                      ],
                    ),
                  ),
                  // *********** CALL PACKAGE ENDS ************
                  // *********** SMS PACKAGE STARTS ************
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.mail,
                          color: Color.fromARGB(255, 10, 207, 16),
                          size: 40,
                        ),
                        Row(
                          children: [
                            Text(
                              "100",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pinkAccent,
                                  fontSize: 20),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "SMS",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          "remianing",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 60,
                          height: 3,
                          color: Colors.red,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                        ),
                        Text("1 offer Active"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // *********** SMS PACKAGE ENDS ************
            // ****** MAKE YOUR OWN BUNDLE PORTION STARTS********
            Container(
              //color: Colors.amber,
              width: 400,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 20,
                    color: Color.fromARGB(255, 140, 2, 168),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: SizedBox(
                      width: 180, //width of purple card
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Make your',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text('Own Bundle',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Icon(
                            Icons.card_giftcard,
                            size: 40,
                            color: Color.fromARGB(181, 255, 255, 255),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 20,
                    color: Color.fromARGB(255, 219, 2, 85),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: SizedBox(
                      width: 150,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('My Zong',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Icon(
                            Icons.check_circle,
                            color: Color.fromARGB(127, 255, 255, 255),
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // ****************MAKE YOUR OWN BUNDLE CARD WIDGET ENDS ********************** //
            // ****************MAKE YOUR ICONS CARD WIDGET STARTS ********************** //
            Container(
              //color: Colors.red,
              padding: EdgeInsets.only(left: 4.0, right: 4.0),
              height: 125,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: Padding(
                            padding: EdgeInsets.all(6),
                            child: Image.asset(
                              'assets/images/entertainment.png',
                              width: 60,
                              height: 60,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Entertainment',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 143, 143, 143)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: Padding(
                            padding: EdgeInsets.all(6),
                            child: Image.asset(
                              'assets/images/game.png',
                              width: 60,
                              height: 60,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Games',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 143, 143, 143)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: Padding(
                            padding: EdgeInsets.all(6),
                            child: Image.asset(
                              'assets/images/deals.png',
                              width: 60,
                              height: 60,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Deals',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 143, 143, 143)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: Padding(
                            padding: EdgeInsets.all(6),
                            child: Image.asset(
                              'assets/images/islam.png',
                              width: 60,
                              height: 60,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Islam',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 143, 143, 143)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: Padding(
                            padding: EdgeInsets.all(6),
                            child: Image.asset(
                              'assets/images/sports.png',
                              width: 60,
                              height: 60,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Sports',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 143, 143, 143)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: Padding(
                            padding: EdgeInsets.all(6),
                            child: Image.asset(
                              'assets/images/infotainment.png',
                              width: 60,
                              height: 60,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Infotainment',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 143, 143, 143)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // ****************MAKE YOUR ICONS CARD WIDGET ENDS ********************** //
            Container(
              //color: Colors.blueGrey,
              padding: EdgeInsets.only(left: 4, right: 4),
              height: 300,
              width: 400,
              child: Card(
                  child: Image.asset(
                'assets/images/bundle.jpeg',
                fit: BoxFit.fill,
              )),
            ),
          ],
        ),
      ),
      //******BOTTOM NAV *********
      //body_list[current_index],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 6, 180, 0),
          currentIndex: current_index,
          onTap: ontabitem,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 6, 180, 0),
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 6, 180, 0),
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 6, 180, 0),
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 6, 180, 0),
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              label: 'Menu',
            ),
          ]),
      //******BOTTOM NAV *********
      endDrawer: Drawer(
        backgroundColor: Color.fromARGB(255, 238, 238, 238),
        child: ListView(
          children: [
            MyHeaderDrawer(),
            //MyDrawerList(),
          ],
        ),
      ),
    );
  }

  // Widget MyDrawerList() {
  //   return Container(
  //     child: Expanded(
  //       child: ListView(
  //         children: [
  //           Card(
  //             margin: EdgeInsets.all(5),
  //             child: ListTile(
  //               onTap: () {
  //                 print('Profile');
  //                 Navigator.pop(context);
  //               },
  //               leading: Icon(Icons.person),
  //               title: Text('Profile'),
  //             ),
  //           ),
  //           Card(
  //             margin: EdgeInsets.all(5),
  //             child: ListTile(
  //               leading: Icon(Icons.people_alt),
  //               title: Text('Manage Accounts'),
  //             ),
  //           ),
  //           Card(
  //             margin: EdgeInsets.all(5),
  //             child: ListTile(
  //               leading: Icon(Icons.language),
  //               title: Text('Change Language'),
  //             ),
  //           ),
  //           Card(
  //             margin: EdgeInsets.all(5),
  //             child: ListTile(
  //               leading: Icon(Icons.feedback),
  //               title: Text('Feedback'),
  //             ),
  //           ),
  //           Card(
  //             margin: EdgeInsets.all(5),
  //             child: ListTile(
  //               leading: Icon(Icons.question_answer),
  //               title: Text('FAQs'),
  //             ),
  //           ),
  //           Card(
  //             margin: EdgeInsets.all(5),
  //             child: ListTile(
  //               leading: Icon(Icons.video_library),
  //               title: Text('Video Tutorials'),
  //             ),
  //           ),
  //           Card(
  //             margin: EdgeInsets.all(5),
  //             child: ListTile(
  //               leading: Icon(Icons.contacts),
  //               title: Text('Contact Us'),
  //             ),
  //           ),
  //           Card(
  //             margin: EdgeInsets.all(5),
  //             child: ListTile(
  //               leading: Icon(Icons.find_in_page),
  //               title: Text('Find Us'),
  //             ),
  //           ),
  //           Card(
  //             margin: EdgeInsets.all(5),
  //             child: ListTile(
  //               leading: Icon(Icons.description),
  //               title: Text('Press Release'),
  //             ),
  //           ),
  //           Card(
  //             margin: EdgeInsets.all(5),
  //             child: ListTile(
  //               leading: Icon(Icons.logout),
  //               title: Text('Logout'),
  //             ),
  //           ),
  //           Container(
  //             height: 70,
  //             child: Card(
  //               margin: EdgeInsets.all(5),
  //               child: Center(
  //                 child: Text('Version 5.11.11.40',
  //                     style: TextStyle(
  //                         fontSize: 20, color: Colors.black.withOpacity(0.3))),
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // },
}
