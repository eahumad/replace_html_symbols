# Replace HTML Symbols

A small tool to replace HTML symbols like  `&nbsp;` in files built with Dart.

## Usage

### Running with Dart

```
$ dart run bin/replace_html_symbols.dart <input_file> <output_file>
```

### Compilation

To compile the program, run:

```
$ dart compile exe bin/replace_html_symbols.dart
```

This will produce a self-contained executable that can be run from anywhere using the following command:

```
replace_html_symbols <input_file> <output_file>
```