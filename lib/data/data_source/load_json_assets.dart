import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

// Function to load the JSON data from the asset
Future<Map<String, dynamic>> loadJsonAssets(String path) async {
  // final String response = await rootBundle.loadString('assets/data.json');
  final String response = await rootBundle.loadString(path);
  final Map<String, dynamic> data = jsonDecode(response);
  return data;
}

Future<dynamic> loadJsonFromAssets(String path) async {
  try {
    // Load the JSON string from the asset file
    final String jsonString = await rootBundle.loadString(path);

    // Decode the JSON string into a Dart object (dynamic)
    final dynamic jsonData = jsonDecode(jsonString);

    return jsonData;
  } catch (e) {
    // Handle potential errors (e.g., file not found, invalid JSON)
    print("Error loading JSON: $e");
    return null;
  }
}

Future<List<dynamic>> loadJsonArrayFromAssets(String path) async {
  try {
    // Load the JSON string from assets
    final String response = await rootBundle.loadString(path);

    // Decode the JSON string into a Dart dynamic object
    final data = jsonDecode(response);

    // Ensure the decoded data is a List and return it
    if (data is List) {
      return data;
    } else {
      throw const FormatException("The asset is not a JSON array.");
    }
  } catch (e) {
    // Handle errors (e.g., file not found, invalid JSON)
    print("Error loading JSON: $e");
    return []; // Return an empty list or handle as appropriate
  }
}
