import 'package:assign_test_screen/model/program_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgramTile extends StatelessWidget {
  final ProgramItem programItem;
  const ProgramTile({super.key, required this.programItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 242.0,
      // height: 280,
      margin: EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
        color: const Color(0xffEBEDF0),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1, color: const Color(0xffEBEDF0)),
        boxShadow: const [
          BoxShadow(
              // spreadRadius: 8,
              color: Color(0xff0e443e14),
              blurRadius: 12),
        ],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          decoration: BoxDecoration(
              color: const Color(0xffDDE3C2),
              borderRadius: BorderRadius.circular(8)),
          height: 140,
          width: 242,
          child: Image.asset("asset/Frame122.png"),
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 12, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(programItem.category,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 12,
                      color: Color(0xff598BED),
                    ),
                  )),
              const SizedBox(
                height: 8,
              ),
              Text(programItem.name,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000),
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              Text("${programItem.lesson} lessons",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 12,
                      color: Color(0xff6D747A),
                    ),
                  ))
            ],
          ),
        ),
      ]),
    );
  }
}
