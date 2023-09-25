import 'package:fpdart/fpdart.dart';
import 'package:zeetionary/firebase/core/failure.dart';

typedef FutureEither<T> = Future<Either<Failure, T>>;
typedef FutureVoid = FutureEither<void>;
