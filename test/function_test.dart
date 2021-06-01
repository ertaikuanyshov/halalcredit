import 'package:flutter_test/flutter_test.dart';
import 'package:halalcredit/functions.dart';

void main() {
  test("test month pay", () {
    print(getMonthPay(45000, 8));
    expect(5625, getMonthPay(45000, 8));
  });
}
