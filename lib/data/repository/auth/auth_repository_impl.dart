import 'package:injectable/injectable.dart';
import 'package:test_task/data/datasource/auth/auth_datasource.dart';
import 'package:test_task/domain/repository/auth/auth_repository.dart';

@Singleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthDataSource authDataSource;
  AuthRepositoryImpl(
    this.authDataSource,
  );
  @override
  Future<void> getAccessToken() async {
    await authDataSource.getAuthToken();
  }
}
