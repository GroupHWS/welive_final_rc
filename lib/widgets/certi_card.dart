import 'package:flutter/material.dart';

class CertificationCard extends StatelessWidget {
  final String certificationImage;

  CertificationCard({
    required this.certificationImage,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: InkWell(
        child: Container(
          padding: const EdgeInsets.all(59),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  certificationImage,
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
