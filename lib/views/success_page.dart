import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sewa_lapangan/Component/button.dart';
import 'package:sewa_lapangan/homepage.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
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
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: fromCssColor("#DFE0DF"),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check_outlined,
                  size: 100,
                  color: Colors.green,
                ),
              ),
              Text(
                "Success",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Baskeball Court A",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Indoor", style: GoogleFonts.poppins(fontSize: 12)),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.calendar_month_outlined),
                        Text(
                          "Date",
                          style: GoogleFonts.poppins(
                            color: fromCssColor("#4B5563"),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Monday , Apr 30",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                      child: Center(
                        child: Divider(thickness: 1, color: Colors.black),
                      ),
                    ),

                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.hourglass_bottom_outlined),
                        Text(
                          "Duration",
                          style: GoogleFonts.poppins(
                            color: fromCssColor("#4B5563"),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "2 Hours",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                      child: Center(
                        child: Divider(thickness: 1, color: Colors.black),
                      ),
                    ),

                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.discount_outlined),
                        Text(
                          "Price per HOur",
                          style: GoogleFonts.poppins(
                            color: fromCssColor("#4B5563"),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Rp. 50.000",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),

                    Row(
                      children: [
                        Text(
                          "Subtotal (2 Hours)",
                          style: GoogleFonts.poppins(
                            color: fromCssColor("#4B5563"),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Rp. 50.000",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),

                    Row(
                      children: [
                        Text(
                          "Service Fee",
                          style: GoogleFonts.poppins(
                            color: fromCssColor("#4B5563"),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Rp. 5.000",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),

                    Row(
                      children: [
                        Text(
                          "Total",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Rp. 105.000",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2),
                  ],
                ),
              ),

              Spacer(),

              Button(
                text: "Finished",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
                color: Colors.black,
                heightButton: 40,
                radiusButton: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
