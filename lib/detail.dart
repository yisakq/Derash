import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:trial/main.dart';
import 'package:trial/payment.dart';
class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Wrapping the app with a builder method makes breakpoints
      // accessible throughout the widget tree.
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) {
          // The following code implements the legacy ResponsiveWrapper AutoScale functionality
          // using the new ResponsiveScaledBox. The ResponsiveScaledBox widget preserves
          // the legacy ResponsiveWrapper behavior, scaling the UI instead of resizing.
          //
          // MaxWidthBox - A widget that limits the maximum width.
          // This is used to create a gutter area on either side of the content.
          //
          // ResponsiveScaledBox - A widget that  renders its child
          // with a FittedBox set to the `width` value. Set the fixed width value
          // based on the active breakpoint.
          return MaxWidthBox(
            maxWidth: 1200,
            background: Container(color: const Color(0xFFF5F5F5)),
            child: ResponsiveScaledBox(
              width: ResponsiveValue<double>(context, conditionalValues: [
                const Condition.equals(name: MOBILE, value: 450),
                const Condition.between(start: 800, end: 1100, value: 800),
                const Condition.between(start: 1000, end: 1200, value: 1000),
                // There are no conditions for width over 1200
                // because the `maxWidth` is set to 1200 via the MaxWidthBox.
              ]).value,
              child: BouncingScrollWrapper.builder(
                context,Scaffold(
                appBar: AppBar(
                  toolbarHeight: 80,
                  backgroundColor: const Color(0xff13adb7),
                  // Leading widget (back arrow)
                  leading: IconButton(padding: const EdgeInsets.only(left: 10),
                    icon: const Icon(Icons.arrow_back,color: Colors.black,size: 30,),
                    onPressed: () {
                      // Handle the back arrow tap here
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyApp()));

                    },
                  ),
                  title: const Text('details',style:TextStyle(color: Colors.black,fontSize: 30,) ),
                  // Actions widgets (e.g., option icon)
                  actions: [
                    IconButton(padding: const EdgeInsets.only(right: 30),
                      icon: const Icon(Icons.more_vert,color: Colors.black,size: 30,),
                      onPressed: () {
                        // Handle the option icon tap here
                      },
                    ),
                  ],
                ),
                body: CustomScrollView(
                  physics: const ScrollPhysics(), // Disable scroll physics
                  slivers: <Widget>[
                    SliverAppBar(
                        backgroundColor: Colors.white,
                        expandedHeight: 300,
                        collapsedHeight: 0,
                        toolbarHeight: 0,
                        floating: false,
                        pinned: true, // Keeps the app bar at the top
                        flexibleSpace: FlexibleSpaceBar(
                          background: Image.asset(
                            'assets/page-1/images/rectangle-67-bg-eVd.png', // Replace with your image path
                            fit: BoxFit.cover,
                          ),
                        ),
                        bottom: PreferredSize(
                            preferredSize: const Size.fromHeight(50), // Adjust the height as needed
                            child: Container(height:50,decoration: const BoxDecoration(color:Color(0xFFdfeefc),),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Handle the tap event for "Description" button
                                    },
                                    child: Container(padding: const EdgeInsets.only(left: 5),
                                      //  width: 90,  // Adjust the width as needed
                                      height: 40,  // Adjust the height as needed
                                      child: const Center(
                                        child: Text(
                                          'Description',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 16,  // Adjust the font size as needed
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff13acb6),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  // Repeat the above InkWell structure for the other buttons
                                  InkWell(
                                    onTap: () {
                                      // Handle the tap event for "Documents" button
                                    },
                                    child: const SizedBox(
                                      //  width: 100,  // Adjust the width as needed
                                      height: 40,  // Adjust the height as needed
                                      child: Center(
                                        child: Text(
                                          'Documents',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 16,  // Adjust the font size as needed
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff13acb6),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      // Handle the tap event for "Rewards" button
                                    },
                                    child: const SizedBox(
                                      //  width: 100,  // Adjust the width as needed
                                      height: 40,  // Adjust the height as needed
                                      child: Center(
                                        child: Text(
                                          'Rewards',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 16,  // Adjust the font size as needed
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff13acb6),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      // Handle the tap event for "Rewards" button
                                    },
                                    child: const SizedBox(
                                      // width: 100,  // Adjust the width as needed
                                      height: 40,  // Adjust the height as needed
                                      child: Center(
                                        child: Text(
                                          'Timeline',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 16,  // Adjust the font size as needed
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff13acb6),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      // Handle the tap event for "Rewards" button
                                    },
                                    child: Container( padding: const EdgeInsets.only(right:7),
                                      // width: 50,  // Adjust the width as needed
                                      height: 40,  // Adjust the height as needed
                                      child: const Center(
                                        child: Text(
                                          'About',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 16,  // Adjust the font size as needed
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff13acb6),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            )
                        )
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                          return Container(padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                            child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Revopoint INSPIRE 3D Scanner - For All Creators\n',
                                      style: GoogleFonts.montserrat (
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff000000),

                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment.topLeft,
                                    child: Text(
                                      'Kristin Jones',
                                      style: GoogleFonts.sourceSansPro (
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,

                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:const EdgeInsets.only(left: 10,bottom: 30),
                                    child: Align(
                                      alignment: Alignment.topLeft,

                                      child: Text(
                                        'started on,  Aug 20, 2023\nEnds at, sep 20,2023\nAll-or-nothing funding model\n\n',
                                        style: GoogleFonts.sourceSansPro (
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          height: 1.1875,
                                          color: const Color(0xff64625f),

                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Lorem ipsum dolor sit amet consectetur adipiscing elit fermentum velit ullamcorper taciti, sed morbi donec aliquet praesent tellus elementum semper aliquam quam. raesent tellus elementum semper aliquam quam. raesent tellus elementum semper aliquam quam.',
                                      style: GoogleFonts.sourceSansPro(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff000000),

                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 30,),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 200,
                                    height: 10, // Set the desired height
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1, // This part takes 50% of the width (left half)
                                          child: Container(
                                            color: const Color(0xff13acb6),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1, // This part takes 50% of the width (right half)
                                          child: Container(
                                            color:const Color(0xFFdfeefc),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 0.03),
                                    constraints: const BoxConstraints (
                                      maxWidth: 200,
                                    ),
                                    child: Text(
                                      '50% completed',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.dmSans (

                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        height: 1.3025,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 30,),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const payment()));
                                    },
                                    style: ElevatedButton.styleFrom(minimumSize:const Size(200, 50),
                                      backgroundColor:const Color(0xff13acb6),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0), // Border radius
                                      ),
                                    ),
                                    child: const Text(
                                      "FUND",
                                      style: TextStyle(fontSize: 20,
                                        color: Colors.white, // Text color
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 10.56),
                                    child: Text(
                                      'comments',
                                      style: GoogleFonts.montserrat (
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2175,
                                        color: const Color(0xff13acb6),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(30, 10, 10, 10),
                                    height: 120,
                                    width: double.infinity,
                                    decoration: BoxDecoration (
                                      color:Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              const Align(
                                                  child:Icon(Icons.person,size: 30,)
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 5,top: 5,right: 40),
                                                child: Align(
                                                  child: Text(
                                                    'amyrobson',
                                                    style: GoogleFonts.rubik (
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w500,
                                                      height: 1.185,
                                                      color: const Color(0xff334253),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 60),
                                                child: Align(
                                                  child: Text(
                                                    '1 month ago',
                                                    style: GoogleFonts.rubik(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w400,
                                                      height: 2,
                                                      color: const Color(0xff67727e),
                                                    ),
                                                  ),
                                                ),
                                              ),

                                              const Align(
                                                alignment: Alignment.topRight,
                                                 child: Icon(Icons.reply,)
                                              ),

                                              InkWell(
                                                onTap: () {
                                                  // Handle the tap event for "Rewards" button
                                                },
                                                child: Container(padding: const EdgeInsets.only(left:8),
                                                  child: const Text(
                                                    'Reply',
                                                    style: TextStyle(
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w400,
                                                      color: Color(0xff13acb6),

                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
                                            child: Align(
                                              child: Text(
                                                'Impressive! Though it seems the drag feature could be improved. But overall it looks incredible. You’ve nailed the design and the responsiveness at various breakpoints works really well.',
                                                style:GoogleFonts.rubik (
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color(0xff67727e),

                                                ),
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(30, 10, 10, 10),
                                    height: 120,
                                    width: double.infinity,
                                    decoration: BoxDecoration (
                                      color:Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              const Align(
                                                  child:Icon(Icons.person,size: 30,)
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 5,top: 5,right: 40),
                                                child: Align(
                                                  child: Text(
                                                    'amyrobson',
                                                    style: GoogleFonts.rubik (
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w500,
                                                      height: 1.185,
                                                      color: const Color(0xff334253),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 60),
                                                child: Align(
                                                  child: Text(
                                                    '1 month ago',
                                                    style: GoogleFonts.rubik(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w400,
                                                      height: 2,
                                                      color: const Color(0xff67727e),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const Align(
                                                  child:Icon(Icons.reply,)
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  // Handle the tap event for "Rewards" button
                                                },
                                                child: Container( padding: const EdgeInsets.only(left:8),
                                                  child: const Text(
                                                    'Reply',
                                                    style: TextStyle(
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w400,
                                                      color: Color(0xff13acb6),

                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
                                            child: Align(
                                              child: Text(
                                                'Impressive! Though it seems the drag feature could be improved. But overall it looks incredible. You’ve nailed the design and the responsiveness at various breakpoints works really well.',
                                                style:GoogleFonts.rubik (
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color(0xff67727e),

                                                ),
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(30, 10, 10, 10),
                                    height: 120,
                                    width: double.infinity,
                                    decoration: BoxDecoration (
                                      color:Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              const Align(
                                                  child:Icon(Icons.person,size: 30,)
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 5,top: 5,right: 40),
                                                child: Align(
                                                  child: Text(
                                                    'amyrobson',
                                                    style: GoogleFonts.rubik (
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w500,
                                                      height: 1.185,
                                                      color: const Color(0xff334253),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 60),
                                                child: Align(
                                                  child: Text(
                                                    '1 month ago',
                                                    style: GoogleFonts.rubik(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w400,
                                                      height: 2,
                                                      color: const Color(0xff67727e),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const Align(
                                                  child:Icon(Icons.reply,)
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  // Handle the tap event for "Rewards" button
                                                },
                                                child: Container( padding: const EdgeInsets.only(left:8),
                                                  child: const Text(
                                                    'Reply',
                                                    style: TextStyle(
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w400,
                                                      color: Color(0xff13acb6),

                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
                                            child: Align(
                                              child: Text(
                                                'Impressive! Though it seems the drag feature could be improved. But overall it looks incredible. You’ve nailed the design and the responsiveness at various breakpoints works really well.',
                                                style:GoogleFonts.rubik (
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color(0xff67727e),

                                                ),
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                ]
                            ),

                          );

                        },
                        childCount: 1, // Replace with the number of items you want
                      ),
                    ),
                  ],
                ),
              ) ,
              ),
            ),
          );
        });
      },

      debugShowCheckedModeBanner: false,
    );
  }

// onGenerateRoute route switcher.
// Navigate using the page name, `Navigator.pushNamed(context, ListPage.name)`.
}