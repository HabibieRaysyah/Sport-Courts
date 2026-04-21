
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sewa_lapangan/Component/card.dart';

class Lapangan {
  final int id;
  final String title;
  final String harga;
  final String category;
  final String img;

  Lapangan({
    required this.id,
      required this.title,
      required this.harga,
      required this.category,
      required this.img,
  });
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Lapangan> daftarLapangan = [
    Lapangan(
      id: 1,
      title: "Lapangan 1",
      harga: "2000",
      category: "outdoor",
      img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUgZoPP1m0SFqfSxXAt4PyrNeJUCkBDEt9Lg&s",
    ),
    Lapangan(
      id: 2,
      title: "Lapangan 2",
      harga: '3000',
      category: "outdoor",
      img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHeGjEVLFzJhTl5L3p3zPfdJJRLrjl7tvsjQ&s",
    ),
    Lapangan(
      id: 3,
      title: "Lapangan 3",
      harga: '4000',
      category: "outdoor",
      img: "https://ik.imagekit.io/tvlk/dam/i/01k3qs8pgqyc8fkva3y5jjscgd.jpeg",
    ),
    Lapangan(
      id: 4,
      title: "Lapangan 4",
      harga: '5000',
      category: "outdoor",
      img: "https://awsimages.detik.net.id/community/media/visual/2025/08/05/lapangan-padel-1754370093988_169.jpeg?w=1200",
    ),
    Lapangan(
      id: 5,
      title: "Lapangan 5",
      harga: '6000',
      category: "outdoor",
      img: "https://img.inews.co.id/media/450/files/inews_new/2026/02/25/ilustrasi_lapangan_padel.jpg",
    ),
  ];

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
            final lapangan = daftarLapangan[index];
            return Card_Custome(title: lapangan.title, price:  lapangan.harga, category: lapangan.category, img: lapangan.img,);
          },
        ),
      ),
    );
  }
}
