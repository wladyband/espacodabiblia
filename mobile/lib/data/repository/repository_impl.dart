import 'package:biblia/app/extensions.dart';
import 'package:biblia/data/data_source/local_data_source.dart';
import 'package:biblia/data/data_source/remote_data_source.dart';
import 'package:biblia/data/mapper/mapper.dart';
import 'package:biblia/data/network/error_handler.dart';
import 'package:biblia/data/network/failure.dart';
import 'package:biblia/data/network/network_info.dart';
import 'package:biblia/data/request/request.dart';
import 'package:biblia/domain/model/model.dart';
import 'package:biblia/domain/repository/repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class RepositoryImpl extends Repository {
  RemoteDataSource _remoteDataSource;

  NetworkInfo _networkInfo;

  RepositoryImpl(this._remoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, Authentication>> login(LoginRequest loginRequest) async {
    if (await _networkInfo.isConnected) {
      try {
        // its safe to call the API
        final response = await _remoteDataSource.login(loginRequest);

        if (response.status == ApiInternalStatus.SUCCESS) // success
        {
          // return data (success)
          // return right
          return Right(response.toDomain());
        } else {
          // return biz logic error
          // return left
          return Left(
            Failure(response.status ?? ApiInternalStatus.FAILURE, response.message ?? ResponseMessage.DEFAULT),
          );
        }
      } on DioError catch (e) {
        return left(Failure(e.response!.statusCode!, e.response?.data["message"] ?? "Erro no servidor"));
      } catch (error) {
        return (Left(ErrorHandler.handle(error).failure));
      }
    } else {
      // return connection error
      return Left(
        DataSource.NO_INTERNET_CONNECTION.getFailure(),
      );
    }
  }
}
