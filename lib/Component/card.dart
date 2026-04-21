import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sewa_lapangan/Component/button.dart';

class Card_Custome extends StatelessWidget {
  const Card_Custome({super.key});

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
                image: NetworkImage(
                  "https://cdn.dribbble.com/userupload/10093106/file/original-b6dd549465ee5871df173b836c97c07e.jpg",
                ),
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
                      "Sport Courts",
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
                Row(
                  children: [
                    Text(
                      "Indoor || Air Conditioned",
                      style: GoogleFonts.poppins(),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Text(
                      "Rp.50,000/hour",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Spacer(),
                    Button(text: "Rent Now", onPressed: () {}, color: Colors.black, widthButton: 150,),
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
