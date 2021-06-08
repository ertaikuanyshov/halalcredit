import 'package:flutter_test/flutter_test.dart';
import 'package:halalcredit/functions.dart';

void main() {
  test("test month pay", () {
    expect(5625, getMonthPay(45000, 8));
  });

  test("test first contribution", () {
    expect(4500, getFirstContribution(45000));
    expect(10000, getFirstContribution(100000));
    expect(55000, getFirstContribution(550000));
  });
}
