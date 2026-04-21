import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sewa_lapangan/Component/button.dart';

class OrderSumary extends StatefulWidget {
  const OrderSumary({super.key});

  @override
  State<OrderSumary> createState() => _OrderSumaryState();
}

class _OrderSumaryState extends State<OrderSumary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order Sumary",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
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
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
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
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
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
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
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
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
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
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
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

            SizedBox(height: 30),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Row(
                      children: [
                        Icon(Icons.info, color: Colors.black),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "Booking Policy",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // leading: Padding(
                    //   padding: const EdgeInsets.only(bottom: 80,),
                    //   child: Icon(Icons.info, color: Colors.black,),
                    // ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "Free concelation up to 5 hours before your booking time , Equipment rental avaible on-site",
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Button(
              heightButton: 50,
              radiusButton: 15,
              text: "Choose Payment Method ➡",
              onPressed: () {},
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
