```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        return jsonDecode(response.body);
      } on FormatException catch (e) {
        print('Error: Invalid JSON format: $e');
        return null; // Or handle the error as appropriate
      }
    } else {
      print('Error fetching data: ${response.statusCode}');
      return null; // Or handle the error as appropriate
    }
  } catch (e) {
    print('An unexpected error occurred: $e');
    return null; // Or handle the error as appropriate
  }
}
```