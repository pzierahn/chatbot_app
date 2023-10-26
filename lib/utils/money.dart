class MoneyUtils {
  static String format(int cents) {
    return '\$${(cents / 100).toStringAsFixed(2)}';
  }
}
