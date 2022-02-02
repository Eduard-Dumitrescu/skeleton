import 'package:freezed_annotation/freezed_annotation.dart';

part 'resource.freezed.dart';

@freezed
class Resource<T> with _$Resource<T> {
  const factory Resource.initial({T? data}) = Initial<T>;
  const factory Resource.loading({T? data}) = Loading<T>;
  const factory Resource.success(T data) = Success<T>;
  const factory Resource.fail(Exception exception, {T? data}) = Fail<T>;
}
