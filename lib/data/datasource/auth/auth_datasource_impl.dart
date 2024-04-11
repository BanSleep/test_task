import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_task/data/api_client.dart';
import 'package:test_task/data/datasource/auth/auth_datasource.dart';

@Singleton(as: AuthDataSource)
class AuthDataSourceImpl extends AuthDataSource {
  final SharedPreferences prefs;
  AuthDataSourceImpl(this.prefs);

  @override
  Future<void> getAuthToken() async {
    final response = await ApiClient.post('auth/login', {
      'login': 'admin',
      'password': 'admin',
    });
    prefs.setString('authToken', response.data['access_token']);
  }
}
