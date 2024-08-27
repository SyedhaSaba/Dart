// Define a MenuItem class
class MenuItem {
  String name;
  double price;

  MenuItem(this.name, this.price);

  @override
  String toString() {
    return '$name: \$${price.toStringAsFixed(2)}';
  }
}