import 'package:assign_test_screen/model/lesson_items.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LessonTile extends StatelessWidget {
  final Lessonitem lessonitem;
  const LessonTile({super.key, required this.lessonitem});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 242.0,
      padding: EdgeInsets.only(bottom: 8),
      margin: EdgeInsets.only(right: 16, left: 16),
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
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffDDE3C2),
                  borderRadius: BorderRadius.circular(8)),
              height: 140,
              width: 242,
              child: Image.asset("asset/exercise1.png"),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.only(top: 8, left: 12, right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(lessonitem.category,
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontSize: 12,
                          color: Color(0xff598BED),
                        ),
                      )),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(lessonitem.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${lessonitem.duration} min",
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontSize: 12,
                              color: Color(0xff6D747A),
                            ),
                          )),
                      lessonitem.locked
                          ? Image.asset(
                              "asset/lock.png",
                              scale: 1.2,
                            )
                          : const Icon(
                              Icons.lock_open,
                              size: 17,
                              color: Color(0xff6D747A),
                            )
                    ],
                  )
                ],
              ),
            ),
          ]),
    );
  }
}
