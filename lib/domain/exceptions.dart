abstract class Ex {
  String get defaultMessage => 'Something went wrong.';

  String? _message;
  String get message => _message ?? defaultMessage;
  set message(String? text) => _message = text;

  @override
  String toString() => '$runtimeType';
}

class GenericError extends Ex {
  @override
  String get defaultMessage => 'Something went wrong.';
}

class BadRequest extends Ex {
  @override
  String get defaultMessage => 'It looks like there was an issue with your request.';
}

class Unauthorized extends Ex {
  @override
  String get defaultMessage => 'You need to be logged in to access this resource. Please log in and try again.';
}

class Forbidden extends Ex {
  @override
  String get defaultMessage => 'You do not have permission to access this resource.';
}

class NotFound extends Ex {
  @override
  String get defaultMessage => 'The resource you are looking for does not exist.';
}

class AlreadyExist extends Ex {
  @override
  String get defaultMessage => 'Resource already exists.';
}

class InternalServerError extends Ex {
  @override
  String get defaultMessage => 'An unexpected error occurred. Please try again later.';
}
