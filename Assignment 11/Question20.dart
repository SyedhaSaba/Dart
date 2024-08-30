void main() {
  Map<String, dynamic> user = {
    'name': 'Saba',
    'isAdmin': true,
    'isActive': true
  };
  if (user['isAdmin'] == true && user['isActive'] == true) {
    print('Active admin');
  } else {
    print('Not an active admin');
  }
}
