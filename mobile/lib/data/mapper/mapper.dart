import 'package:biblia/app/extensions.dart';
import 'package:biblia/data/responses/responses.dart';
import 'package:biblia/domain/model/model.dart';

const EMPTY = "";
const ZERO = 0;

extension AuthenticationResponseMapper on AuthenticationResponse? {
  Authentication toDomain() {
    return Authentication(
      this?.id?.orEmpty() ?? EMPTY,
      this?.name?.orEmpty() ?? EMPTY,
      this?.phone?.orEmpty() ?? EMPTY,
      this?.email?.orEmpty() ?? EMPTY,
    );
  }
}
