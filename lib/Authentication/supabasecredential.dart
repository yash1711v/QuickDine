import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseCredential {
  static const String APIKEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9tYWRzd2NueGpkYnJ1ZmltYnd5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzY2NjIxMzQsImV4cCI6MTk5MjIzODEzNH0.qq-CgehJSfyr0KKZQFRKSHAAkKDXB2ezFnRTq5SQ904';
  static const String APIURl = 'https://omadswcnxjdbrufimbwy.supabase.co';
  static SupabaseClient supabaseClient = SupabaseClient(APIURl, APIKEY);
}
