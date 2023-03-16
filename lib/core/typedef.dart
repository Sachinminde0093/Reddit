
import 'package:fpdart/fpdart.dart';
import 'package:reddit_clone/core/failure.dart';

typedef FutureEather<T> = Future<Either<Failure, T>>;

typedef FutureVoid = FutureEather<void>;
 