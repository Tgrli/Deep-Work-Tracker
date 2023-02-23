import '../database.dart';

class UserInfoTable extends SupabaseTable<UserInfoRow> {
  @override
  String get tableName => 'UserInfo';

  @override
  UserInfoRow createRow(Map<String, dynamic> data) => UserInfoRow(data);
}

class UserInfoRow extends SupabaseDataRow {
  UserInfoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserInfoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int? get dWtime => getField<int>('DWtime');
  set dWtime(int? value) => setField<int>('DWtime', value);

  int? get totalDWtime => getField<int>('totalDWtime');
  set totalDWtime(int? value) => setField<int>('totalDWtime', value);

  int? get seshCount => getField<int>('seshCount');
  set seshCount(int? value) => setField<int>('seshCount', value);

  String? get eMails => getField<String>('E-mails');
  set eMails(String? value) => setField<String>('E-mails', value);
}
