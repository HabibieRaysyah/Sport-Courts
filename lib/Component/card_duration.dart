import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sewa_lapangan/views/order_sumary.dart';

class CardDuration extends StatelessWidget {
  const CardDuration({
    super.key,
    required this.hour,
    required this.price,
    required this.category,
  });

  final String hour;
  final String price;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OrderSumary()),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: ListTile(
            title: Row(
              children: [
                Text(
                  "$hour Hour",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Spacer(),
                Text(
                  "Rp.$price",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            subtitle: Row(
              children: [Text(category), Spacer(), Text("persession")],
            ),
          ),
        ),
      ),
    );
  }
}
