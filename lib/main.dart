import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:trial/campain.dart';
import 'package:trial/detail.dart';
import 'package:trial/navbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime? currentBackPressTime;
    TextEditingController textController = TextEditingController();
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
          // **MaxWidthBox** - A widget that limits the maximum width.
          // This is used to create a gutter area on either side of the content.
          //
          // **ResponsiveScaledBox** - A widget that  renders its child
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
                context,
                Scaffold(
                  drawer: const navbar(),
                  appBar: AppBar(toolbarHeight: 80,
                    backgroundColor: const Color(0xff13adb7),
                    title: Text(
                      'Derash',
                      style: GoogleFonts.roboto(
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        color: const Color(0xff000000),
                      ),
                    ),

                    actions: [
                      Padding(
                        padding:const EdgeInsets.only(right: 10),
                        child: AnimSearchBar(
                          width: 300,
                          textController: textController,
                          onSuffixTap: () {
                            // Handle suffix tap
                          },
                          onSubmitted: (query) {
                            // Handle search submission
                            print('Search query: $query');
                          },
                        ),
                      ),

                    ],

                  ),
                  body:WillPopScope(
                    onWillPop: () async {
                      final now = DateTime.now();
                      if (currentBackPressTime == null ||
                          now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
                        currentBackPressTime = now;
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Press back again to exit'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                        return false;
                      }
                      return true;
                    },
                    child:ListView(
                        children: [const SizedBox(height: 30,),
                          Column(
                            children: [
                              Align(
                                alignment:Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Text(
                                    'Popular Campaigns',
                                    style: GoogleFonts.josefinSans(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8,
                                      color: const Color(0xff364c6f),

                                    ),
                                  ),
                                ),
                              ),
                              const Divider(  // Add a horizontal line (Divider)
                                thickness: 2, // Adjust the thickness as needed
                                color: Colors.grey,
                                indent: 35,
                                endIndent: 40,
                              ),
                              const SizedBox(height: 10),
                              SizedBox(

                                width: 400,
                                child:Column(
                                  children: [
                                    Container(
                                      // cardheaderXy1 (1:4328)
                                      margin: const EdgeInsets.fromLTRB(0, 0, 5, 0.18),
                                      width: 400,
                                      height: 47.17,
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // avatarNyd (I1:4329;9:1079;15:210)
                                              margin: const EdgeInsets.fromLTRB(0, 0, 7.86, 0),
                                              width: 47.17,
                                              height: 47.17,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(39.305557251),
                                                child: Image.asset(
                                                  'assets/page-1/images/avatar-qTm.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // mediacontent5t3 (I1:4329;15:673)
                                              margin: const EdgeInsets.fromLTRB(0, 2.9, 0, 2.9),
                                              width: 188.67,
                                              height: double.infinity,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    // frankestebanDDZ (I1:4329;15:673;15:637)
                                                    left: 0,
                                                    top: 0,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 190,
                                                        height: 24,
                                                        child: Text(
                                                            'Ecommerce Platform',
                                                            style: GoogleFonts.roboto(

                                                              fontSize: 20,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.1725,
                                                              color: const Color(0xff000000),
                                                            )
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // webdevelopmenthuR (I1:4329;15:673;15:638)
                                                    left: 0,
                                                    top: 20.3583374023,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 95,
                                                        height: 21,
                                                        child: Text(
                                                            'Web Development',
                                                            style: GoogleFonts.roboto (
                                                              fontSize: 11.0055561066,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.8214286767,
                                                              letterSpacing: 0.393055588,
                                                              color: const Color(0xff78858f),
                                                            )
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Container(
                                      // raisedof85Awy (2:236)
                                      margin: const EdgeInsets.fromLTRB(70, 5, 30, 14.04),
                                      alignment: Alignment.topLeft,
                                      child: RichText(
                                        text: TextSpan(
                                          style: GoogleFonts.inter (
                                            fontSize: 16.3421058655,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2098716499,
                                            color: const Color(0xff000000),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: 'Raised of',
                                              style: GoogleFonts.roboto (

                                                fontSize: 16.3421058655,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2098716499,
                                                color: const Color(0xff7caa7b),
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' ',
                                              style: GoogleFonts.roboto (
                                                fontSize: 16.3421058655,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2098716499,
                                                color: const Color(0xff7caa7b),
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' 85%',
                                              style: GoogleFonts.roboto (

                                                fontSize: 16.3421058655,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2098716499,
                                                color: const Color(0xff000000),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // september232021Hod (2:237)
                                      margin: const EdgeInsets.fromLTRB(0, 0, 290, 12),
                                      child: Text(
                                        'September 23, 2021',
                                        style: GoogleFonts.roboto (
                                          fontSize: 11.0108098984,
                                          fontWeight: FontWeight.w400,
                                          height: 1.4168750348,
                                          color: const Color(0xff828282),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // rectangle67khD (2:239)
                                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 10.5),
                                      width: MediaQuery.of(context).size.width,
                                      height: 200,
                                      decoration: const BoxDecoration (
                                        color: Color(0xffd9d9d9),
                                        image: DecorationImage (
                                          fit: BoxFit.cover,
                                          image: AssetImage (
                                            'assets/page-1/images/rectangle-67-bg-eVd.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // minimdolorinametnullalaborisen (2:240)
                                      margin: const EdgeInsets.fromLTRB(0, 0, 31, 20.5),
                                      constraints: const BoxConstraints (
                                        maxWidth: 300,
                                      ),
                                      child: Text(
                                        'Minim dolor in amet nulla laboris enim dolore consequat proident fugiat culpa eiusmod...',
                                        style: GoogleFonts.roboto (

                                          fontSize: 11.5349149704,
                                          fontWeight: FontWeight.w400,
                                          height: 1.4285714994,
                                          letterSpacing: 0.1235883832,
                                          color: const Color(0xff364c6f),
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Detail()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color(0xFF13ADB7),fixedSize: const Size(200, 10),shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) // Background color of the button
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'View Details',
                                          style: TextStyle(
                                            fontSize: 14.86,
                                            fontWeight: FontWeight.w500,
                                            height: 1.9919,
                                            color: Color(0xff364c6f),
                                          ),
                                        ),
                                      ),
                                    )

                                  ],

                                ),
                              ),
                              const SizedBox(height: 20),
                              SizedBox(
                                width: 400,
                                child:Column(
                                  children: [
                                    Container(
                                      // cardheaderXy1 (1:4328)
                                      margin: const EdgeInsets.fromLTRB(0, 0, 5, 0.18),
                                      width: 400,
                                      height: 47.17,
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // avatarNyd (I1:4329;9:1079;15:210)
                                              margin: const EdgeInsets.fromLTRB(0, 0, 7.86, 0),
                                              width: 47.17,
                                              height: 47.17,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(39.305557251),
                                                child: Image.asset(
                                                  'assets/page-1/images/avatar.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // mediacontent5t3 (I1:4329;15:673)
                                              margin: const EdgeInsets.fromLTRB(0, 2.9, 0, 2.9),
                                              width: 188.67,
                                              height: double.infinity,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    // frankestebanDDZ (I1:4329;15:673;15:637)
                                                    left: 0,
                                                    top: 0,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 190,
                                                        height: 24,
                                                        child: Text(
                                                            'Polution Awarness',
                                                            style: GoogleFonts.roboto(

                                                              fontSize: 20,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.1725,
                                                              color: const Color(0xff000000),
                                                            )
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // webdevelopmenthuR (I1:4329;15:673;15:638)
                                                    left: 0,
                                                    top: 20.3583374023,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 95,
                                                        height: 21,
                                                        child: Text(
                                                            'Social Affairs',
                                                            style: GoogleFonts.roboto (
                                                              fontSize: 11.0055561066,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.8214286767,
                                                              letterSpacing: 0.393055588,
                                                              color: const Color(0xff78858f),
                                                            )
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Container(
                                      // raisedof85Awy (2:236)
                                      margin: const EdgeInsets.fromLTRB(70, 0, 30, 14.04),
                                      alignment:Alignment.topLeft,
                                      child: RichText(
                                        text: TextSpan(
                                          style: GoogleFonts.inter (
                                            fontSize: 16.3421058655,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2098716499,
                                            color: const Color(0xff000000),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: 'Raised of',
                                              style: GoogleFonts.roboto (

                                                fontSize: 16.3421058655,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2098716499,
                                                color: const Color(0xff7caa7b),
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' ',
                                              style: GoogleFonts.roboto (
                                                fontSize: 16.3421058655,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2098716499,
                                                color: const Color(0xff7caa7b),
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' 75%',
                                              style: GoogleFonts.roboto (

                                                fontSize: 16.3421058655,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2098716499,
                                                color: const Color(0xff000000),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // september232021Hod (2:237)
                                      margin: const EdgeInsets.fromLTRB(0, 0, 290, 12),
                                      child: Text(
                                        'September 23, 2021',
                                        style: GoogleFonts.roboto (
                                          fontSize: 11.0108098984,
                                          fontWeight: FontWeight.w400,
                                          height: 1.4168750348,
                                          color: const Color(0xff828282),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // rectangle67khD (2:239)
                                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 10.5),
                                      width: MediaQuery.of(context).size.width,
                                      height: 200,
                                      decoration: const BoxDecoration (
                                        color: Color(0xffd9d9d9),
                                        image: DecorationImage (
                                          fit: BoxFit.cover,
                                          image: AssetImage (
                                            'assets/page-1/images/rectangle-67-bg.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // minimdolorinametnullalaborisen (2:240)
                                      margin: const EdgeInsets.fromLTRB(0, 0, 31, 20.5),
                                      constraints: const BoxConstraints (
                                        maxWidth: 250,
                                      ),
                                      child: Text(
                                        'Minim dolor in amet nulla laboris enim dolore consequat proident fugiat culpa eiusmod...',
                                        style: GoogleFonts.roboto (

                                          fontSize: 11.5349149704,
                                          fontWeight: FontWeight.w400,
                                          height: 1.4285714994,
                                          letterSpacing: 0.1235883832,
                                          color: const Color(0xff364c6f),
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Detail()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color(0xFF13ADB7),fixedSize: const Size(200, 10),shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) // Background color of the button
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'View Details',
                                          style: TextStyle(
                                            fontSize: 14.86,
                                            fontWeight: FontWeight.w500,
                                            height: 1.9919,
                                            color: Color(0xff364c6f),
                                          ),
                                        ),
                                      ),
                                    )

                                  ],

                                ),
                              ),
                            ],
                          ) ,
                        ]

                    ),
                  ),


                  bottomNavigationBar: Container(
                    padding: const EdgeInsets.fromLTRB(20, 12, 20.5, 0),
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: const BoxDecoration (
                      color: Color(0xfff3f4f9),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        Container(
                          // item1gK (2:258)
                          margin: const EdgeInsets.fromLTRB(0, 0, 26.5, 8),
                          width: 64,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // iconxLf (I2:258;107:14284)
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                                padding: const EdgeInsets.fromLTRB(19.5, 4, 20.5, 4),
                                width: double.infinity,
                                decoration: const BoxDecoration (
                                  image: DecorationImage (
                                    fit: BoxFit.cover,
                                    image: AssetImage (
                                      'assets/page-1/images/active-indicator.png',
                                    ),
                                  ),
                                ),
                                child: Center(
                                  // icontEK (I2:258;107:14286)
                                  child: SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: Image.asset(
                                      'assets/page-1/images/icon-LKq.png',
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                // labeltextBUK (I2:258;107:14287)
                                'Home',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto (

                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  height: 1.3333333333,
                                  letterSpacing: 0.5,
                                  color: const Color(0xff001c38),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // itemvRu (2:259)
                          margin: const EdgeInsets.fromLTRB(0, 4, 25.5, 8),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // iconsM9 (2:260)
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  'assets/page-1/images/icon-Mrw.png',
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                              Text(
                                // labeltextc3q (2:263)
                                'Dashboard',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto (

                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  height: 1.3333333333,
                                  letterSpacing: 0.5,
                                  color: const Color(0xff999999),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // itemkQw (2:264)
                          margin: const EdgeInsets.fromLTRB(0, 2, 32.5, 0),
                          width: 66,
                          height: 58,
                          child: Stack(
                            children: [
                               InkWell(
                                 onTap: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const campain()));// Handle the tap event for "Description" button
                                 },
                                 child: SizedBox(
                                  width: 90,
                                  height: 58,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 21,
                                        top: 0,
                                        child: Align(
                                          child: SizedBox(
                                            width: 24,
                                            height: 58,
                                            child: Image.asset(
                                              'assets/page-1/images/icon.png',
                                              width: 24,
                                              height: 58,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 0,
                                        top: 34,
                                        child: Align(
                                          child: SizedBox(
                                            width: 66,
                                            height: 16,
                                            child: Text(
                                              'Campaigns',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                height: 1.3333333333,
                                                letterSpacing: 0.5,
                                                color: Color(0xff999999),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                              ),
                               ),
                            ],
                          ),
                        ),
                        Container(
                          // itemd7M (2:272)
                          margin: const EdgeInsets.fromLTRB(0, 4, 0, 8),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // iconZFu (I2:272;107:14289)
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  'assets/page-1/images/icon-rJj.png',
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                              Text(
                                // labeltextUtf (I2:272;107:14290)
                                'Settings',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto (

                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  height: 1.3333333333,
                                  letterSpacing: 0.5,
                                  color: const Color(0xff999999),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
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