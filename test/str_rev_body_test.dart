import 'package:apptesting/str_rev_body.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('str rev test ...', () async {
    String simpleStr = "hello";
  String reverse = reverseStr(simpleStr);
  expect(reverse,'olleh');
  });
}