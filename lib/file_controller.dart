import 'dart:io';

class FileController {
  static Future<String> readFile(String fileName) {
    return File(fileName).readAsString().then((String contents) {
      return contents;
    });
  }

  static Future<void> writeFile(String fileName, String contents) async {
    await File(fileName).writeAsString(contents);
  }
}
