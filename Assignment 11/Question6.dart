void main() {
  Map<String, Map<String, String>> world = {
    'Pakistan': {
      'capitalCity': 'Islamabad',
      'currency': 'Rupees',
      'language': 'Urdu',
    },
    'France': {
      'capitalCity': 'Paris',
      'currency': 'Euro',
      'language': 'French',
    },
    'Japan': {
      'capitalCity': 'Tokyo',
      'currency': 'Yen',
      'language': 'Japanese',
    }
  };

  String countryKey = 'Pakistan';
  Map<String, String> countryDetails = world[countryKey]!;
  String capitalCity = countryDetails['capitalCity']!;
  String currency = countryDetails['currency']!;
    
  print('Capital City: $capitalCity');
  print('Currency: $currency');
}
