import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sewa_lapangan/Component/card_duration.dart';

class Schedule {
  final String id;
  final String hour;
  final String price;
  final String category;


  Schedule({
    required this.id,
    required this.hour,
    required this.price,
    required this.category
  });
}

class PackageDuration extends StatefulWidget {
  const PackageDuration({super.key});

  @override
  State<PackageDuration> createState() => _PackageDurationState();
}

class _PackageDurationState extends State<PackageDuration> {
  final List<Schedule> daftarJadwal = [
    Schedule(
      id: "1",
      hour: "1",
      price: "50000",
      category: "Baik untuk pemula",
    ),
    Schedule(
      id: "2",
      hour: "2",
      price: "10000",
      category: "Pro Player",
    ),
    Schedule(
      id: "3",
      hour: "3",
      price: "20000",
      category: "Cupu",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Package Duration",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: 3,
        separatorBuilder: (context, index) {
          return SizedBox(height: 15);
        },
        itemBuilder: (context, index) {
          final jadwal = daftarJadwal[index];
          return CardDuration(hour: jadwal.hour,price:jadwal.price, category: jadwal.category );
        },
      ),
    );
  }
}
