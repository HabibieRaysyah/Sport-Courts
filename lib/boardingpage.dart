import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sewa_lapangan/Component/button.dart';
import 'package:sewa_lapangan/homepage.dart';

class Boardingpage extends StatefulWidget {
  const Boardingpage({super.key});

  @override
  State<Boardingpage> createState() => _BoardingpageState();
}

class _BoardingpageState extends State<Boardingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey,
                image: DecorationImage(
                  image: NetworkImage(
                    "https://cdn.dribbble.com/userupload/10093106/file/original-b6dd549465ee5871df173b836c97c07e.jpg",
                    
                  ),
                  fit: BoxFit.cover
                ),
              ),
            ),

            SizedBox(height: 40),
            Text(
              "Court Booking",
              style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Easily and quickly book sports courts at your convenience. Choose from a variety of courts, select your preferred duration , and confirm your booking seamlessly",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: fromCssColor("#4B5563"),
              ),
            ),
            SizedBox(height: 10),
            Button(
              text: "Start",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()),
                );
              },
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
