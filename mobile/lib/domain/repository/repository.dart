import 'package:biblia/data/network/failure.dart';
import 'package:biblia/data/request/request.dart';
import 'package:biblia/domain/model/model.dart';
import 'package:dartz/dartz.dart';

abstract class Repository {
  Future<Either<Failure, Authentication>> login(LoginRequest loginRequest);

  Future<Either<Failure, String>> forgotPassword(String email);

  Future<Either<Failure, Authentication>> register(RegisterRequest registerRequest);
}
