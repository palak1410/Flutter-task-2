import 'dart:convert';
import 'package:assign_test_screen/model/lessons.dart';
import 'package:assign_test_screen/model/programs.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';

class HttpService {
  final String programsURL =
      "https://632017e19f82827dcf24a655.mockapi.io/api/programs";
  final String lessonsURL =
      "https://632017e19f82827dcf24a655.mockapi.io/api/lessons";

  Future<Program> getPrograms() async {
    Response res = await get(Uri.parse(programsURL));

    if (res.statusCode == 200) {
      Program program = Program.fromJson(res.body);
      return program;
    } else {
      Fluttertoast.showToast(msg: "Unable to retrieve programs.");
      throw "Unable to retrieve posts.";
    }
  }

  Future<Lesson> getLessons() async {
    Response res = await get(Uri.parse(lessonsURL));
    if (res.statusCode == 200) {
      Lesson lesson = Lesson.fromJson(res.body);
      return lesson;
    } else {
      Fluttertoast.showToast(msg: "Unable to retrieve programs.");
      throw "Unable to retrieve posts.";
    }
  }
}
