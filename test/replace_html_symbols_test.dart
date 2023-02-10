import 'package:replace_html_symbols/file_controller.dart';
import 'package:replace_html_symbols/replace_html_symbols.dart';
import 'package:replace_html_symbols/symbols.dart';
import 'package:test/test.dart';

void main() {
  test('greet', () {
    expect(greet(), 'kiuvo');
  });

  test('replaceText', () {
    symbols.keys.join(' ');
    String text = symbols.keys.join(' ');
    String expectedText = symbols.values.join(' ');
    expect(replaceHtmlSymbolsOnText(text), expectedText);
  });

  test('replaceTextOnFile', () async {
    replaceHtmlSymbolsOnFile('test/inputFile.txt', 'test/outputFile.txt');

    String text = await FileController.readFile('test/outputFile.txt');
    String expectedText = await FileController.readFile('test/outputFile.txt');

    expect(text, expectedText);
  });
}
