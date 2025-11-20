import 'dart:io';

void main() {
  /* file read section */

  // File file = File('test.txt');

  // String contents = file.readAsStringSync();
  // print(contents);
  // print('hi there');

  // File file = File('test.csv');

  // String contents = file.readAsStringSync();
  // print(contents);

  // List<String> lines = contents.split('\n');

  // for (var line in lines) {
  //   print('-----------');
  //   print(line);
  //   List<String> words = line.split(',');
  //   for (var word in words) {
  //     print(word);
  //   }
  // }

  // File file = File(
  //   '../projects/data_processing/CSVExport-Code_With_Andrea-2019.csv',
  // );

  // String contents = file.readAsStringSync();

  // print(contents);

  /* file write section */

  File file = File('test.txt');

  file.writeAsStringSync('\nThis is the new Content.', mode: FileMode.append);

  String contents = file.readAsStringSync();

  print(contents);
}
