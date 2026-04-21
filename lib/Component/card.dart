import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sewa_lapangan/Component/button.dart';
import 'package:sewa_lapangan/views/package_duration.dart';

class Card_Custome extends StatelessWidget {
  const Card_Custome({
    super.key,
    required this.title,
    required this.price,
    required this.category,
    required this.img,
  });

  final String title;
  final String price;
  final String category;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.grey,
              image: DecorationImage(
                image: NetworkImage(img),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(Icons.star, color: fromCssColor("#ffcd3d")),
                        Text("4.4"),
                      ],
                    ),
                  ],
                ),
                Row(children: [Text(category, style: GoogleFonts.poppins())]),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      'Rp.$price/hour',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Button(
                      text: "Select",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PackageDuration(),
                          ),
                        );
                      },
                      color: Colors.black,
                      widthButton: 150,
                      radiusButton: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
