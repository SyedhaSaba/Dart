import 'dart:io';
import 'MenuItem.dart';
import 'Order.dart';
import 'User.dart';

final Map<String, User> users = {
  'admin': User('admin', 'adminpass', 'admin'),
  'Saba': User('Saba', '123', 'customer'),
  'Asif': User('Asif', '123', 'customer'),
  'Ahad': User('Ahad', '123', 'customer'),
  'Waniya': User('Waniya', '123', 'customer'),
  'Haniya': User('Haniya', '123', 'customer'),
};

final Map<String, MenuItem> menu = {
  '1': MenuItem('Burger', 999.0),
  '2': MenuItem('Pizza', 1499.0),
  '3': MenuItem('Pasta', 1249.0),
  '4': MenuItem('Salad', 799.0),
  '5': MenuItem('Soda', 299.0),
  '6': MenuItem('Fries', 499.0),
  '7': MenuItem('Steak', 1999.0),
  '8': MenuItem('Chicken Wings', 1099.0),
  '9': MenuItem('Milkshake', 649.0),
  '10': MenuItem('Coffee', 399.0),
  '11': MenuItem('Ice Cream', 549.0),
  '12': MenuItem('Fish & Chips', 1599.0),
  '13': MenuItem('Chicken Sandwich', 899.0),
  '14': MenuItem('Vegetable Soup', 749.0),
  '15': MenuItem('Nachos', 1099.0),
  '16': MenuItem('Grilled Cheese', 649.0),
  '17': MenuItem('Onion Rings', 549.0),
  '18': MenuItem('Tacos', 1249.0),
  '19': MenuItem('Spaghetti', 1349.0),
  '20': MenuItem('Chocolate Cake', 799.0),
};

final List<Order> orders = [];

void printBoxedMessage(String message) {
  String border = '-' * (message.length + 4);
  print(border);
  print('| $message |');
  print(border);
}
void main() {
  while (true) {
    print('\n---------------- Login Page ---------------');
    print('Enter username:');
    String username = stdin.readLineSync()!;
    print('Enter password:');
    String password = stdin.readLineSync()!;

    User? user = users[username];
    if (user == null || user.password != password) {
      print('Invalid username or password.');
      continue;
    }

    if (user.role == 'admin') {
      adminPage();
    } else {
      customerPage();
    }
  }
}

void adminPage() {
  while (true) {
    printBoxedMessage(' Admin Page ');
    print('1. View Menu');
    print('2. Add Menu Item');
    print('3. View Orders');
    print('4. Show Bill History');
    print('5. Exit');
    print('Enter your choice:');
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        viewMenu();
        break;
      case 2:
        addMenuItem();
        break;
      case 3:
        viewOrders();
        break;
      case 4:
        generateBill();
        break;
      case 5:
        print('Exiting admin page.');
        return;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}

void customerPage() {
  while (true) {
    printBoxedMessage(' Customer Page ');
    print('1. View Menu');
    print('2. Place Order');
    print('3. View Orders');
    print('4. Generate Bill');
    print('5. Exit');
    print('Enter your choice:');
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        viewMenu();
        break;
      case 2:
        placeOrder();
        break;
      case 3:
        viewOrders();
        break;
      case 4:
        generateBill();
        break;
      case 5:
        print('Exiting customer page.');
        return;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}

void viewMenu() {
  print('\n-------------- Menu----------------');
  for (var entry in menu.entries) {
    print('${entry.key}. ${entry.value.name}: Rs.${entry.value.price}');
  }
}


void addMenuItem() {
  print('\n--------------- Add Menu Item --------------');
  print('Enter item name:');
  String name = stdin.readLineSync()!;
  print('Enter item price:');
  double price = double.parse(stdin.readLineSync()!);

  String newItemNumber = (menu.length + 1).toString();
  menu[newItemNumber] = MenuItem(name, price);

  print('New item added: $name at Rs.${price.toStringAsFixed(2)}');
}

void placeOrder() {
  while (true) {
    print('\nEnter the number of the item to order (or 0 to finish):');
    String itemNumber = stdin.readLineSync()!;

    if (itemNumber == '0') {
      break;
    }

    if (!menu.containsKey(itemNumber)) {
      print('Invalid item number. Please try again.');
      continue;
    }

    MenuItem selectedItem = menu[itemNumber]!;
    
    int quantity;
    while (true) {
      print('Enter the quantity for ${selectedItem.name}:');
      String quantityInput = stdin.readLineSync()!;

      try {
        quantity = int.parse(quantityInput);

        if (quantity <= 0) {
          print('Quantity must be a Greater than zero. Please try again.');
        } else {
          break;
        }
      } catch (e) {
        print('Invalid input.');
      }
    }

    orders.add(Order(selectedItem, quantity));
    print('Order added: ${selectedItem.name} x$quantity');
    // printBoxedMessage('Order added: ${selectedItem.name} x$quantity');

  }
}

void viewOrders() {
  if (orders.isEmpty) {
    print('No orders have been placed yet.');
  } else {
    print('\n----------- Orders --------------');
    for (var order in orders) {
      print('${order.item.name} x${order.quantity}: Rs.${order.total.toStringAsFixed(2)}');
      
    }
  }
}

void generateBill() {
  if (orders.isEmpty) {
    print('No orders to generate a bill.');
  } else {
    double totalAmount = orders.fold(0, (sum, order) => sum + order.total);
    printBoxedMessage('   Bill    ');

    for (var order in orders) {
      print('${order.item.name} x${order.quantity}: Rs.${order.total.toStringAsFixed(2)}');
    }
    print('Total Amount: Rs.${totalAmount.toStringAsFixed(2)}');
    print('\n***************************************THANK YOU');

  }
}
