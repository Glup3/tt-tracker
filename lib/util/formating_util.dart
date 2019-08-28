String formatIntegerWithLeadingZeros(int number, {int zeros = 0}) {
  String result = '';

  for (int i = 0; i < zeros; i++) {
    result += '0';
  }
  result += number.toString();

  return result;
}
