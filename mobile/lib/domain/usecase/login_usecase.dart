import 'package:biblia/app/functions.dart';
import 'package:biblia/data/network/failure.dart';
import 'package:biblia/data/request/request.dart';
import 'package:biblia/domain/model/model.dart';
import 'package:biblia/domain/repository/repository.dart';
import 'package:biblia/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class LoginUseCase implements BaseUseCase<LoginUseCaseInput, Authentication> {
  Repository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Either<Failure, Authentication>> execute(
      LoginUseCaseInput input) async {
    DeviceInfo deviceInfo = await getDeviceDetails();
    return await _repository.login(LoginRequest(
        input.email, input.password)); //, deviceInfo.identifier, deviceInfo.name
  }
}

class LoginUseCaseInput {
  String email;
  String password;

  LoginUseCaseInput(this.email, this.password);
}
