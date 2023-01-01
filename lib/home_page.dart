import 'package:assign_test_screen/model/lessons.dart';
import 'package:assign_test_screen/model/program_item.dart';
import 'package:assign_test_screen/service/http_service.dart';
import 'package:assign_test_screen/widget/lesson.dart';
import 'package:assign_test_screen/widget/program.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'model/programs.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: const Color(0xffEEF3FD),
          leading: const Icon(
            CupertinoIcons.line_horizontal_3_decrease,
            color: Color(0xff939CA3),
          ),
          actions: const [
            Icon(
              Icons.message,
              color: Color(0xff939CA3),
            ),
            SizedBox(
              width: 22.42,
            ),
            Icon(
              CupertinoIcons.bell,
              color: Color(0xff939CA3),
            ),
            SizedBox(
              width: 18.25,
            )
          ],
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Container(
                color: const Color(0xffEEF3FD),
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, Priya!",
                      style: GoogleFonts.lora(
                          textStyle: const TextStyle(
                              fontSize: 20, color: Color(0xff08090A))),
                    ),
                    Text("What do you wanna learn today?",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                fontSize: 12, color: Color(0xff6D747A)))),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border:
                                  Border.all(color: const Color(0xff598BED))),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
                            child: Row(children: [
                              const Icon(
                                CupertinoIcons.book,
                                color: Color(0xff598BED),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Flexible(
                                child: Text(
                                  "Programs",
                                  style: GoogleFonts.inter(
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff598BED))),
                                ),
                              ),
                            ]),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border:
                                  Border.all(color: const Color(0xff598BED))),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
                            child: Row(children: [
                              const Icon(
                                CupertinoIcons.question_circle_fill,
                                color: Color(0xff598BED),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Flexible(
                                child: Text(
                                  "Get help",
                                  style: GoogleFonts.inter(
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff598BED))),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border:
                                  Border.all(color: const Color(0xff598BED))),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
                            child: Row(children: [
                              const Icon(
                                CupertinoIcons.bookmark,
                                color: Color(0xff598BED),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Flexible(
                                child: Text(
                                  "Learn",
                                  style: GoogleFonts.inter(
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff598BED))),
                                ),
                              ),
                            ]),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border:
                                  Border.all(color: const Color(0xff598BED))),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
                            child: Row(children: [
                              const Icon(
                                CupertinoIcons.graph_square_fill,
                                color: Color(0xff598BED),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Flexible(
                                child: Text(
                                  "DD Tracker",
                                  style: GoogleFonts.inter(
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff598BED))),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, top: 24, right: 16, bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Programs for you",
                        style: GoogleFonts.lora(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            color: Color(0xff000000),
                          ),
                        )),
                    Row(
                      children: [
                        Text("View all",
                            style: GoogleFonts.lora(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                color: Color(0xff6D747A),
                              ),
                            )),
                        const SizedBox(
                          width: 7.75,
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          size: 13,
                          color: Color(0xff6D747A),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              FutureBuilder(
                  future: httpService.getPrograms(),
                  builder:
                      (BuildContext context, AsyncSnapshot<Program> snapshot) {
                    if (snapshot.hasData) {
                      Program? program = snapshot.data;

                      return Container(
                        padding: const EdgeInsets.only(bottom: 32),
                        height: 312,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: program?.count,
                          itemBuilder: (BuildContext context, int index) {
                            return ProgramTile(
                                programItem: program!.items[index]);
                          },
                        ),
                      );
                    } else {
                      return const Center(
                        child: SizedBox(
                            height: 312,
                            child: CupertinoActivityIndicator(
                              radius: 15,
                            )),
                      );
                    }
                  }),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Events and experiences",
                        style: GoogleFonts.lora(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            color: Color(0xff000000),
                          ),
                        )),
                    Row(
                      children: [
                        Text("View all",
                            style: GoogleFonts.lora(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                color: Color(0xff6D747A),
                              ),
                            )),
                        const SizedBox(
                          width: 7.75,
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          size: 13,
                          color: Color(0xff6D747A),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.only(left: 16, bottom: 32, right: 16),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 242.0,
                      height: 280,
                      decoration: BoxDecoration(
                        color: const Color(0xffEBEDF0),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            width: 1, color: const Color(0xffEBEDF0)),
                        boxShadow: const [
                          BoxShadow(
                              // spreadRadius: 8,
                              color: Color(0xff0e443e14),
                              blurRadius: 12),
                        ],
                      ),
                      child: Column(
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
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, left: 12, right: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Babycare",
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff598BED),
                                        ),
                                      )),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text("Understanding of human behaviour",
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("13 Feb, Sunday",
                                          style: GoogleFonts.inter(
                                            textStyle: const TextStyle(
                                              fontSize: 12,
                                              color: Color(0xff6D747A),
                                            ),
                                          )),
                                      Container(
                                        // width: MediaQuery.of(context).size.width / 2.2,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            border: Border.all(
                                                color:
                                                    const Color(0xff598BED))),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              16, 4, 16, 4),
                                          child: Text(
                                            "Book",
                                            style: GoogleFonts.inter(
                                                textStyle: const TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff598BED))),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ]),
                    ),
                    const SizedBox(
                      width: 32,
                    ),
                    Container(
                      width: 242.0,
                      height: 280,
                      decoration: BoxDecoration(
                        color: const Color(0xffEBEDF0),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            width: 1, color: const Color(0xffEBEDF0)),
                        boxShadow: const [
                          BoxShadow(
                              // spreadRadius: 8,
                              color: Color(0xff0e443e14),
                              blurRadius: 12),
                        ],
                      ),
                      child: Column(
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
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, left: 12, right: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Babycare",
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff598BED),
                                        ),
                                      )),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text("Understanding of human behaviour",
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("13 Feb, Sunday",
                                          style: GoogleFonts.inter(
                                            textStyle: const TextStyle(
                                              fontSize: 12,
                                              color: Color(0xff6D747A),
                                            ),
                                          )),
                                      Container(
                                        // width: MediaQuery.of(context).size.width / 2.2,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            border: Border.all(
                                                color:
                                                    const Color(0xff598BED))),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              16, 4, 16, 4),
                                          child: Text(
                                            "Book",
                                            style: GoogleFonts.inter(
                                                textStyle: const TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff598BED))),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Lessons for you",
                        style: GoogleFonts.lora(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            color: Color(0xff000000),
                          ),
                        )),
                    Row(
                      children: [
                        Text("View all",
                            style: GoogleFonts.lora(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                color: Color(0xff6D747A),
                              ),
                            )),
                        const SizedBox(
                          width: 7.75,
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          size: 13,
                          color: Color(0xff6D747A),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              FutureBuilder(
                  future: httpService.getLessons(),
                  builder:
                      (BuildContext context, AsyncSnapshot<Lesson> snapshot) {
                    if (snapshot.hasData) {
                      Lesson? lesson = snapshot.data;

                      return Container(
                        padding: const EdgeInsets.only(bottom: 32),
                        height: 312,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: lesson?.count,
                          itemBuilder: (BuildContext context, int index) {
                            return LessonTile(
                                lessonitem: lesson!.lessonitem[index]);
                          },
                        ),
                      );
                    } else {
                      return const Center(
                        child: SizedBox(
                            height: 312,
                            child: CupertinoActivityIndicator(
                              radius: 15,
                            )),
                      );
                    }
                  }),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          unselectedItemColor: const Color(0xff6D747A),
          selectedFontSize: 10,
          unselectedFontSize: 10,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Learn',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_3x3_rounded),
              label: 'Hub',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: const Color(0xff598BED),
          showUnselectedLabels: true,
          onTap: null,
        ),
      ),
    );
  }
}
