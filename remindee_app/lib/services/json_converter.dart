import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'dart:convert';
import 'timeplannertasks.dart';

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}

Future<File> get _localFile async {
  final path = await _localPath;
  return File('$path/tasks.json');
}

Future<File> writeTasks(List<TimePlannerTaskModel> tasks) async {
  final file = await _localFile;
  List<Map<String, dynamic>> jsonTasks =
      tasks.map((task) => task.toJson()).toList();
  return file.writeAsString(json.encode(jsonTasks));
}

Future<List<TimePlannerTaskModel>> readTasks() async {
  try {
    final file = await _localFile;
    String contents = await file.readAsString();
    List<dynamic> jsonTasks = json.decode(contents);
    return jsonTasks
        .map((json) => TimePlannerTaskModel.fromJson(json))
        .toList();
  } catch (e) {
    return [];
  }
}
