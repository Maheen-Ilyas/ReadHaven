import 'package:flutter/material.dart';
import 'package:readhaven/app.dart';
import 'package:readhaven/constants/secret_keys.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
    url: supabaseURL,
    anonKey: supabaseAPIKey,
  );
  runApp(const MyApp());
}
