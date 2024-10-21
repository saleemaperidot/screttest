import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:screltest/models/user_model.dart';

// StateNotifierProvider for managing the form state
final formNotifierProvider =
    StateNotifierProvider<FormNotifier, UserModel?>((ref) => FormNotifier());

class FormNotifier extends StateNotifier<UserModel?> {
  FormNotifier() : super(null) {
    loadForm(index: 0);
  }

  // Method to update and save form data
  Future<void> saveForm({
    required String campaignSubject,
    required String previewText,
    required String fromName,
    required String fromemail,
    required int index,
  }) async {
    // Create form data
    final form = UserModel(
      campaignSubject: campaignSubject,
      previewText: previewText,
      fromName: fromName,
      fromemail: fromemail,
    );

    // Update state
    state = form;

    try {
      // Save to Hive
      var box = await Hive.openBox<UserModel>('campaign_forms');
      await box.put(index, form); // Save the current form data
    } catch (e) {
      // Handle any errors that may occur during the save operation
      print('Error saving form data: $e');
    }
  }

  // Method to get the form data as JSON
  String getFormAsJson() {
    // Check if the state is not null before encoding to JSON
    if (state != null) {
      return jsonEncode(state!.toJson()); // Convert state to JSON format
    }
    return '{}'; // Return an empty JSON object if state is null
  }

  // Method to load form data from Hive
  Future<void> loadForm({required int index}) async {
    try {
      var box = await Hive.openBox<UserModel>('campaign_forms');
      final form = box.get(index);
      state = form; // Update state with the loaded form data
    } catch (e) {
      print('Error loading form data: $e');
    }
  }
}
