void main() {
  List<Map<String, dynamic>> products = [
    {
      'name': 'Laptop',
      'price': 999.99,
      'quantity': 5
    },
    {
      'name': 'Smartphone',
      'price': 499.99,
      'quantity': 0
    }
  ];

  for (var product in products) {
    if (product['quantity'] > 0) {
      print('${product['name']} is In stock');
    } else {
      print('${product['name']} is Out of stock');
    }
  }
}
