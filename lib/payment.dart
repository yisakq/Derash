import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:trial/campain.dart';
import 'package:trial/detail.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const  payment());
}
class payment extends StatelessWidget {
  const payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  body:ListView(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width:double.infinity,
                                height:350,
                                decoration: const BoxDecoration (
                                  image: DecorationImage (
                                    fit: BoxFit.cover,
                                    image: AssetImage (
                                      'assets/page-1/images/handshak.png',
                                    ),
                                  ),

                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 10),
                                child: IconButton(padding: const EdgeInsets.only(left: 10),
                                  icon: const Icon(Icons.arrow_back_ios_new_sharp,color: Colors.black,size: 30,),
                                  onPressed: () {
                                    // Handle the back arrow tap here
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Detail()));

                                  },
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 20),
                                alignment: Alignment.center,
                                child: Text(
                                  // paymentzmd (1:4714)
                                  'PAYMENT',
                                  style: GoogleFonts.inter (
                                    fontSize: 22,
                                    fontWeight: FontWeight.w900,
                                    height: 1.2125,
                                    color: const Color(0xff0dfce0),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 330),
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  'our goal is to help each other grow',
                                  style:GoogleFonts.inter(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2125,
                                    fontStyle: FontStyle.italic,
                                    color: const Color(0xffffffff),
                                  ),
                                ),),
                            ],

                          ),
                          const SizedBox(height: 25),
                          Center(
                            child: SizedBox(
                              width: 300,
                              child: OutlinedButton(
                                onPressed: (){},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  padding: const EdgeInsets.all(16.0),
                                  side: const BorderSide(color: Colors.black),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/page-1/images/logos-paypal.png',
                                      width: 21.92,
                                      height: 21.92,
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'PAYPAL',
                                          style: GoogleFonts.inter (
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2125,
                                            color: const Color(0xff070707),

                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Center(
                            child: SizedBox(
                              width: 300,
                              child: OutlinedButton(
                                onPressed: (){},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  padding: const EdgeInsets.all(16.0),
                                  side: const BorderSide(color: Colors.black),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/page-1/images/vector-Xyh.png',
                                      width: 21.92,
                                      height: 21.92,
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'CARD PAYMENT',
                                          style: GoogleFonts.inter (
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2125,
                                            color: const Color(0xff070707),

                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Center(
                            child: SizedBox(
                              width: 300,
                              child: OutlinedButton(
                                onPressed: (){},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  padding: const EdgeInsets.all(16.0),
                                  side: const BorderSide(color: Colors.black),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/page-1/images/tabler-building-bank.png',
                                      width: 21.92,
                                      height: 21.92,
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'BANK TRANSFER',
                                          style: GoogleFonts.inter (
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2125,
                                            color: const Color(0xff070707),

                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Text(
                            'Select payment method',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter (
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              height: 1.2125,
                              letterSpacing: 1.8,
                              color: const Color(0xff070707),
                            ),
                          ),
                          const SizedBox(height: 15,),
                          ElevatedButton(
                            onPressed: () {
                              // Handle the "Back" button press
                            },
                            style: ElevatedButton.styleFrom(minimumSize:const Size(200, 50),
                              backgroundColor:const Color(0xff13acb6),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0), // Border radius
                              ),
                            ),
                            child: const Text(
                              "CONFIRM PAYMENT",
                              style: TextStyle(fontSize: 20,
                                color: Colors.white, // Text color
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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