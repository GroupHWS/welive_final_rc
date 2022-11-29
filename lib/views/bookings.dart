import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:we_live_chat_app/common/constant.dart';

class Bookings extends StatefulWidget {
  const Bookings({Key? key}) : super(key: key);

  @override
  State<Bookings> createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: const Text('Consultations'),
        leading: IconButton(
            onPressed: () => {
              Navigator.popAndPushNamed(context, 'userHome')
            },
            icon: const Icon(Icons.arrow_back_ios_new, size: 25)),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF701ebd),
              Color(0xFF873bcc),
              Color(0xFFfe4a97),
              Color(0xFFe17763),
              Color(0xFF68998c),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 50, right: 25, left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 250, width: 350,
                    //color: Colors.red,

                    // reviewed and changed to lottie animations
                    child: Lottie.network(
              'https://assets3.lottiefiles.com/packages/lf20_ywfgyetc.json'),
              
                  ),

                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                
                'Book Your Consultation',
                style: GoogleFonts.playfairDisplay(
                                  textStyle: style14Blue, color: Colors.white),
              ),
              Container(
                 
              ),
              Center(
                child: Container(
                  height: 200,
                  child: Stack(
                    children: [
                      // code to be added between booking button and text
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40),
                  ),
                  onPressed: () => {
                    Navigator.popAndPushNamed(context, 'profProfile')
                  },
                  child: const Text('Book now '),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
