import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:trial/main.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const campain());
}

class campain extends StatelessWidget {
  const campain({Key? key}) : super(key: key);

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
                   title: const Text('Campaign',style:TextStyle(color: Colors.black,fontSize: 30,) ),
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
                 body: ListView(
                   children: [
                     Container(
                     alignment: Alignment.center,
                     padding: const EdgeInsets.fromLTRB(10, 40, 20,10),
                     height: 200,
                     width: double.infinity,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xff13adb7),),
                          width: 130,
                          height: 200,
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '03',
                                style: GoogleFonts.jost (
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                          Container(
                            // line133UT (1:4390)
                            margin: const EdgeInsets.fromLTRB(23, 0, 39, 9),
                            width:12,
                            height: 1,
                            decoration: const BoxDecoration (
                              color: Color(0xffffffff),
                            ),
                           ),
                              const SizedBox(height: 8,),
                              Text(
                                'Active Campaign',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto (
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  height: 1.3000000545,
                                  letterSpacing: 1.4,
                                  color: const Color(0xffd2def1),
                                ),
                              ),
                            ],
                          ),
                        ),
                         const SizedBox(width: 10,),
                         Container(
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xffd2e792),),
                           width: 130,
                           height: 200,
                           alignment: Alignment.center,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text(
                                 '15',
                                 style: GoogleFonts.jost (
                                   fontSize: 26,
                                   fontWeight: FontWeight.w600,
                                   color: const Color(0xffffffff),
                                 ),
                               ),
                               Container(
                                 // line133UT (1:4390)
                                 margin: const EdgeInsets.fromLTRB(23, 0, 39, 9),
                                 width:12,
                                 height: 1,
                                 decoration: const BoxDecoration (
                                   color: Color(0xffffffff),
                                 ),
                               ),
                               const SizedBox(height: 8,),
                               Text(
                                 'Active Investors',
                                 textAlign: TextAlign.center,
                                 style: GoogleFonts.roboto (
                                   fontSize: 20,
                                   fontWeight: FontWeight.w500,
                                   height: 1.3000000545,
                                   letterSpacing: 1.4,
                                   color: const Color(0xffd2def1),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         const SizedBox(width: 10,),
                         Container(
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xff13adb7),),
                           width: 130,
                           height: 200,
                           alignment: Alignment.center,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text(
                                 '\$50k',
                                 style: GoogleFonts.jost (
                                   fontSize: 26,
                                   fontWeight: FontWeight.w600,
                                   color: const Color(0xffffffff),
                                 ),
                               ),
                               Container(
                                 // line133UT (1:4390)
                                 margin: const EdgeInsets.fromLTRB(23, 0, 39, 9),
                                 width:12,
                                 height: 1,
                                 decoration: const BoxDecoration (
                                   color: Color(0xffffffff),
                                 ),
                               ),
                               const SizedBox(height: 8,),
                               Text(
                                 'Total Funding',
                                 textAlign: TextAlign.center,
                                 style: GoogleFonts.roboto (
                                   fontSize: 20,
                                   fontWeight: FontWeight.w500,
                                   height: 1.3000000545,
                                   letterSpacing: 1.4,
                                   color: const Color(0xffd2def1),
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ],

                     ),
                   ),
                     Container(
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,
                         boxShadow: [
                         BoxShadow(
                           color: Colors.grey.withOpacity(0.5), // Shadow color
                           spreadRadius: 5, // Spread radius
                           blurRadius: 7, // Blur radius
                           offset: const Offset(0, 3), // Offset (X, Y)
                         ),
                       ],),
                       margin: const EdgeInsets.all(50),
                       width: MediaQuery.of(context).size.width,
                       height:650,
                       child: Column(
                         children: [
                           Container(
                             // rectangle67khD (2:239)
                             margin: const EdgeInsets.fromLTRB(0, 0, 0, 10.5),
                             width: MediaQuery.of(context).size.width,
                             height: 300,
                             decoration: BoxDecoration (
                               borderRadius: BorderRadius.circular(20),
                               color: const Color(0xffd9d9d9),
                               image: const DecorationImage (
                                 fit: BoxFit.cover,
                                 image: AssetImage (
                                   'assets/page-1/images/rectangle-1-bg.png',
                                 ),
                               ),
                             ),
                           ),
                            const SizedBox(height: 10,),
                            Container(
                              padding: const EdgeInsets.only(left: 10),
                              alignment: Alignment.topLeft,
                                child: Text(
                                   'Raising Capital for inhouse Ev Startup',
                                   style: GoogleFonts.josefinSans (
                                     fontSize: 20,
                                     fontWeight: FontWeight.w500,
                                     height: 1.25,
                                     color: const Color(0xff364c6f),
                               ),
                             ),

                            ),
                           SingleChildScrollView(
                             child: Container(
                               margin: const EdgeInsets.all(20),
                               child: Text(
                                   'Lorem ipsum dolor sit amet consectetur. Amet maecenas platea morbi sit ut non sit. Sed sed hac mi quam. Viverra mi euismod netus enim porta viverra non. Pharetra eu lac.',
                                   style:GoogleFonts.inter (
                                     fontSize: 12.7399997711,
                                     fontWeight: FontWeight.w400,
                                     height: 1.4678179826,
                                     color: const Color(0xff5e5e5e),
                                   ),
                           ),
                             )
                           ),
                                   Container(
                                     margin: const EdgeInsets.all(10),
                                     child: SingleChildScrollView(
                                       scrollDirection: Axis.horizontal,
                                       child: Row(
                                         children: [
                                           Text(
                                             'Raised of',
                                             style:GoogleFonts.roboto (

                                               fontSize: 16.3421058655,
                                               fontWeight: FontWeight.w500,
                                               height: 1.2098716499,
                                               color: const Color(0xff7caa7b),
                                             ),
                                           ),
                                           Text(
                                             ' 85%',
                                             style: GoogleFonts.roboto (
                                               fontSize: 16.3421058655,
                                               fontWeight: FontWeight.w700,
                                               height: 1.2098716499,
                                               color: const Color(0xff000000),
                                             ),
                                           ),
                                           const SizedBox(width: 170,),
                                           Text(
                                             // noofsubscriber1QT (1:4464)
                                             'No Of Subscriber',
                                             textAlign: TextAlign.right,
                                             style: GoogleFonts.inter (
                                               fontSize: 12.7399997711,
                                               fontWeight: FontWeight.w500,
                                               height: 1.3105361252,
                                               color: const Color(0xff9eaec7),
                                             ),
                                           ),

                                       ],

                                   ),
                                     ),
                                 ),
                                   Container(
                             margin: const EdgeInsets.all(10),
                             child: SingleChildScrollView(
                               scrollDirection: Axis.horizontal,
                               child: Row(
                                 children: [
                                   Container(
                                     height:20 ,
                                     decoration: BoxDecoration (
                                       color: const Color(0xffd2e797),
                                       borderRadius: BorderRadius.circular(4),
                                     ),
                                     child: Text(
                                       'Raise Goal \n',
                                       style:GoogleFonts.inter (
                                         fontSize: 9.2965316772,
                                         fontWeight: FontWeight.w500,
                                         height: 1.3870426298,
                                         color: const Color(0xff8caa33),
                                       ),
                                     ),
                                   ),
                                   const SizedBox(width: 20,),
                                   Text(
                                     '\$30000',
                                     style: GoogleFonts.inter (

                                       fontSize: 14,
                                       fontWeight: FontWeight.w500,
                                       height: 0.996118818,
                                       color: const Color(0xff9eaec7),
                                     ),
                                   ),
                                   const SizedBox(width: 170,),
                                       Text(
                                         // supportingtextd4T (1:4469)
                                         '205',
                                         style: GoogleFonts.inter (
                                           fontSize: 14,
                                           fontWeight: FontWeight.w500,
                                           height: 0.996118818,
                                           color: const Color(0xff536b91),
                                         ),
                                       )
                                 ],

                               ),
                             ),
                           ),
                           const SizedBox(height: 20,),

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
                               "Withdraw Fund",
                               style: TextStyle(fontSize: 20,
                                 color: Colors.white, // Text color
                               ),
                             ),
                           ),

                         ],
                       ),
                     ),
                     Container(
                       padding: const EdgeInsets.only(left: 40,top: 10),
                       child: Text(
                         'Your Campaign Backed by following investor.',
                         style: GoogleFonts.josefinSans (
                           fontSize: 16,
                           fontWeight: FontWeight.w500,
                           color: const Color(0xff364c6f),
                         ),
                       ),
                     ),
                     Container(
                       padding: const EdgeInsets.only(left: 40,top: 5),
                       child: Text(
                         'you can message & Invite for meeting! ',
                         style: GoogleFonts.inter (
                           fontSize: 10.2916669846,
                           fontWeight: FontWeight.w400,
                           height: 1.2631578557,
                           color: const Color(0xff667084),
                         ),
                       ),
                     ),
                     Container(
                     margin: const EdgeInsets.fromLTRB(50,20,50,0),
                       decoration: BoxDecoration(color: Colors.white,
                         boxShadow: [
                           BoxShadow(
                             color: Colors.grey.withOpacity(0.5), // Shadow color
                             spreadRadius: 5, // Spread radius
                             blurRadius: 7, // Blur radius
                             offset: const Offset(0, 3), // Offset (X, Y)
                           ),
                         ],),
                       width: MediaQuery.of(context).size.width,
                       height: 150,
                       child: Column(
                         children: [
                           Row(
                             children: [
                               Container(
                                 margin: const EdgeInsets.fromLTRB(10, 20, 8.08, 0),
                                 width: 40,
                                 height: 40,
                                 decoration: BoxDecoration (
                                   borderRadius: BorderRadius.circular(17),
                                   image: const DecorationImage (
                                     fit: BoxFit.cover,
                                     image: AssetImage (
                                       'assets/page-1/images/ellipse-1-bg-vPh.png',
                                     ),
                                   ),
                                 ),
                               ),
                               Column(
                                 children: [
                                   Container(
                                    // alignment: Alignment.center,
                                     margin: const EdgeInsets.fromLTRB(3, 20, 0, 0),
                                     child: Text(
                                       'Addy Murray',
                                       style: GoogleFonts.inter (
                                         fontSize: 15,
                                         fontWeight: FontWeight.w600,
                                         color: const Color(0xff101728),
                                       ),
                                     ),
                                   ),
                                   Container(
                                     alignment: Alignment.center,
                                     margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                                     width:100,
                                     child: Text(
                                       'Angel Investor & Founder of Aprilla EV',
                                       style: GoogleFonts.inter(
                                         fontSize: 9.509560585,
                                         fontWeight: FontWeight.w400,
                                         color: const Color(0xff667084),
                                       ),
                                     ),
                                   ),
                                   Container(
                                     alignment: Alignment.center,
                                     margin: const EdgeInsets.fromLTRB(2, 7, 0, 10),
                                     child: Image.asset(
                                       'assets/page-1/images/group-28-zns.png',
                                       width: 64.17,
                                       height: 9.17,
                                     ),
                                   ),
                                 ],
                               ),
                               const SizedBox(width: 100,),
                               Column(
                                 children: [
                                   Container(
                                     child: Text(
                                       ' \$10,000',
                                       style: GoogleFonts.inter (

                                         fontSize: 14.4142065048,
                                         fontWeight: FontWeight.w700,
                                         color: const Color(0xff707d92),
                                       ),
                                     ),
                                   ),
                                   const SizedBox(height: 5,),
                                   Container(
                                     // group888ZV (1:4511)
                                    // margin: EdgeInsets.fromLTRB(0, 0, 0.62, 0),
                                     width:70,
                                     height: 14.09,
                                     decoration: BoxDecoration (
                                       border: Border.all(color: const Color(0xffc8cbd1)),
                                       borderRadius: BorderRadius.circular(2.9359827042),
                                     ),
                                     child: Center(
                                       child: Text(
                                         'Invested Amt',
                                         style:GoogleFonts.inter (
                                           fontSize: 10,
                                           fontWeight: FontWeight.w600,
                                           color: const Color(0xff364c6f),
                                         ),
                                       ),
                                     ),
                                   ),
                                 ],

                               )],
                           ),
                           const SizedBox(width: 10,),
                           Align(
                             child: SizedBox(
                               width: double.infinity,
                               height: 0.77,
                               child: Container(
                                 decoration: const BoxDecoration (
                                   color: Color(0xfff5f5f5),
                                 ),
                               ),
                             ),
                           ),
                           Row(
                             children:[
                               Padding(
                                 padding: const EdgeInsets.only(top: 10,left: 5),
                                child: Container(
                                   // group28BtT (1:4555)
                                   margin: const EdgeInsets.fromLTRB(0, 0, 24.68, 0),
                                   width: 40,
                                   height: 40,
                                   child: Image.asset(
                                     'assets/page-1/images/group-90.png',
                                     width: 40,
                                     height: 40,
                                   ),
                                 ),
                               ),
                               const Expanded(
                                 child: TextField(
                                   decoration: InputDecoration(
                                     hintText: 'Send a message',

                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),

                     ),
                     Container(
                       margin: const EdgeInsets.fromLTRB(50,20,50,0),
                       decoration: BoxDecoration(color: Colors.white,
                         boxShadow: [
                           BoxShadow(
                             color: Colors.grey.withOpacity(0.5), // Shadow color
                             spreadRadius: 5, // Spread radius
                             blurRadius: 7, // Blur radius
                             offset: const Offset(0, 3), // Offset (X, Y)
                           ),
                         ],),
                       width: MediaQuery.of(context).size.width,
                       height: 150,
                       child: Column(
                         children: [
                           Row(
                             children: [
                               Container(
                                 margin: const EdgeInsets.fromLTRB(10, 20, 8.08, 0),
                                 width: 40,
                                 height: 40,
                                 decoration: BoxDecoration (
                                   borderRadius: BorderRadius.circular(17),
                                   image: const DecorationImage (
                                     fit: BoxFit.cover,
                                     image: AssetImage (
                                       'assets/page-1/images/ellipse-1-bg-vPh.png',
                                     ),
                                   ),
                                 ),
                               ),
                               Column(
                                 children: [
                                   Container(
                                     // alignment: Alignment.center,
                                     margin: const EdgeInsets.fromLTRB(3, 20, 0, 0),
                                     child: Text(
                                       'Addy Murray',
                                       style: GoogleFonts.inter (
                                         fontSize: 15,
                                         fontWeight: FontWeight.w600,
                                         color: const Color(0xff101728),
                                       ),
                                     ),
                                   ),
                                   Container(
                                     alignment: Alignment.center,
                                     margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                                     width:100,
                                     child: Text(
                                       'Angel Investor & Founder of Aprilla EV',
                                       style: GoogleFonts.inter(
                                         fontSize: 9.509560585,
                                         fontWeight: FontWeight.w400,
                                         color: const Color(0xff667084),
                                       ),
                                     ),
                                   ),
                                   Container(
                                     alignment: Alignment.center,
                                     margin: const EdgeInsets.fromLTRB(2, 7, 0, 10),
                                     child: Image.asset(
                                       'assets/page-1/images/group-28-zns.png',
                                       width: 64.17,
                                       height: 9.17,
                                     ),
                                   ),
                                 ],
                               ),
                               const SizedBox(width: 100,),
                               Column(
                                 children: [
                                   Container(
                                     child: Text(
                                       ' \$10,000',
                                       style: GoogleFonts.inter (

                                         fontSize: 14.4142065048,
                                         fontWeight: FontWeight.w700,
                                         color: const Color(0xff707d92),
                                       ),
                                     ),
                                   ),
                                   const SizedBox(height: 5,),
                                   Container(
                                     // group888ZV (1:4511)
                                     // margin: EdgeInsets.fromLTRB(0, 0, 0.62, 0),
                                     width:70,
                                     height: 14.09,
                                     decoration: BoxDecoration (
                                       border: Border.all(color: const Color(0xffc8cbd1)),
                                       borderRadius: BorderRadius.circular(2.9359827042),
                                     ),
                                     child: Center(
                                       child: Text(
                                         'Invested Amt',
                                         style:GoogleFonts.inter (
                                           fontSize: 10,
                                           fontWeight: FontWeight.w600,
                                           color: const Color(0xff364c6f),
                                         ),
                                       ),
                                     ),
                                   ),
                                 ],

                               )],
                           ),
                           const SizedBox(width: 10,),
                           Align(
                             child: SizedBox(
                               width: double.infinity,
                               height: 0.77,
                               child: Container(
                                 decoration: const BoxDecoration (
                                   color: Color(0xfff5f5f5),
                                 ),
                               ),
                             ),
                           ),
                           Row(
                             children:[
                               Padding(
                                 padding: const EdgeInsets.only(top: 10,left: 5),
                                 child: Container(
                                   // group28BtT (1:4555)
                                   margin: const EdgeInsets.fromLTRB(0, 0, 24.68, 0),
                                   width: 40,
                                   height: 40,
                                   child: Image.asset(
                                     'assets/page-1/images/group-90.png',
                                     width: 40,
                                     height: 40,
                                   ),
                                 ),
                               ),
                               const Expanded(
                                 child: TextField(
                                   decoration: InputDecoration(
                                     hintText: 'Send a message',

                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),

                     ),
                     const SizedBox(height: 10,),
                     Align(
                       alignment: Alignment.center,
                       child: ElevatedButton(
                         onPressed: () {
                           // Handle the "Back" button press
                         },
                         style: ElevatedButton.styleFrom(minimumSize:const Size(300, 50),
                           backgroundColor:const Color(0xff13acb6),
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10.0), // Border radius
                           ),
                         ),
                         child: const Text(
                           "View More",
                           style: TextStyle(fontSize: 20,
                             color: Colors.white, // Text color
                           ),
                         ),
                       ),
                     ),
                     const SizedBox(height: 20,),
                     Container(
                       margin: const EdgeInsets.only(left: 40,top: 20),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start (left) of the column
                             children: [
                               Row(
                                 children: [
                                   Text(
                                     'Your Campaign Follower',
                                     style: GoogleFonts.josefinSans(
                                       fontSize: 16,
                                       fontWeight: FontWeight.w500,
                                       height: 1.25,
                                       color: const Color(0xff364c6f),
                                     ),
                                   ),
                                   Container(
                                     alignment: Alignment.topRight,
                                   padding: const EdgeInsets.only(left: 100,right: 10),
                                     child: Image.asset(
                                       'assets/page-1/images/vector-TFd.png',
                                       width: 23,
                                       height: 23,
                                     ),
                                   ),
                                 ],
                               ),
                               const SizedBox(height: 5,),
                               SizedBox(
                                 width: MediaQuery.of(context).size.width,
                                 child: Text(
                                   'Your Campaign Follower will turn into a potential investor',
                                   style: GoogleFonts.inter(
                                     fontSize: 15,
                                     fontWeight: FontWeight.w400,
                                     color: const Color(0xff667084),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                           const SizedBox(width: 10), // Add spacing between the text and the image

                         ],
                       ),
                     ),
                     const SizedBox(height: 50,),
                     Stack(
                       children: [
                         ClipRect(
                           child: Align(
                             alignment: Alignment.centerRight, // Adjust alignment as needed
                             widthFactor: 0.5, // Control the portion of the image that is visible
                             child: Image.asset(
                               'assets/page-1/images/vector-LPH.png',
                               width: 100, // Adjust the width to your preference
                               height: 100, // Adjust the height to your preference
                             ),
                           ),),
                         SingleChildScrollView(
                           scrollDirection: Axis.horizontal,
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               SizedBox(
                                 width:170, // Set a fixed width
                                 height: 200, // Set a fixed height
                                 child: Container(
                                   margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                   decoration: BoxDecoration(
                                     color: Colors.white,
                                     boxShadow: [
                                       BoxShadow(
                                         color: Colors.grey.withOpacity(0.5),
                                         spreadRadius: 5,
                                         blurRadius: 7,
                                         offset: const Offset(0, 3),
                                       ),
                                     ],
                                   ),
                                   child: Column(
                                     children: [
                                       Container(
                                         margin: const EdgeInsets.fromLTRB(10, 20, 8.08, 0),
                                         alignment: Alignment.center,
                                         width: 70,
                                         height: 70,
                                         decoration: BoxDecoration (
                                           borderRadius: BorderRadius.circular(115),
                                           image: const DecorationImage (
                                             fit: BoxFit.cover,
                                             image: AssetImage (

                                               'assets/page-1/images/ellipse-4-bg-Hwd.png',
                                             ),
                                           ),
                                         ),
                                       ),
                                       const SizedBox(height: 10,),
                                       Text(
                                         'Alex Patrick',
                                         style:GoogleFonts.inter(

                                           fontSize:15,
                                           fontWeight: FontWeight.w600,
                                           height: 1.1269722824,
                                           color: const Color(0xff101728),
                                         ),
                                       ),
                                       const SizedBox(height:5),
                                       Text(
                                         'Angel Investor & Founder of  Crowwwn',
                                         textAlign: TextAlign.center,
                                         style:GoogleFonts.inter (
                                           fontSize:10,
                                           fontWeight: FontWeight.w400,
                                           height: 1.3041353912,
                                           color: const Color(0xff667084),
                                         ),
                                       ),
                                       const SizedBox(height:7),
                                       Image.asset(
                                         'assets/page-1/images/group-29.png',
                                         width: 40,
                                         height: 10,
                                       ),
                                       const SizedBox(height:10,),
                                       Align(
                                         child: SizedBox(
                                           width: double.infinity,
                                           height: 0.77,
                                           child: Container(
                                             decoration: const BoxDecoration (
                                               color: Color(0xfff5f5f5),
                                             ),
                                           ),
                                         ),
                                       ),
                                       const SizedBox(height: 10,),
                                       TextButton(
                                         onPressed: () {
                                           // Add your button's action here
                                         },
                                         style: TextButton.styleFrom(
                                           padding: EdgeInsets.zero, // Remove padding
                                           minimumSize: const Size(0, 0), // Minimum size
                                           tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduce tap target size
                                         ),
                                         child: const Text(
                                           'View Profile',
                                           style: TextStyle(
                                             fontSize: 10,
                                             fontWeight: FontWeight.bold,
                                             color: Colors.black, // Text color
                                           ),
                                         ),
                                       )


                                     ],
                                   ),
                                 ),
                               ),
                               SizedBox(
                                 width:170, // Set a fixed width
                                 height: 200, // Set a fixed height
                                 child: Container(
                                   margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                   decoration: BoxDecoration(
                                     color: Colors.white,
                                     boxShadow: [
                                       BoxShadow(
                                         color: Colors.grey.withOpacity(0.5),
                                         spreadRadius: 5,
                                         blurRadius: 7,
                                         offset: const Offset(0, 3),
                                       ),
                                     ],
                                   ),
                                   child: Column(
                                     children: [
                                       Container(
                                         margin: const EdgeInsets.fromLTRB(10, 20, 8.08, 0),
                                         alignment: Alignment.center,
                                         width: 70,
                                         height: 70,
                                         decoration: BoxDecoration (
                                           borderRadius: BorderRadius.circular(115),
                                           image: const DecorationImage (
                                             fit: BoxFit.cover,
                                             image: AssetImage (

                                               'assets/page-1/images/ellipse-4-bg-Hwd.png',
                                             ),
                                           ),
                                         ),
                                       ),
                                       const SizedBox(height: 10,),
                                       Text(
                                         'Alex Patrick',
                                         style:GoogleFonts.inter(

                                           fontSize:15,
                                           fontWeight: FontWeight.w600,
                                           height: 1.1269722824,
                                           color: const Color(0xff101728),
                                         ),
                                       ),
                                       const SizedBox(height:5),
                                       Text(
                                         'Angel Investor & Founder of  Crowwwn',
                                         textAlign: TextAlign.center,
                                         style:GoogleFonts.inter (
                                           fontSize:10,
                                           fontWeight: FontWeight.w400,
                                           height: 1.3041353912,
                                           color: const Color(0xff667084),
                                         ),
                                       ),
                                       const SizedBox(height:7),
                                       Image.asset(
                                         'assets/page-1/images/group-29.png',
                                         width: 40,
                                         height: 10,
                                       ),
                                       const SizedBox(height:10,),
                                       Align(
                                         child: SizedBox(
                                           width: double.infinity,
                                           height: 0.77,
                                           child: Container(
                                             decoration: const BoxDecoration (
                                               color: Color(0xfff5f5f5),
                                             ),
                                           ),
                                         ),
                                       ),
                                       const SizedBox(height: 10,),
                                       TextButton(
                                         onPressed: () {
                                           // Add your button's action here
                                         },
                                         style: TextButton.styleFrom(
                                           padding: EdgeInsets.zero, // Remove padding
                                           minimumSize: const Size(0, 0), // Minimum size
                                           tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduce tap target size
                                         ),
                                         child: const Text(
                                           'View Profile',
                                           style: TextStyle(
                                             fontSize: 10,
                                             fontWeight: FontWeight.bold,
                                             color: Colors.black, // Text color
                                           ),
                                         ),
                                       )


                                     ],
                                   ),
                                 ),
                               ),
                               SizedBox(
                                 width:170, // Set a fixed width
                                 height: 200, // Set a fixed height
                                 child: Container(
                                   margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                   decoration: BoxDecoration(
                                     color: Colors.white,
                                     boxShadow: [
                                       BoxShadow(
                                         color: Colors.grey.withOpacity(0.5),
                                         spreadRadius: 5,
                                         blurRadius: 7,
                                         offset: const Offset(0, 3),
                                       ),
                                     ],
                                   ),
                                   child: Column(
                                     children: [
                                       Container(
                                         margin: const EdgeInsets.fromLTRB(10, 20, 8.08, 0),
                                         alignment: Alignment.center,
                                         width: 70,
                                         height: 70,
                                         decoration: BoxDecoration (
                                           borderRadius: BorderRadius.circular(115),
                                           image: const DecorationImage (
                                             fit: BoxFit.cover,
                                             image: AssetImage (

                                               'assets/page-1/images/ellipse-4-bg-Hwd.png',
                                             ),
                                           ),
                                         ),
                                       ),
                                       const SizedBox(height: 10,),
                                       Text(
                                         'Alex Patrick',
                                         style:GoogleFonts.inter(

                                           fontSize:15,
                                           fontWeight: FontWeight.w600,
                                           height: 1.1269722824,
                                           color: const Color(0xff101728),
                                         ),
                                       ),
                                       const SizedBox(height:5),
                                       Text(
                                         'Angel Investor & Founder of  Crowwwn',
                                         textAlign: TextAlign.center,
                                         style:GoogleFonts.inter (
                                           fontSize:10,
                                           fontWeight: FontWeight.w400,
                                           height: 1.3041353912,
                                           color: const Color(0xff667084),
                                         ),
                                       ),
                                       const SizedBox(height:7),
                                       Image.asset(
                                         'assets/page-1/images/group-29.png',
                                         width: 40,
                                         height: 10,
                                       ),
                                       const SizedBox(height:10,),
                                       Align(
                                         child: SizedBox(
                                           width: double.infinity,
                                           height: 0.77,
                                           child: Container(
                                             decoration: const BoxDecoration (
                                               color: Color(0xfff5f5f5),
                                             ),
                                           ),
                                         ),
                                       ),
                                       const SizedBox(height: 10,),
                                       TextButton(
                                         onPressed: () {
                                           // Add your button's action here
                                         },
                                         style: TextButton.styleFrom(
                                           padding: EdgeInsets.zero, // Remove padding
                                           minimumSize: const Size(0, 0), // Minimum size
                                           tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduce tap target size
                                         ),
                                         child: const Text(
                                           'View Profile',
                                           style: TextStyle(
                                             fontSize: 10,
                                             fontWeight: FontWeight.bold,
                                             color: Colors.black, // Text color
                                           ),
                                         ),
                                       )


                                     ],
                                   ),
                                 ),
                               ),
                               SizedBox(
                                 width:170, // Set a fixed width
                                 height: 200, // Set a fixed height
                                 child: Container(
                                   margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                   decoration: BoxDecoration(
                                     color: Colors.white,
                                     boxShadow: [
                                       BoxShadow(
                                         color: Colors.grey.withOpacity(0.5),
                                         spreadRadius: 5,
                                         blurRadius: 7,
                                         offset: const Offset(0, 3),
                                       ),
                                     ],
                                   ),
                                   child: Column(
                                     children: [
                                       Container(
                                         margin: const EdgeInsets.fromLTRB(10, 20, 8.08, 0),
                                         alignment: Alignment.center,
                                         width: 70,
                                         height: 70,
                                         decoration: BoxDecoration (
                                           borderRadius: BorderRadius.circular(115),
                                           image: const DecorationImage (
                                             fit: BoxFit.cover,
                                             image: AssetImage (

                                               'assets/page-1/images/ellipse-4-bg-Hwd.png',
                                             ),
                                           ),
                                         ),
                                       ),
                                       const SizedBox(height: 10,),
                                       Text(
                                         'Alex Patrick',
                                         style:GoogleFonts.inter(

                                           fontSize:15,
                                           fontWeight: FontWeight.w600,
                                           height: 1.1269722824,
                                           color: const Color(0xff101728),
                                         ),
                                       ),
                                       const SizedBox(height:5),
                                       Text(
                                         'Angel Investor & Founder of  Crowwwn',
                                         textAlign: TextAlign.center,
                                         style:GoogleFonts.inter (
                                           fontSize:10,
                                           fontWeight: FontWeight.w400,
                                           height: 1.3041353912,
                                           color: const Color(0xff667084),
                                         ),
                                       ),
                                       const SizedBox(height:7),
                                       Image.asset(
                                         'assets/page-1/images/group-29.png',
                                         width: 40,
                                         height: 10,
                                       ),
                                       const SizedBox(height:10,),
                                       Align(
                                         child: SizedBox(
                                           width: double.infinity,
                                           height: 0.77,
                                           child: Container(
                                             decoration: const BoxDecoration (
                                               color: Color(0xfff5f5f5),
                                             ),
                                           ),
                                         ),
                                       ),
                                       const SizedBox(height: 10,),
                                       TextButton(
                                         onPressed: () {
                                           // Add your button's action here
                                         },
                                         style: TextButton.styleFrom(
                                           padding: EdgeInsets.zero, // Remove padding
                                           minimumSize: const Size(0, 0), // Minimum size
                                           tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduce tap target size
                                         ),
                                         child: const Text(
                                           'View Profile',
                                           style: TextStyle(
                                             fontSize: 10,
                                             fontWeight: FontWeight.bold,
                                             color: Colors.black, // Text color
                                           ),
                                         ),
                                       )


                                     ],
                                   ),
                                 ),
                               ),
                               SizedBox(
                                 width:170, // Set a fixed width
                                 height: 200, // Set a fixed height
                                 child: Container(
                                   margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                   decoration: BoxDecoration(
                                     color: Colors.white,
                                     boxShadow: [
                                       BoxShadow(
                                         color: Colors.grey.withOpacity(0.5),
                                         spreadRadius: 5,
                                         blurRadius: 7,
                                         offset: const Offset(0, 3),
                                       ),
                                     ],
                                   ),
                                   child: Column(
                                     children: [
                                       Container(
                                         margin: const EdgeInsets.fromLTRB(10, 20, 8.08, 0),
                                         alignment: Alignment.center,
                                         width: 70,
                                         height: 70,
                                         decoration: BoxDecoration (
                                           borderRadius: BorderRadius.circular(115),
                                           image: const DecorationImage (
                                             fit: BoxFit.cover,
                                             image: AssetImage (

                                               'assets/page-1/images/ellipse-4-bg-Hwd.png',
                                             ),
                                           ),
                                         ),
                                       ),
                                       const SizedBox(height: 10,),
                                       Text(
                                         'Alex Patrick',
                                         style:GoogleFonts.inter(

                                           fontSize:15,
                                           fontWeight: FontWeight.w600,
                                           height: 1.1269722824,
                                           color: const Color(0xff101728),
                                         ),
                                       ),
                                       const SizedBox(height:5),
                                       Text(
                                         'Angel Investor & Founder of  Crowwwn',
                                         textAlign: TextAlign.center,
                                         style:GoogleFonts.inter (
                                           fontSize:10,
                                           fontWeight: FontWeight.w400,
                                           height: 1.3041353912,
                                           color: const Color(0xff667084),
                                         ),
                                       ),
                                       const SizedBox(height:7),
                                       Image.asset(
                                         'assets/page-1/images/group-29.png',
                                         width: 40,
                                         height: 10,
                                       ),
                                       const SizedBox(height:10,),
                                       Align(
                                         child: SizedBox(
                                           width: double.infinity,
                                           height: 0.77,
                                           child: Container(
                                             decoration: const BoxDecoration (
                                               color: Color(0xfff5f5f5),
                                             ),
                                           ),
                                         ),
                                       ),
                                       const SizedBox(height: 10,),
                                       TextButton(
                                         onPressed: () {
                                           // Add your button's action here
                                         },
                                         style: TextButton.styleFrom(
                                           padding: EdgeInsets.zero, // Remove padding
                                           minimumSize: const Size(0, 0), // Minimum size
                                           tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduce tap target size
                                         ),
                                         child: const Text(
                                           'View Profile',
                                           style: TextStyle(
                                             fontSize: 10,
                                             fontWeight: FontWeight.bold,
                                             color: Colors.black, // Text color
                                           ),
                                         ),
                                       )


                                     ],
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ],
                     ),
                     const SizedBox(height: 5,)

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
               )
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