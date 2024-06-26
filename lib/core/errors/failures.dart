import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}
class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection timeout with API server');
      case DioErrorType.sendTimeout:
        return ServerFailure('Send timeout with API server');
      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive timeout with API server');
      case DioErrorType.badResponse:
        if (dioError.response != null) {
          return ServerFailure.fromResponse(
              dioError.response!.statusCode!, dioError.response!.data);
        } else {
          return ServerFailure('Received invalid status code');
        }
      case DioErrorType.cancel:
        return ServerFailure('Request to API server was cancelled');
      default:
        return ServerFailure('An unknown error occurred');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request was not found');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, please try later');
    }
    return ServerFailure('Oops, there was an error, please try again');
  }
}
