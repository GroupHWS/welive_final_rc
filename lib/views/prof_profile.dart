import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:we_live_chat_app/common/constant.dart';
import 'package:we_live_chat_app/widgets/certi_card.dart';

class ProfessionalProfile extends StatefulWidget {
  @override
  State<ProfessionalProfile> createState() => _ProfessionalProfileState();
}

class _ProfessionalProfileState extends State<ProfessionalProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFF873bcc),
          automaticallyImplyLeading: false,
          title: const Text(
            'Professional profile',
            style: TextStyle(fontSize: 30),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, 'userHome');
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 22,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Container(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            // decoration: BoxDecoration(
                            //   color: Colors.white,
                            //   borderRadius: BorderRadius.circular(12),
                            // ),
                            child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/Tom.jpg'),
                                radius: 90,
                              ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Column(
                        children: [
                          Text(
                            'Dr Tom Timothy',
                            style: GoogleFonts.playfairDisplay(
                                textStyle: style14Blue, color: Colors.white),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Psychologist',
                            style: GoogleFonts.playfairDisplay(
                                textStyle: style14Blue, color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Container(
                        margin: const EdgeInsets.only(left: 23, right: 20),
                        padding: const EdgeInsets.all(70),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          
                          children: const [
                            Text(
                              "Lives in : South Africa",
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 23, right: 20),
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Consultation Fee:",
                              style: GoogleFonts.playfairDisplay(
                                  textStyle: style14Blue),
                            ),
                            Text(
                              "Yes",
                              style: GoogleFonts.playfairDisplay(
                                  textStyle: style14Blue),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        indent: 23,
                        endIndent: 20,
                        color: Colors.black,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 23, right: 20),
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Certifications",
                              style: GoogleFonts.playfairDisplay(
                                  textStyle: style14Blue),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 170,
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: [
                                CertificationCard(
                                  certificationImage:
                                      'assets/images/Picture1.jpg',
                                      
                                ),
                                CertificationCard(
                                  
                                  certificationImage:
                                  
                                      'assets/images/Picture1.jpg',
                                      
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 170,
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: [
                                CertificationCard(
                                  certificationImage:
                                      'assets/images/Picture1.jpg',
                                ),
                                CertificationCard(
                                  certificationImage:
                                      'assets/images/Picture1.jpg',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 170,
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: [

                                
                                CertificationCard(
                                  certificationImage:
                                      'assets/images/Picture1.jpg',
                                      
                                ),
                                CertificationCard(
                                  certificationImage:
                                      'assets/images/Picture1.jpg',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
