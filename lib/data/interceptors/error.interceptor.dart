import 'package:dio/dio.dart';
import 'package:its_movieapp_2024/domain/exceptions.dart';
import 'package:its_movieapp_2024/domain/models/response_error.dart';
import 'package:its_movieapp_2024/router/app_router.dart';

class ErrorInterceptor extends Interceptor {
  ErrorInterceptor({this.showMessage = false});
  final bool showMessage;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    Ex ex = switch (err.response?.statusCode) {
      400 => BadRequest(),
      401 => Unauthorized(),
      403 => Forbidden(),
      404 => NotFound(),
      409 => AlreadyExist(),
      500 => InternalServerError(),
      _ => GenericError(),
    };

    if (err.response?.data != null && err.response?.data is Iterable) {
      Iterable data = err.response?.data;
      List<ResponseError> errors = data.map((e) => ResponseError.fromJson(e)).toList();
      ex.message = errors.map((e) => e.description).join('\n');
    }

    if (showMessage) AppRouter.showErrorSnackBar(ex.message);

    handler.next(err.copyWith(error: ex));
  }
}
