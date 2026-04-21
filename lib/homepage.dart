import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sewa_lapangan/Component/card.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Sport Courts",
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView.separated(
          itemCount: 5,
          separatorBuilder: (context, index) {
            return SizedBox(height: 15);
          },
          itemBuilder: (context, index) {
            return Card_Custome();
          },
        ),
      ),
    );
  }
}
