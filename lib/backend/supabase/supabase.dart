import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://eminocntxjpagpbhjmxj.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVtaW5vY250eGpwYWdwYmhqbXhqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzM4NTAxNTEsImV4cCI6MTk4OTQyNjE1MX0.CsHTK8KQk_UL0O18Dh3IT_XxvSiM3BlI62Rho3CI940';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
      );
}
