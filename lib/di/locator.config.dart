// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../data/datasource/auth/auth_datasource.dart' as _i3;
import '../data/datasource/auth/auth_datasource_impl.dart' as _i4;
import '../data/datasource/items/items_datasource.dart' as _i8;
import '../data/datasource/items/items_datasource_impl.dart' as _i9;
import '../data/repository/auth/auth_repository_impl.dart' as _i7;
import '../data/repository/items/items_repository_impl.dart' as _i11;
import '../domain/repository/auth/auth_repository.dart' as _i6;
import '../domain/repository/items/items_repository.dart' as _i10;
import '../ui/main_page/bloc/main_bloc.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.AuthDataSource>(
      _i4.AuthDataSourceImpl(get<_i5.SharedPreferences>()));
  gh.singleton<_i6.AuthRepository>(
      _i7.AuthRepositoryImpl(get<_i3.AuthDataSource>()));
  gh.singleton<_i8.ItemsDataSource>(_i9.ItemsDataSourceImpl());
  gh.singleton<_i10.ItemsRepository>(
      _i11.ItemsRepositoryImpl(get<_i8.ItemsDataSource>()));
  gh.factory<_i12.MainBloc>(() => _i12.MainBloc(
        get<_i10.ItemsRepository>(),
        get<_i6.AuthRepository>(),
      ));
  return get;
}
