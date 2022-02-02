import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:skeleton/auth_service/auth_service.dart';

@module
abstract class NetworkModule {
  @Named('BaseUrl')
  String get baseUrl => '';

  Dio dio(
    @Named('BaseUrl') String url,
    final AuthService authService,
  ) =>
      Dio(BaseOptions(baseUrl: url))
        ..interceptors.add(
          InterceptorsWrapper(
            onRequest: (options, handler) => authService.token == null
                ? handler.next(options)
                : handler.next(
                    options
                      ..headers = {
                        'apiToken': authService.token,
                      },
                  ),
          ),
        );
}
