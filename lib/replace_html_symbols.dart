import 'package:replace_html_symbols/symbols.dart';

import 'file_controller.dart';

String greet() {
  return 'kiuvo';
}

void replaceHtmlSymbolsOnFile(String inputFile, String outpuFile) async {
  String text = await FileController.readFile(inputFile);
  text = replaceHtmlSymbolsOnText(text);
  print(outpuFile);
  FileController.writeFile(outpuFile, text);
  print('Done!');
}

String replaceHtmlSymbolsOnText(String text) {
  for (MapEntry<String, String> symbol in symbols.entries) {
    text = text.replaceAll(symbol.key, symbol.value);
  }

  return text;
}
