sealed class AppFailure {
  const new(this.message, {this.stackTrace});

  final String message;
  final StackTrace? stackTrace;
}

final class DatabaseFailure extends AppFailure {
  const new(super.message, {super.stackTrace});
}

final class UnknownFailure extends AppFailure {
  const new(super.message, {super.stackTrace});
}

/// Registro inexistente: resultado esperado do negócio, não um bug.
/// Por isso não recebe `stackTrace`.
final class NotFoundFailure extends AppFailure {
  const new(super.message);
}

/// Regra de negócio violada. Cada feature define o próprio enum [E], então o
/// core não depende de `features/`. Na UI, faça o match com o tipo explícito
/// (`ValidationFailure<SubjectValidationError>(...)`) para manter a
/// exaustividade sobre o enum.
final class ValidationFailure<E extends Enum> extends AppFailure {
  const new(this.error, super.message);

  final E error;
}
