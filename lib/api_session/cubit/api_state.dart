sealed class ApiState {}

final class ApiInitial extends ApiState {} 

final class GetAlbumLoadingState extends ApiState {}

final class GetAlbumSuccessState extends ApiState {}

final class GetAlbumErrorState extends ApiState {}