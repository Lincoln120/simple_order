class OrderItem {
  String name;
  double price;
  int qty;

  OrderItem(this.name, this.price, this.qty);

  double get subtotal => price * qty;
}

void main() {
  // First customer
  var order = [
    OrderItem('Adobo rice', 85.0, 3),
    OrderItem('Iced tea', 35.0, 1),
    OrderItem('Turon', 25.0, 3),
  ];

  print('CUSTOMER 1');

  for (var item in order) {
    print('${item.name} x${item.qty} = ₱${item.subtotal}');
  }

  double subtotal = order.fold(
    0.0,
    (sum, item) => sum + item.subtotal,
  );

  double discount = subtotal >= 300 ? subtotal * 0.10 : 0;
  double total = subtotal - discount;

  print('Subtotal: ₱$subtotal');
  print('Discount: ₱$discount');
  print('Final total: ₱$total');

  // Second customer
  var order2 = [
    OrderItem('Adobo rice', 85.0, 1),
    OrderItem('Iced tea', 35.0, 1),
    OrderItem('Turon', 25.0, 2),
  ];

  print('\nCUSTOMER 2');

  for (var item in order2) {
    print('${item.name} x${item.qty} = ₱${item.subtotal}');
  }

  double subtotal2 = order2.fold(
    0.0,
    (sum, item) => sum + item.subtotal,
  );

  double discount2 = subtotal2 >= 300 ? subtotal2 * 0.10 : 0;
  double total2 = subtotal2 - discount2;

  print('Subtotal: ₱$subtotal2');

  if (discount2 > 0) {
    print('Discount: ₱$discount2');
  }

  print('Final total: ₱$total2');
}
