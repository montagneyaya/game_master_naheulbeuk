import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class Save {
  Save(this.fileName);

  String fileName;

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/$fileName');
  }

  Future<Map<String, dynamic>> readJson() async {
    try {
      final file = await _localFile;
      final json = await file.readAsString();
      return jsonDecode(json);
    } catch (e) {
      return Map();
    }
  }

  Future<File> writeJson(Map<String, dynamic> json) async {
    final file = await _localFile;
    String jsonString = json.toString();
    return file.writeAsString(jsonString);
  }
}
