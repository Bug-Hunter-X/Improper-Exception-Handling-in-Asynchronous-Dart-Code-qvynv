```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // This will throw an error if the JSON is malformed.
      final jsonResponse = jsonDecode(response.body);
      // Process the JSON data
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions properly. Log the error for debugging.
    print('Error fetching data: $e');
    // Consider rethrowing the exception or returning a default value
    rethrow; // Or return a default value
  }
}
```