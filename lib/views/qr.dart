import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sewa_lapangan/Component/button.dart';
import 'package:sewa_lapangan/views/success_page.dart';

class Qr extends StatefulWidget {
  const Qr({super.key});

  @override
  State<Qr> createState() => _QrState();
}

class _QrState extends State<Qr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pay",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Center(
              child: Text(
                "Rp. 105,000",
                style: GoogleFonts.poppins(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 400,
              height: 350,
              decoration: BoxDecoration(
                color: fromCssColor("#DFE0DF"),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                  style: BorderStyle.solid,
                ),
              ),
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjM5SDHeAiiQjHsun8UK_lmtLAD7AFDpq0Jw&s",
              ),
            ),
            Spacer(),
            Text(
              "Free concelation up to 5 hours before your booking time , Equipment rental avaible on-site",
              textAlign: TextAlign.center,
            ),
            Button(
              text: "Bayar",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SuccessPage()),
                );
              },
              color: Colors.black,
              heightButton: 50,
              radiusButton: 10,
            ),
          ],
        ),
      ),
    );
  }
}
