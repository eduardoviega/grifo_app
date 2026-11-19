import 'package:fpdart/fpdart.dart';
import 'package:grifo_app/core/error/app_failure.dart';

/// Resultado de uma operação que pode falhar com um [AppFailure].
///
/// Convenção do `Either`: `Left` carrega a falha e `Right` carrega o sucesso.
/// Use no lugar de lançar exceções a partir das camadas `data` e `domain`.
typedef AppResult<T> = Either<AppFailure, T>;

/// Versão assíncrona de [AppResult].
typedef AsyncAppResult<T> = Future<AppResult<T>>;
