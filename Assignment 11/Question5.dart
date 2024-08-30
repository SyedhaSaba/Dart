void main() {
  Map<String, String> Info = {
    'name': 'Saba',
    'phone': '03234556877',
    'Area': 'pech',
    'code': '5678',
    'age': '22'
  };

  Map<String, String> filteredMap = Map.fromEntries(
    Info.entries.where((entry) => entry.key.length == 4)
  );

  print('Filtered map: $filteredMap');

}
