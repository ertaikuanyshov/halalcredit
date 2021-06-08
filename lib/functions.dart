int getMonthPay(int money, int month) {
  return money ~/ month;
}

int getFirstContribution(int money, int month) {
  return (money ~/ 100) * 10;
}
