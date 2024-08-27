import 'MenuItem.dart';
class Order {
  MenuItem item;
  int quantity;

  Order(this.item, this.quantity);

  double get total => item.price * quantity;
}
