int getMonthPay(int money, int month) {
  return money ~/ month;
}

int getFirstContribution(int money) {
  return (money ~/ 100) * 10;
}
