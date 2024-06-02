// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
import 'tennisfun_api.enums.swagger.dart' as enums;
export 'tennisfun_api.enums.swagger.dart';

part 'tennisfun_api.swagger.chopper.dart';
part 'tennisfun_api.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class TennisfunApi extends ChopperService {
  static TennisfunApi create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$TennisfunApi(client);
    }

    final newClient = ChopperClient(
        services: [_$TennisfunApi()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        errorConverter: errorConverter,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$TennisfunApi(newClient);
  }

  ///
  ///@param userId
  Future<chopper.Response<ApiResultMatchResponseDto>> apiMatchRequestGet(
      {required String? userId}) {
    generatedMapping.putIfAbsent(ApiResultMatchResponseDto,
        () => ApiResultMatchResponseDto.fromJsonFactory);

    return _apiMatchRequestGet(userId: userId);
  }

  ///
  ///@param userId
  @Get(path: '/api/match/request')
  Future<chopper.Response<ApiResultMatchResponseDto>> _apiMatchRequestGet(
      {@Query('userId') required String? userId});

  ///
  Future<chopper.Response<ApiResultMatchResponseDto>> apiMatchRequestPut(
      {required ApiMatchRequestPut$RequestBody? body}) {
    generatedMapping.putIfAbsent(ApiResultMatchResponseDto,
        () => ApiResultMatchResponseDto.fromJsonFactory);

    return _apiMatchRequestPut(body: body);
  }

  ///
  @Put(
    path: '/api/match/request',
    optionalBody: true,
  )
  Future<chopper.Response<ApiResultMatchResponseDto>> _apiMatchRequestPut(
      {@Body() required ApiMatchRequestPut$RequestBody? body});

  ///
  Future<chopper.Response<ApiResultMatchResponseDto>> apiMatchRequestPost(
      {required MatchRequestDto? body}) {
    generatedMapping.putIfAbsent(ApiResultMatchResponseDto,
        () => ApiResultMatchResponseDto.fromJsonFactory);

    return _apiMatchRequestPost(body: body);
  }

  ///
  @Post(
    path: '/api/match/request',
    optionalBody: true,
  )
  Future<chopper.Response<ApiResultMatchResponseDto>> _apiMatchRequestPost(
      {@Body() required MatchRequestDto? body});

  ///
  Future<chopper.Response<ApiResultString>> apiMatchRequestDelete(
      {required String? body}) {
    generatedMapping.putIfAbsent(
        ApiResultString, () => ApiResultString.fromJsonFactory);

    return _apiMatchRequestDelete(body: body);
  }

  ///
  @Delete(path: '/api/match/request')
  Future<chopper.Response<ApiResultString>> _apiMatchRequestDelete(
      {@Body() required String? body});

  ///
  Future<chopper.Response<ApiResponse>> apiUserRegisterPost(
      {required RegistrationDto? body}) {
    generatedMapping.putIfAbsent(
        ApiResponse, () => ApiResponse.fromJsonFactory);

    return _apiUserRegisterPost(body: body);
  }

  ///
  @Post(
    path: '/api/user/register',
    optionalBody: true,
  )
  Future<chopper.Response<ApiResponse>> _apiUserRegisterPost(
      {@Body() required RegistrationDto? body});

  ///
  Future<chopper.Response<ApiResponse>> apiUserLoginPost(
      {required LoginDto? body}) {
    generatedMapping.putIfAbsent(
        ApiResponse, () => ApiResponse.fromJsonFactory);

    return _apiUserLoginPost(body: body);
  }

  ///
  @Post(
    path: '/api/user/login',
    optionalBody: true,
  )
  Future<chopper.Response<ApiResponse>> _apiUserLoginPost(
      {@Body() required LoginDto? body});

  ///
  ///@param matchResultId
  Future<chopper.Response<ApiResultString>>
      apiMatchResultsMatchResultIdFeedbackPost({
    required String? matchResultId,
    required ApiMatchResultsMatchResultIdFeedbackPost$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
        ApiResultString, () => ApiResultString.fromJsonFactory);

    return _apiMatchResultsMatchResultIdFeedbackPost(
        matchResultId: matchResultId, body: body);
  }

  ///
  ///@param matchResultId
  @Post(
    path: '/api/match/results/{matchResultId}/feedback',
    optionalBody: true,
  )
  Future<chopper.Response<ApiResultString>>
      _apiMatchResultsMatchResultIdFeedbackPost({
    @Path('matchResultId') required String? matchResultId,
    @Body() required ApiMatchResultsMatchResultIdFeedbackPost$RequestBody? body,
  });

  ///
  Future<chopper.Response<ApiResponse>> apiGameGet() {
    generatedMapping.putIfAbsent(
        ApiResponse, () => ApiResponse.fromJsonFactory);

    return _apiGameGet();
  }

  ///
  @Get(path: '/api/game')
  Future<chopper.Response<ApiResponse>> _apiGameGet();

  ///
  Future<chopper.Response<ApiResponse>> apiGamePost(
      {required GameCreationDto? body}) {
    generatedMapping.putIfAbsent(
        ApiResponse, () => ApiResponse.fromJsonFactory);

    return _apiGamePost(body: body);
  }

  ///
  @Post(
    path: '/api/game',
    optionalBody: true,
  )
  Future<chopper.Response<ApiResponse>> _apiGamePost(
      {@Body() required GameCreationDto? body});

  ///
  Future<chopper.Response<ApiResponse>> apiGameDelete() {
    generatedMapping.putIfAbsent(
        ApiResponse, () => ApiResponse.fromJsonFactory);

    return _apiGameDelete();
  }

  ///
  @Delete(path: '/api/game')
  Future<chopper.Response<ApiResponse>> _apiGameDelete();

  ///
  Future<chopper.Response<ApiResultListString>> apiFileUploadPost(
      {required List<List<int>> images}) {
    generatedMapping.putIfAbsent(
        ApiResultListString, () => ApiResultListString.fromJsonFactory);

    return _apiFileUploadPost(images: images);
  }

  ///
  @Post(
    path: '/api/file/upload',
    optionalBody: true,
  )
  @Multipart()
  Future<chopper.Response<ApiResultListString>> _apiFileUploadPost(
      {@PartFile() required List<List<int>> images});

  ///
  Future<chopper.Response<ApiResultBusinessInfoResDto>> apiBusinessRegisterPost(
      {required BusinessInfoReqDto? body}) {
    generatedMapping.putIfAbsent(ApiResultBusinessInfoResDto,
        () => ApiResultBusinessInfoResDto.fromJsonFactory);

    return _apiBusinessRegisterPost(body: body);
  }

  ///
  @Post(
    path: '/api/business/register',
    optionalBody: true,
  )
  Future<chopper.Response<ApiResultBusinessInfoResDto>>
      _apiBusinessRegisterPost({@Body() required BusinessInfoReqDto? body});

  ///
  Future<chopper.Response<ApiResultCourtResDto>> apiBusinessCourtsPost(
      {required CourtReqDto? body}) {
    generatedMapping.putIfAbsent(
        ApiResultCourtResDto, () => ApiResultCourtResDto.fromJsonFactory);

    return _apiBusinessCourtsPost(body: body);
  }

  ///
  @Post(
    path: '/api/business/courts',
    optionalBody: true,
  )
  Future<chopper.Response<ApiResultCourtResDto>> _apiBusinessCourtsPost(
      {@Body() required CourtReqDto? body});

  ///
  ///@param courtId
  Future<chopper.Response<ApiResultCourtResDto>> apiBusinessCourtsTimeslotPost(
      {required String? courtId}) {
    generatedMapping.putIfAbsent(
        ApiResultCourtResDto, () => ApiResultCourtResDto.fromJsonFactory);

    return _apiBusinessCourtsTimeslotPost(courtId: courtId);
  }

  ///
  ///@param courtId
  @Post(
    path: '/api/business/courts/timeslot',
    optionalBody: true,
  )
  Future<chopper.Response<ApiResultCourtResDto>> _apiBusinessCourtsTimeslotPost(
      {@Query('courtId') required String? courtId});

  ///
  Future<chopper.Response<ApiResultString>> apiBusinessCourtsAutoMatchPost(
      {required AutoMatchApplyDto? body}) {
    generatedMapping.putIfAbsent(
        ApiResultString, () => ApiResultString.fromJsonFactory);

    return _apiBusinessCourtsAutoMatchPost(body: body);
  }

  ///
  @Post(
    path: '/api/business/courts/auto-match',
    optionalBody: true,
  )
  Future<chopper.Response<ApiResultString>> _apiBusinessCourtsAutoMatchPost(
      {@Body() required AutoMatchApplyDto? body});

  ///
  Future<chopper.Response<ApiResultBusinessInfoResDto>> apiBusinessAccountPost(
      {required AccountReqDto? body}) {
    generatedMapping.putIfAbsent(ApiResultBusinessInfoResDto,
        () => ApiResultBusinessInfoResDto.fromJsonFactory);

    return _apiBusinessAccountPost(body: body);
  }

  ///
  @Post(
    path: '/api/business/account',
    optionalBody: true,
  )
  Future<chopper.Response<ApiResultBusinessInfoResDto>> _apiBusinessAccountPost(
      {@Body() required AccountReqDto? body});

  ///
  Future<chopper.Response<ApiResponse>> apiUserLocationPatch(
      {required LocationUpdateDto? body}) {
    generatedMapping.putIfAbsent(
        ApiResponse, () => ApiResponse.fromJsonFactory);

    return _apiUserLocationPatch(body: body);
  }

  ///
  @Patch(
    path: '/api/user/location',
    optionalBody: true,
  )
  Future<chopper.Response<ApiResponse>> _apiUserLocationPatch(
      {@Body() required LocationUpdateDto? body});

  ///
  Future<chopper.Response> authExpiredGet() {
    return _authExpiredGet();
  }

  ///
  @Get(path: '/auth/expired')
  Future<chopper.Response> _authExpiredGet();

  ///
  ///@param token
  Future<chopper.Response<String>> apiUserVerifyEmailGet(
      {required String? token}) {
    return _apiUserVerifyEmailGet(token: token);
  }

  ///
  ///@param token
  @Get(path: '/api/user/verify-email')
  Future<chopper.Response<String>> _apiUserVerifyEmailGet(
      {@Query('token') required String? token});

  ///
  ///@param courtName
  Future<chopper.Response<ApiResultListCourtResDto>> apiUserCourtsSearchGet(
      {required String? courtName}) {
    generatedMapping.putIfAbsent(ApiResultListCourtResDto,
        () => ApiResultListCourtResDto.fromJsonFactory);

    return _apiUserCourtsSearchGet(courtName: courtName);
  }

  ///
  ///@param courtName
  @Get(path: '/api/user/courts/search')
  Future<chopper.Response<ApiResultListCourtResDto>> _apiUserCourtsSearchGet(
      {@Query('courtName') required String? courtName});

  ///
  ///@param userId
  Future<chopper.Response<ApiResultListMatchResultResDto>> apiMatchResultsGet(
      {required String? userId}) {
    generatedMapping.putIfAbsent(ApiResultListMatchResultResDto,
        () => ApiResultListMatchResultResDto.fromJsonFactory);

    return _apiMatchResultsGet(userId: userId);
  }

  ///
  ///@param userId
  @Get(path: '/api/match/results')
  Future<chopper.Response<ApiResultListMatchResultResDto>> _apiMatchResultsGet(
      {@Query('userId') required String? userId});

  ///
  ///@param uuid
  Future<chopper.Response<ApiResultString>> apiFileDeleteUuidDelete(
      {required String? uuid}) {
    generatedMapping.putIfAbsent(
        ApiResultString, () => ApiResultString.fromJsonFactory);

    return _apiFileDeleteUuidDelete(uuid: uuid);
  }

  ///
  ///@param uuid
  @Delete(path: '/api/file/delete/{uuid}')
  Future<chopper.Response<ApiResultString>> _apiFileDeleteUuidDelete(
      {@Path('uuid') required String? uuid});
}

@JsonSerializable(explicitToJson: true)
class MatchRequestDto {
  const MatchRequestDto({
    required this.startTime,
    required this.endTime,
    required this.objective,
    required this.isSingles,
    this.dislikedCourts,
    required this.minTime,
    required this.maxTime,
    this.reservationCourtId,
    this.reservationDate,
    this.rentalCost,
    this.description,
  });

  factory MatchRequestDto.fromJson(Map<String, dynamic> json) =>
      _$MatchRequestDtoFromJson(json);

  static const toJsonFactory = _$MatchRequestDtoToJson;
  Map<String, dynamic> toJson() => _$MatchRequestDtoToJson(this);

  @JsonKey(name: 'startTime')
  final DateTime startTime;
  @JsonKey(name: 'endTime')
  final DateTime endTime;
  @JsonKey(
    name: 'objective',
    toJson: matchRequestDtoObjectiveToJson,
    fromJson: matchRequestDtoObjectiveFromJson,
  )
  final enums.MatchRequestDtoObjective objective;
  @JsonKey(name: 'isSingles')
  final bool isSingles;
  @JsonKey(name: 'dislikedCourts', defaultValue: <String>[])
  final List<String>? dislikedCourts;
  @JsonKey(name: 'minTime')
  final int minTime;
  @JsonKey(name: 'maxTime')
  final int maxTime;
  @JsonKey(name: 'reservationCourtId')
  final String? reservationCourtId;
  @JsonKey(name: 'reservationDate')
  final DateTime? reservationDate;
  @JsonKey(name: 'rentalCost')
  final int? rentalCost;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$MatchRequestDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MatchRequestDto &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality()
                    .equals(other.endTime, endTime)) &&
            (identical(other.objective, objective) ||
                const DeepCollectionEquality()
                    .equals(other.objective, objective)) &&
            (identical(other.isSingles, isSingles) ||
                const DeepCollectionEquality()
                    .equals(other.isSingles, isSingles)) &&
            (identical(other.dislikedCourts, dislikedCourts) ||
                const DeepCollectionEquality()
                    .equals(other.dislikedCourts, dislikedCourts)) &&
            (identical(other.minTime, minTime) ||
                const DeepCollectionEquality()
                    .equals(other.minTime, minTime)) &&
            (identical(other.maxTime, maxTime) ||
                const DeepCollectionEquality()
                    .equals(other.maxTime, maxTime)) &&
            (identical(other.reservationCourtId, reservationCourtId) ||
                const DeepCollectionEquality()
                    .equals(other.reservationCourtId, reservationCourtId)) &&
            (identical(other.reservationDate, reservationDate) ||
                const DeepCollectionEquality()
                    .equals(other.reservationDate, reservationDate)) &&
            (identical(other.rentalCost, rentalCost) ||
                const DeepCollectionEquality()
                    .equals(other.rentalCost, rentalCost)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(objective) ^
      const DeepCollectionEquality().hash(isSingles) ^
      const DeepCollectionEquality().hash(dislikedCourts) ^
      const DeepCollectionEquality().hash(minTime) ^
      const DeepCollectionEquality().hash(maxTime) ^
      const DeepCollectionEquality().hash(reservationCourtId) ^
      const DeepCollectionEquality().hash(reservationDate) ^
      const DeepCollectionEquality().hash(rentalCost) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $MatchRequestDtoExtension on MatchRequestDto {
  MatchRequestDto copyWith(
      {DateTime? startTime,
      DateTime? endTime,
      enums.MatchRequestDtoObjective? objective,
      bool? isSingles,
      List<String>? dislikedCourts,
      int? minTime,
      int? maxTime,
      String? reservationCourtId,
      DateTime? reservationDate,
      int? rentalCost,
      String? description}) {
    return MatchRequestDto(
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        objective: objective ?? this.objective,
        isSingles: isSingles ?? this.isSingles,
        dislikedCourts: dislikedCourts ?? this.dislikedCourts,
        minTime: minTime ?? this.minTime,
        maxTime: maxTime ?? this.maxTime,
        reservationCourtId: reservationCourtId ?? this.reservationCourtId,
        reservationDate: reservationDate ?? this.reservationDate,
        rentalCost: rentalCost ?? this.rentalCost,
        description: description ?? this.description);
  }

  MatchRequestDto copyWithWrapped(
      {Wrapped<DateTime>? startTime,
      Wrapped<DateTime>? endTime,
      Wrapped<enums.MatchRequestDtoObjective>? objective,
      Wrapped<bool>? isSingles,
      Wrapped<List<String>?>? dislikedCourts,
      Wrapped<int>? minTime,
      Wrapped<int>? maxTime,
      Wrapped<String?>? reservationCourtId,
      Wrapped<DateTime?>? reservationDate,
      Wrapped<int?>? rentalCost,
      Wrapped<String?>? description}) {
    return MatchRequestDto(
        startTime: (startTime != null ? startTime.value : this.startTime),
        endTime: (endTime != null ? endTime.value : this.endTime),
        objective: (objective != null ? objective.value : this.objective),
        isSingles: (isSingles != null ? isSingles.value : this.isSingles),
        dislikedCourts: (dislikedCourts != null
            ? dislikedCourts.value
            : this.dislikedCourts),
        minTime: (minTime != null ? minTime.value : this.minTime),
        maxTime: (maxTime != null ? maxTime.value : this.maxTime),
        reservationCourtId: (reservationCourtId != null
            ? reservationCourtId.value
            : this.reservationCourtId),
        reservationDate: (reservationDate != null
            ? reservationDate.value
            : this.reservationDate),
        rentalCost: (rentalCost != null ? rentalCost.value : this.rentalCost),
        description:
            (description != null ? description.value : this.description));
  }
}

@JsonSerializable(explicitToJson: true)
class ApiResultMatchResponseDto {
  const ApiResultMatchResponseDto({
    this.isSuccess,
    this.code,
    this.message,
    this.result,
  });

  factory ApiResultMatchResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ApiResultMatchResponseDtoFromJson(json);

  static const toJsonFactory = _$ApiResultMatchResponseDtoToJson;
  Map<String, dynamic> toJson() => _$ApiResultMatchResponseDtoToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'result')
  final MatchResponseDto? result;
  static const fromJsonFactory = _$ApiResultMatchResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiResultMatchResponseDto &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(result) ^
      runtimeType.hashCode;
}

extension $ApiResultMatchResponseDtoExtension on ApiResultMatchResponseDto {
  ApiResultMatchResponseDto copyWith(
      {bool? isSuccess,
      String? code,
      String? message,
      MatchResponseDto? result}) {
    return ApiResultMatchResponseDto(
        isSuccess: isSuccess ?? this.isSuccess,
        code: code ?? this.code,
        message: message ?? this.message,
        result: result ?? this.result);
  }

  ApiResultMatchResponseDto copyWithWrapped(
      {Wrapped<bool?>? isSuccess,
      Wrapped<String?>? code,
      Wrapped<String?>? message,
      Wrapped<MatchResponseDto?>? result}) {
    return ApiResultMatchResponseDto(
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        code: (code != null ? code.value : this.code),
        message: (message != null ? message.value : this.message),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class MatchResponseDto {
  const MatchResponseDto({
    this.id,
    this.userId,
    this.startTime,
    this.endTime,
    this.objective,
    this.isSingles,
    this.x,
    this.y,
    this.dislikedCourts,
    this.maxDistance,
    this.minTime,
    this.maxTime,
    this.reservationCourtId,
    this.reservationDate,
    this.rentalCost,
    this.description,
  });

  factory MatchResponseDto.fromJson(Map<String, dynamic> json) =>
      _$MatchResponseDtoFromJson(json);

  static const toJsonFactory = _$MatchResponseDtoToJson;
  Map<String, dynamic> toJson() => _$MatchResponseDtoToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'startTime')
  final DateTime? startTime;
  @JsonKey(name: 'endTime')
  final DateTime? endTime;
  @JsonKey(
    name: 'objective',
    toJson: matchResponseDtoObjectiveNullableToJson,
    fromJson: matchResponseDtoObjectiveNullableFromJson,
  )
  final enums.MatchResponseDtoObjective? objective;
  @JsonKey(name: 'isSingles')
  final bool? isSingles;
  @JsonKey(name: 'x')
  final double? x;
  @JsonKey(name: 'y')
  final double? y;
  @JsonKey(name: 'dislikedCourts', defaultValue: <String>[])
  final List<String>? dislikedCourts;
  @JsonKey(name: 'maxDistance')
  final double? maxDistance;
  @JsonKey(name: 'minTime')
  final int? minTime;
  @JsonKey(name: 'maxTime')
  final int? maxTime;
  @JsonKey(name: 'reservationCourtId')
  final String? reservationCourtId;
  @JsonKey(name: 'reservationDate')
  final DateTime? reservationDate;
  @JsonKey(name: 'rentalCost')
  final int? rentalCost;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$MatchResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MatchResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality()
                    .equals(other.endTime, endTime)) &&
            (identical(other.objective, objective) ||
                const DeepCollectionEquality()
                    .equals(other.objective, objective)) &&
            (identical(other.isSingles, isSingles) ||
                const DeepCollectionEquality()
                    .equals(other.isSingles, isSingles)) &&
            (identical(other.x, x) ||
                const DeepCollectionEquality().equals(other.x, x)) &&
            (identical(other.y, y) ||
                const DeepCollectionEquality().equals(other.y, y)) &&
            (identical(other.dislikedCourts, dislikedCourts) ||
                const DeepCollectionEquality()
                    .equals(other.dislikedCourts, dislikedCourts)) &&
            (identical(other.maxDistance, maxDistance) ||
                const DeepCollectionEquality()
                    .equals(other.maxDistance, maxDistance)) &&
            (identical(other.minTime, minTime) ||
                const DeepCollectionEquality()
                    .equals(other.minTime, minTime)) &&
            (identical(other.maxTime, maxTime) ||
                const DeepCollectionEquality()
                    .equals(other.maxTime, maxTime)) &&
            (identical(other.reservationCourtId, reservationCourtId) ||
                const DeepCollectionEquality()
                    .equals(other.reservationCourtId, reservationCourtId)) &&
            (identical(other.reservationDate, reservationDate) ||
                const DeepCollectionEquality()
                    .equals(other.reservationDate, reservationDate)) &&
            (identical(other.rentalCost, rentalCost) ||
                const DeepCollectionEquality()
                    .equals(other.rentalCost, rentalCost)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(objective) ^
      const DeepCollectionEquality().hash(isSingles) ^
      const DeepCollectionEquality().hash(x) ^
      const DeepCollectionEquality().hash(y) ^
      const DeepCollectionEquality().hash(dislikedCourts) ^
      const DeepCollectionEquality().hash(maxDistance) ^
      const DeepCollectionEquality().hash(minTime) ^
      const DeepCollectionEquality().hash(maxTime) ^
      const DeepCollectionEquality().hash(reservationCourtId) ^
      const DeepCollectionEquality().hash(reservationDate) ^
      const DeepCollectionEquality().hash(rentalCost) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $MatchResponseDtoExtension on MatchResponseDto {
  MatchResponseDto copyWith(
      {String? id,
      String? userId,
      DateTime? startTime,
      DateTime? endTime,
      enums.MatchResponseDtoObjective? objective,
      bool? isSingles,
      double? x,
      double? y,
      List<String>? dislikedCourts,
      double? maxDistance,
      int? minTime,
      int? maxTime,
      String? reservationCourtId,
      DateTime? reservationDate,
      int? rentalCost,
      String? description}) {
    return MatchResponseDto(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        objective: objective ?? this.objective,
        isSingles: isSingles ?? this.isSingles,
        x: x ?? this.x,
        y: y ?? this.y,
        dislikedCourts: dislikedCourts ?? this.dislikedCourts,
        maxDistance: maxDistance ?? this.maxDistance,
        minTime: minTime ?? this.minTime,
        maxTime: maxTime ?? this.maxTime,
        reservationCourtId: reservationCourtId ?? this.reservationCourtId,
        reservationDate: reservationDate ?? this.reservationDate,
        rentalCost: rentalCost ?? this.rentalCost,
        description: description ?? this.description);
  }

  MatchResponseDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? userId,
      Wrapped<DateTime?>? startTime,
      Wrapped<DateTime?>? endTime,
      Wrapped<enums.MatchResponseDtoObjective?>? objective,
      Wrapped<bool?>? isSingles,
      Wrapped<double?>? x,
      Wrapped<double?>? y,
      Wrapped<List<String>?>? dislikedCourts,
      Wrapped<double?>? maxDistance,
      Wrapped<int?>? minTime,
      Wrapped<int?>? maxTime,
      Wrapped<String?>? reservationCourtId,
      Wrapped<DateTime?>? reservationDate,
      Wrapped<int?>? rentalCost,
      Wrapped<String?>? description}) {
    return MatchResponseDto(
        id: (id != null ? id.value : this.id),
        userId: (userId != null ? userId.value : this.userId),
        startTime: (startTime != null ? startTime.value : this.startTime),
        endTime: (endTime != null ? endTime.value : this.endTime),
        objective: (objective != null ? objective.value : this.objective),
        isSingles: (isSingles != null ? isSingles.value : this.isSingles),
        x: (x != null ? x.value : this.x),
        y: (y != null ? y.value : this.y),
        dislikedCourts: (dislikedCourts != null
            ? dislikedCourts.value
            : this.dislikedCourts),
        maxDistance:
            (maxDistance != null ? maxDistance.value : this.maxDistance),
        minTime: (minTime != null ? minTime.value : this.minTime),
        maxTime: (maxTime != null ? maxTime.value : this.maxTime),
        reservationCourtId: (reservationCourtId != null
            ? reservationCourtId.value
            : this.reservationCourtId),
        reservationDate: (reservationDate != null
            ? reservationDate.value
            : this.reservationDate),
        rentalCost: (rentalCost != null ? rentalCost.value : this.rentalCost),
        description:
            (description != null ? description.value : this.description));
  }
}

@JsonSerializable(explicitToJson: true)
class RegistrationDto {
  const RegistrationDto({
    required this.email,
    required this.name,
    required this.password,
    required this.ntrp,
    required this.age,
    required this.gender,
  });

  factory RegistrationDto.fromJson(Map<String, dynamic> json) =>
      _$RegistrationDtoFromJson(json);

  static const toJsonFactory = _$RegistrationDtoToJson;
  Map<String, dynamic> toJson() => _$RegistrationDtoToJson(this);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'ntrp')
  final double ntrp;
  @JsonKey(name: 'age')
  final int age;
  @JsonKey(name: 'gender')
  final String gender;
  static const fromJsonFactory = _$RegistrationDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RegistrationDto &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.ntrp, ntrp) ||
                const DeepCollectionEquality().equals(other.ntrp, ntrp)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(ntrp) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(gender) ^
      runtimeType.hashCode;
}

extension $RegistrationDtoExtension on RegistrationDto {
  RegistrationDto copyWith(
      {String? email,
      String? name,
      String? password,
      double? ntrp,
      int? age,
      String? gender}) {
    return RegistrationDto(
        email: email ?? this.email,
        name: name ?? this.name,
        password: password ?? this.password,
        ntrp: ntrp ?? this.ntrp,
        age: age ?? this.age,
        gender: gender ?? this.gender);
  }

  RegistrationDto copyWithWrapped(
      {Wrapped<String>? email,
      Wrapped<String>? name,
      Wrapped<String>? password,
      Wrapped<double>? ntrp,
      Wrapped<int>? age,
      Wrapped<String>? gender}) {
    return RegistrationDto(
        email: (email != null ? email.value : this.email),
        name: (name != null ? name.value : this.name),
        password: (password != null ? password.value : this.password),
        ntrp: (ntrp != null ? ntrp.value : this.ntrp),
        age: (age != null ? age.value : this.age),
        gender: (gender != null ? gender.value : this.gender));
  }
}

@JsonSerializable(explicitToJson: true)
class ApiResponse {
  const ApiResponse({
    this.code,
    this.message,
    this.result,
    this.isSuccess,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);

  static const toJsonFactory = _$ApiResponseToJson;
  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);

  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'result')
  final Map<String, dynamic>? result;
  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;
  static const fromJsonFactory = _$ApiResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      runtimeType.hashCode;
}

extension $ApiResponseExtension on ApiResponse {
  ApiResponse copyWith(
      {String? code,
      String? message,
      Map<String, dynamic>? result,
      bool? isSuccess}) {
    return ApiResponse(
        code: code ?? this.code,
        message: message ?? this.message,
        result: result ?? this.result,
        isSuccess: isSuccess ?? this.isSuccess);
  }

  ApiResponse copyWithWrapped(
      {Wrapped<String?>? code,
      Wrapped<String?>? message,
      Wrapped<Map<String, dynamic>?>? result,
      Wrapped<bool?>? isSuccess}) {
    return ApiResponse(
        code: (code != null ? code.value : this.code),
        message: (message != null ? message.value : this.message),
        result: (result != null ? result.value : this.result),
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess));
  }
}

@JsonSerializable(explicitToJson: true)
class LoginDto {
  const LoginDto({
    this.email,
    this.password,
  });

  factory LoginDto.fromJson(Map<String, dynamic> json) =>
      _$LoginDtoFromJson(json);

  static const toJsonFactory = _$LoginDtoToJson;
  Map<String, dynamic> toJson() => _$LoginDtoToJson(this);

  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'password')
  final String? password;
  static const fromJsonFactory = _$LoginDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LoginDto &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $LoginDtoExtension on LoginDto {
  LoginDto copyWith({String? email, String? password}) {
    return LoginDto(
        email: email ?? this.email, password: password ?? this.password);
  }

  LoginDto copyWithWrapped(
      {Wrapped<String?>? email, Wrapped<String?>? password}) {
    return LoginDto(
        email: (email != null ? email.value : this.email),
        password: (password != null ? password.value : this.password));
  }
}

@JsonSerializable(explicitToJson: true)
class FeedbackReqDto {
  const FeedbackReqDto({
    required this.feedback,
  });

  factory FeedbackReqDto.fromJson(Map<String, dynamic> json) =>
      _$FeedbackReqDtoFromJson(json);

  static const toJsonFactory = _$FeedbackReqDtoToJson;
  Map<String, dynamic> toJson() => _$FeedbackReqDtoToJson(this);

  @JsonKey(
    name: 'feedback',
    toJson: feedbackReqDtoFeedbackToJson,
    fromJson: feedbackReqDtoFeedbackFromJson,
  )
  final enums.FeedbackReqDtoFeedback feedback;
  static const fromJsonFactory = _$FeedbackReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is FeedbackReqDto &&
            (identical(other.feedback, feedback) ||
                const DeepCollectionEquality()
                    .equals(other.feedback, feedback)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(feedback) ^ runtimeType.hashCode;
}

extension $FeedbackReqDtoExtension on FeedbackReqDto {
  FeedbackReqDto copyWith({enums.FeedbackReqDtoFeedback? feedback}) {
    return FeedbackReqDto(feedback: feedback ?? this.feedback);
  }

  FeedbackReqDto copyWithWrapped(
      {Wrapped<enums.FeedbackReqDtoFeedback>? feedback}) {
    return FeedbackReqDto(
        feedback: (feedback != null ? feedback.value : this.feedback));
  }
}

@JsonSerializable(explicitToJson: true)
class ApiResultString {
  const ApiResultString({
    this.isSuccess,
    this.code,
    this.message,
    this.result,
  });

  factory ApiResultString.fromJson(Map<String, dynamic> json) =>
      _$ApiResultStringFromJson(json);

  static const toJsonFactory = _$ApiResultStringToJson;
  Map<String, dynamic> toJson() => _$ApiResultStringToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'result')
  final String? result;
  static const fromJsonFactory = _$ApiResultStringFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiResultString &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(result) ^
      runtimeType.hashCode;
}

extension $ApiResultStringExtension on ApiResultString {
  ApiResultString copyWith(
      {bool? isSuccess, String? code, String? message, String? result}) {
    return ApiResultString(
        isSuccess: isSuccess ?? this.isSuccess,
        code: code ?? this.code,
        message: message ?? this.message,
        result: result ?? this.result);
  }

  ApiResultString copyWithWrapped(
      {Wrapped<bool?>? isSuccess,
      Wrapped<String?>? code,
      Wrapped<String?>? message,
      Wrapped<String?>? result}) {
    return ApiResultString(
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        code: (code != null ? code.value : this.code),
        message: (message != null ? message.value : this.message),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class GameCreationDto {
  const GameCreationDto({
    this.gameStatus,
    this.playerIds,
    this.courtId,
    this.startTime,
    this.endTime,
    this.chatRoomId,
    this.rentalCost,
    this.scores,
    this.scoreConfirmed,
    this.ntrpFeedbacks,
    this.mannerFeedbacks,
  });

  factory GameCreationDto.fromJson(Map<String, dynamic> json) =>
      _$GameCreationDtoFromJson(json);

  static const toJsonFactory = _$GameCreationDtoToJson;
  Map<String, dynamic> toJson() => _$GameCreationDtoToJson(this);

  @JsonKey(
    name: 'gameStatus',
    toJson: gameCreationDtoGameStatusNullableToJson,
    fromJson: gameCreationDtoGameStatusNullableFromJson,
  )
  final enums.GameCreationDtoGameStatus? gameStatus;
  @JsonKey(name: 'playerIds', defaultValue: <String>[])
  final List<String>? playerIds;
  @JsonKey(name: 'courtId')
  final String? courtId;
  @JsonKey(name: 'startTime')
  final DateTime? startTime;
  @JsonKey(name: 'endTime')
  final DateTime? endTime;
  @JsonKey(name: 'chatRoomId')
  final String? chatRoomId;
  @JsonKey(name: 'rentalCost')
  final double? rentalCost;
  @JsonKey(name: 'scores', defaultValue: <ScoreDto>[])
  final List<ScoreDto>? scores;
  @JsonKey(name: 'scoreConfirmed')
  final bool? scoreConfirmed;
  @JsonKey(name: 'ntrpFeedbacks', defaultValue: <NTRPFeedbackDto>[])
  final List<NTRPFeedbackDto>? ntrpFeedbacks;
  @JsonKey(name: 'mannerFeedbacks', defaultValue: <MannerFeedbackDto>[])
  final List<MannerFeedbackDto>? mannerFeedbacks;
  static const fromJsonFactory = _$GameCreationDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GameCreationDto &&
            (identical(other.gameStatus, gameStatus) ||
                const DeepCollectionEquality()
                    .equals(other.gameStatus, gameStatus)) &&
            (identical(other.playerIds, playerIds) ||
                const DeepCollectionEquality()
                    .equals(other.playerIds, playerIds)) &&
            (identical(other.courtId, courtId) ||
                const DeepCollectionEquality()
                    .equals(other.courtId, courtId)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality()
                    .equals(other.endTime, endTime)) &&
            (identical(other.chatRoomId, chatRoomId) ||
                const DeepCollectionEquality()
                    .equals(other.chatRoomId, chatRoomId)) &&
            (identical(other.rentalCost, rentalCost) ||
                const DeepCollectionEquality()
                    .equals(other.rentalCost, rentalCost)) &&
            (identical(other.scores, scores) ||
                const DeepCollectionEquality().equals(other.scores, scores)) &&
            (identical(other.scoreConfirmed, scoreConfirmed) ||
                const DeepCollectionEquality()
                    .equals(other.scoreConfirmed, scoreConfirmed)) &&
            (identical(other.ntrpFeedbacks, ntrpFeedbacks) ||
                const DeepCollectionEquality()
                    .equals(other.ntrpFeedbacks, ntrpFeedbacks)) &&
            (identical(other.mannerFeedbacks, mannerFeedbacks) ||
                const DeepCollectionEquality()
                    .equals(other.mannerFeedbacks, mannerFeedbacks)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(gameStatus) ^
      const DeepCollectionEquality().hash(playerIds) ^
      const DeepCollectionEquality().hash(courtId) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(chatRoomId) ^
      const DeepCollectionEquality().hash(rentalCost) ^
      const DeepCollectionEquality().hash(scores) ^
      const DeepCollectionEquality().hash(scoreConfirmed) ^
      const DeepCollectionEquality().hash(ntrpFeedbacks) ^
      const DeepCollectionEquality().hash(mannerFeedbacks) ^
      runtimeType.hashCode;
}

extension $GameCreationDtoExtension on GameCreationDto {
  GameCreationDto copyWith(
      {enums.GameCreationDtoGameStatus? gameStatus,
      List<String>? playerIds,
      String? courtId,
      DateTime? startTime,
      DateTime? endTime,
      String? chatRoomId,
      double? rentalCost,
      List<ScoreDto>? scores,
      bool? scoreConfirmed,
      List<NTRPFeedbackDto>? ntrpFeedbacks,
      List<MannerFeedbackDto>? mannerFeedbacks}) {
    return GameCreationDto(
        gameStatus: gameStatus ?? this.gameStatus,
        playerIds: playerIds ?? this.playerIds,
        courtId: courtId ?? this.courtId,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        chatRoomId: chatRoomId ?? this.chatRoomId,
        rentalCost: rentalCost ?? this.rentalCost,
        scores: scores ?? this.scores,
        scoreConfirmed: scoreConfirmed ?? this.scoreConfirmed,
        ntrpFeedbacks: ntrpFeedbacks ?? this.ntrpFeedbacks,
        mannerFeedbacks: mannerFeedbacks ?? this.mannerFeedbacks);
  }

  GameCreationDto copyWithWrapped(
      {Wrapped<enums.GameCreationDtoGameStatus?>? gameStatus,
      Wrapped<List<String>?>? playerIds,
      Wrapped<String?>? courtId,
      Wrapped<DateTime?>? startTime,
      Wrapped<DateTime?>? endTime,
      Wrapped<String?>? chatRoomId,
      Wrapped<double?>? rentalCost,
      Wrapped<List<ScoreDto>?>? scores,
      Wrapped<bool?>? scoreConfirmed,
      Wrapped<List<NTRPFeedbackDto>?>? ntrpFeedbacks,
      Wrapped<List<MannerFeedbackDto>?>? mannerFeedbacks}) {
    return GameCreationDto(
        gameStatus: (gameStatus != null ? gameStatus.value : this.gameStatus),
        playerIds: (playerIds != null ? playerIds.value : this.playerIds),
        courtId: (courtId != null ? courtId.value : this.courtId),
        startTime: (startTime != null ? startTime.value : this.startTime),
        endTime: (endTime != null ? endTime.value : this.endTime),
        chatRoomId: (chatRoomId != null ? chatRoomId.value : this.chatRoomId),
        rentalCost: (rentalCost != null ? rentalCost.value : this.rentalCost),
        scores: (scores != null ? scores.value : this.scores),
        scoreConfirmed: (scoreConfirmed != null
            ? scoreConfirmed.value
            : this.scoreConfirmed),
        ntrpFeedbacks:
            (ntrpFeedbacks != null ? ntrpFeedbacks.value : this.ntrpFeedbacks),
        mannerFeedbacks: (mannerFeedbacks != null
            ? mannerFeedbacks.value
            : this.mannerFeedbacks));
  }
}

@JsonSerializable(explicitToJson: true)
class MannerFeedbackDto {
  const MannerFeedbackDto({
    this.userId,
    this.opponentUserId,
    this.mannerScore,
    this.comments,
  });

  factory MannerFeedbackDto.fromJson(Map<String, dynamic> json) =>
      _$MannerFeedbackDtoFromJson(json);

  static const toJsonFactory = _$MannerFeedbackDtoToJson;
  Map<String, dynamic> toJson() => _$MannerFeedbackDtoToJson(this);

  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'opponentUserId')
  final String? opponentUserId;
  @JsonKey(name: 'mannerScore')
  final int? mannerScore;
  @JsonKey(name: 'comments')
  final String? comments;
  static const fromJsonFactory = _$MannerFeedbackDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MannerFeedbackDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.opponentUserId, opponentUserId) ||
                const DeepCollectionEquality()
                    .equals(other.opponentUserId, opponentUserId)) &&
            (identical(other.mannerScore, mannerScore) ||
                const DeepCollectionEquality()
                    .equals(other.mannerScore, mannerScore)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(opponentUserId) ^
      const DeepCollectionEquality().hash(mannerScore) ^
      const DeepCollectionEquality().hash(comments) ^
      runtimeType.hashCode;
}

extension $MannerFeedbackDtoExtension on MannerFeedbackDto {
  MannerFeedbackDto copyWith(
      {String? userId,
      String? opponentUserId,
      int? mannerScore,
      String? comments}) {
    return MannerFeedbackDto(
        userId: userId ?? this.userId,
        opponentUserId: opponentUserId ?? this.opponentUserId,
        mannerScore: mannerScore ?? this.mannerScore,
        comments: comments ?? this.comments);
  }

  MannerFeedbackDto copyWithWrapped(
      {Wrapped<String?>? userId,
      Wrapped<String?>? opponentUserId,
      Wrapped<int?>? mannerScore,
      Wrapped<String?>? comments}) {
    return MannerFeedbackDto(
        userId: (userId != null ? userId.value : this.userId),
        opponentUserId: (opponentUserId != null
            ? opponentUserId.value
            : this.opponentUserId),
        mannerScore:
            (mannerScore != null ? mannerScore.value : this.mannerScore),
        comments: (comments != null ? comments.value : this.comments));
  }
}

@JsonSerializable(explicitToJson: true)
class NTRPFeedbackDto {
  const NTRPFeedbackDto({
    this.userId,
    this.opponentUserId,
    this.ntrp,
    this.comments,
  });

  factory NTRPFeedbackDto.fromJson(Map<String, dynamic> json) =>
      _$NTRPFeedbackDtoFromJson(json);

  static const toJsonFactory = _$NTRPFeedbackDtoToJson;
  Map<String, dynamic> toJson() => _$NTRPFeedbackDtoToJson(this);

  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'opponentUserId')
  final String? opponentUserId;
  @JsonKey(name: 'ntrp')
  final double? ntrp;
  @JsonKey(name: 'comments')
  final String? comments;
  static const fromJsonFactory = _$NTRPFeedbackDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is NTRPFeedbackDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.opponentUserId, opponentUserId) ||
                const DeepCollectionEquality()
                    .equals(other.opponentUserId, opponentUserId)) &&
            (identical(other.ntrp, ntrp) ||
                const DeepCollectionEquality().equals(other.ntrp, ntrp)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(opponentUserId) ^
      const DeepCollectionEquality().hash(ntrp) ^
      const DeepCollectionEquality().hash(comments) ^
      runtimeType.hashCode;
}

extension $NTRPFeedbackDtoExtension on NTRPFeedbackDto {
  NTRPFeedbackDto copyWith(
      {String? userId,
      String? opponentUserId,
      double? ntrp,
      String? comments}) {
    return NTRPFeedbackDto(
        userId: userId ?? this.userId,
        opponentUserId: opponentUserId ?? this.opponentUserId,
        ntrp: ntrp ?? this.ntrp,
        comments: comments ?? this.comments);
  }

  NTRPFeedbackDto copyWithWrapped(
      {Wrapped<String?>? userId,
      Wrapped<String?>? opponentUserId,
      Wrapped<double?>? ntrp,
      Wrapped<String?>? comments}) {
    return NTRPFeedbackDto(
        userId: (userId != null ? userId.value : this.userId),
        opponentUserId: (opponentUserId != null
            ? opponentUserId.value
            : this.opponentUserId),
        ntrp: (ntrp != null ? ntrp.value : this.ntrp),
        comments: (comments != null ? comments.value : this.comments));
  }
}

@JsonSerializable(explicitToJson: true)
class ScoreDetailDto {
  const ScoreDetailDto({
    this.userScore,
    this.opponentScore,
  });

  factory ScoreDetailDto.fromJson(Map<String, dynamic> json) =>
      _$ScoreDetailDtoFromJson(json);

  static const toJsonFactory = _$ScoreDetailDtoToJson;
  Map<String, dynamic> toJson() => _$ScoreDetailDtoToJson(this);

  @JsonKey(name: 'userScore')
  final int? userScore;
  @JsonKey(name: 'opponentScore')
  final int? opponentScore;
  static const fromJsonFactory = _$ScoreDetailDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ScoreDetailDto &&
            (identical(other.userScore, userScore) ||
                const DeepCollectionEquality()
                    .equals(other.userScore, userScore)) &&
            (identical(other.opponentScore, opponentScore) ||
                const DeepCollectionEquality()
                    .equals(other.opponentScore, opponentScore)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userScore) ^
      const DeepCollectionEquality().hash(opponentScore) ^
      runtimeType.hashCode;
}

extension $ScoreDetailDtoExtension on ScoreDetailDto {
  ScoreDetailDto copyWith({int? userScore, int? opponentScore}) {
    return ScoreDetailDto(
        userScore: userScore ?? this.userScore,
        opponentScore: opponentScore ?? this.opponentScore);
  }

  ScoreDetailDto copyWithWrapped(
      {Wrapped<int?>? userScore, Wrapped<int?>? opponentScore}) {
    return ScoreDetailDto(
        userScore: (userScore != null ? userScore.value : this.userScore),
        opponentScore:
            (opponentScore != null ? opponentScore.value : this.opponentScore));
  }
}

@JsonSerializable(explicitToJson: true)
class ScoreDto {
  const ScoreDto({
    this.userId,
    this.scoreDetails,
  });

  factory ScoreDto.fromJson(Map<String, dynamic> json) =>
      _$ScoreDtoFromJson(json);

  static const toJsonFactory = _$ScoreDtoToJson;
  Map<String, dynamic> toJson() => _$ScoreDtoToJson(this);

  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'scoreDetails', defaultValue: <ScoreDetailDto>[])
  final List<ScoreDetailDto>? scoreDetails;
  static const fromJsonFactory = _$ScoreDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ScoreDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.scoreDetails, scoreDetails) ||
                const DeepCollectionEquality()
                    .equals(other.scoreDetails, scoreDetails)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(scoreDetails) ^
      runtimeType.hashCode;
}

extension $ScoreDtoExtension on ScoreDto {
  ScoreDto copyWith({String? userId, List<ScoreDetailDto>? scoreDetails}) {
    return ScoreDto(
        userId: userId ?? this.userId,
        scoreDetails: scoreDetails ?? this.scoreDetails);
  }

  ScoreDto copyWithWrapped(
      {Wrapped<String?>? userId,
      Wrapped<List<ScoreDetailDto>?>? scoreDetails}) {
    return ScoreDto(
        userId: (userId != null ? userId.value : this.userId),
        scoreDetails:
            (scoreDetails != null ? scoreDetails.value : this.scoreDetails));
  }
}

@JsonSerializable(explicitToJson: true)
class ApiResultListString {
  const ApiResultListString({
    this.isSuccess,
    this.code,
    this.message,
    this.result,
  });

  factory ApiResultListString.fromJson(Map<String, dynamic> json) =>
      _$ApiResultListStringFromJson(json);

  static const toJsonFactory = _$ApiResultListStringToJson;
  Map<String, dynamic> toJson() => _$ApiResultListStringToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'result', defaultValue: <String>[])
  final List<String>? result;
  static const fromJsonFactory = _$ApiResultListStringFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiResultListString &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(result) ^
      runtimeType.hashCode;
}

extension $ApiResultListStringExtension on ApiResultListString {
  ApiResultListString copyWith(
      {bool? isSuccess, String? code, String? message, List<String>? result}) {
    return ApiResultListString(
        isSuccess: isSuccess ?? this.isSuccess,
        code: code ?? this.code,
        message: message ?? this.message,
        result: result ?? this.result);
  }

  ApiResultListString copyWithWrapped(
      {Wrapped<bool?>? isSuccess,
      Wrapped<String?>? code,
      Wrapped<String?>? message,
      Wrapped<List<String>?>? result}) {
    return ApiResultListString(
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        code: (code != null ? code.value : this.code),
        message: (message != null ? message.value : this.message),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class BusinessInfoReqDto {
  const BusinessInfoReqDto({
    required this.businessRegistrationNumber,
    this.documents,
  });

  factory BusinessInfoReqDto.fromJson(Map<String, dynamic> json) =>
      _$BusinessInfoReqDtoFromJson(json);

  static const toJsonFactory = _$BusinessInfoReqDtoToJson;
  Map<String, dynamic> toJson() => _$BusinessInfoReqDtoToJson(this);

  @JsonKey(name: 'businessRegistrationNumber')
  final String businessRegistrationNumber;
  @JsonKey(name: 'documents', defaultValue: <String>[])
  final List<String>? documents;
  static const fromJsonFactory = _$BusinessInfoReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BusinessInfoReqDto &&
            (identical(other.businessRegistrationNumber,
                    businessRegistrationNumber) ||
                const DeepCollectionEquality().equals(
                    other.businessRegistrationNumber,
                    businessRegistrationNumber)) &&
            (identical(other.documents, documents) ||
                const DeepCollectionEquality()
                    .equals(other.documents, documents)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(businessRegistrationNumber) ^
      const DeepCollectionEquality().hash(documents) ^
      runtimeType.hashCode;
}

extension $BusinessInfoReqDtoExtension on BusinessInfoReqDto {
  BusinessInfoReqDto copyWith(
      {String? businessRegistrationNumber, List<String>? documents}) {
    return BusinessInfoReqDto(
        businessRegistrationNumber:
            businessRegistrationNumber ?? this.businessRegistrationNumber,
        documents: documents ?? this.documents);
  }

  BusinessInfoReqDto copyWithWrapped(
      {Wrapped<String>? businessRegistrationNumber,
      Wrapped<List<String>?>? documents}) {
    return BusinessInfoReqDto(
        businessRegistrationNumber: (businessRegistrationNumber != null
            ? businessRegistrationNumber.value
            : this.businessRegistrationNumber),
        documents: (documents != null ? documents.value : this.documents));
  }
}

@JsonSerializable(explicitToJson: true)
class ApiResultBusinessInfoResDto {
  const ApiResultBusinessInfoResDto({
    this.isSuccess,
    this.code,
    this.message,
    this.result,
  });

  factory ApiResultBusinessInfoResDto.fromJson(Map<String, dynamic> json) =>
      _$ApiResultBusinessInfoResDtoFromJson(json);

  static const toJsonFactory = _$ApiResultBusinessInfoResDtoToJson;
  Map<String, dynamic> toJson() => _$ApiResultBusinessInfoResDtoToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'result')
  final BusinessInfoResDto? result;
  static const fromJsonFactory = _$ApiResultBusinessInfoResDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiResultBusinessInfoResDto &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(result) ^
      runtimeType.hashCode;
}

extension $ApiResultBusinessInfoResDtoExtension on ApiResultBusinessInfoResDto {
  ApiResultBusinessInfoResDto copyWith(
      {bool? isSuccess,
      String? code,
      String? message,
      BusinessInfoResDto? result}) {
    return ApiResultBusinessInfoResDto(
        isSuccess: isSuccess ?? this.isSuccess,
        code: code ?? this.code,
        message: message ?? this.message,
        result: result ?? this.result);
  }

  ApiResultBusinessInfoResDto copyWithWrapped(
      {Wrapped<bool?>? isSuccess,
      Wrapped<String?>? code,
      Wrapped<String?>? message,
      Wrapped<BusinessInfoResDto?>? result}) {
    return ApiResultBusinessInfoResDto(
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        code: (code != null ? code.value : this.code),
        message: (message != null ? message.value : this.message),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class BusinessInfoResDto {
  const BusinessInfoResDto({
    this.id,
    this.businessRegistrationNumber,
    this.documents,
    this.bank,
    this.accountNumber,
    this.registrationStatus,
  });

  factory BusinessInfoResDto.fromJson(Map<String, dynamic> json) =>
      _$BusinessInfoResDtoFromJson(json);

  static const toJsonFactory = _$BusinessInfoResDtoToJson;
  Map<String, dynamic> toJson() => _$BusinessInfoResDtoToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'businessRegistrationNumber')
  final String? businessRegistrationNumber;
  @JsonKey(name: 'documents', defaultValue: <String>[])
  final List<String>? documents;
  @JsonKey(name: 'bank')
  final String? bank;
  @JsonKey(name: 'accountNumber')
  final String? accountNumber;
  @JsonKey(
    name: 'registrationStatus',
    toJson: businessInfoResDtoRegistrationStatusNullableToJson,
    fromJson: businessInfoResDtoRegistrationStatusNullableFromJson,
  )
  final enums.BusinessInfoResDtoRegistrationStatus? registrationStatus;
  static const fromJsonFactory = _$BusinessInfoResDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BusinessInfoResDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.businessRegistrationNumber,
                    businessRegistrationNumber) ||
                const DeepCollectionEquality().equals(
                    other.businessRegistrationNumber,
                    businessRegistrationNumber)) &&
            (identical(other.documents, documents) ||
                const DeepCollectionEquality()
                    .equals(other.documents, documents)) &&
            (identical(other.bank, bank) ||
                const DeepCollectionEquality().equals(other.bank, bank)) &&
            (identical(other.accountNumber, accountNumber) ||
                const DeepCollectionEquality()
                    .equals(other.accountNumber, accountNumber)) &&
            (identical(other.registrationStatus, registrationStatus) ||
                const DeepCollectionEquality()
                    .equals(other.registrationStatus, registrationStatus)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(businessRegistrationNumber) ^
      const DeepCollectionEquality().hash(documents) ^
      const DeepCollectionEquality().hash(bank) ^
      const DeepCollectionEquality().hash(accountNumber) ^
      const DeepCollectionEquality().hash(registrationStatus) ^
      runtimeType.hashCode;
}

extension $BusinessInfoResDtoExtension on BusinessInfoResDto {
  BusinessInfoResDto copyWith(
      {String? id,
      String? businessRegistrationNumber,
      List<String>? documents,
      String? bank,
      String? accountNumber,
      enums.BusinessInfoResDtoRegistrationStatus? registrationStatus}) {
    return BusinessInfoResDto(
        id: id ?? this.id,
        businessRegistrationNumber:
            businessRegistrationNumber ?? this.businessRegistrationNumber,
        documents: documents ?? this.documents,
        bank: bank ?? this.bank,
        accountNumber: accountNumber ?? this.accountNumber,
        registrationStatus: registrationStatus ?? this.registrationStatus);
  }

  BusinessInfoResDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? businessRegistrationNumber,
      Wrapped<List<String>?>? documents,
      Wrapped<String?>? bank,
      Wrapped<String?>? accountNumber,
      Wrapped<enums.BusinessInfoResDtoRegistrationStatus?>?
          registrationStatus}) {
    return BusinessInfoResDto(
        id: (id != null ? id.value : this.id),
        businessRegistrationNumber: (businessRegistrationNumber != null
            ? businessRegistrationNumber.value
            : this.businessRegistrationNumber),
        documents: (documents != null ? documents.value : this.documents),
        bank: (bank != null ? bank.value : this.bank),
        accountNumber:
            (accountNumber != null ? accountNumber.value : this.accountNumber),
        registrationStatus: (registrationStatus != null
            ? registrationStatus.value
            : this.registrationStatus));
  }
}

@JsonSerializable(explicitToJson: true)
class CourtHoursDto {
  const CourtHoursDto({
    this.dayOfWeek,
    this.openTime,
    this.closeTime,
  });

  factory CourtHoursDto.fromJson(Map<String, dynamic> json) =>
      _$CourtHoursDtoFromJson(json);

  static const toJsonFactory = _$CourtHoursDtoToJson;
  Map<String, dynamic> toJson() => _$CourtHoursDtoToJson(this);

  @JsonKey(
    name: 'dayOfWeek',
    toJson: courtHoursDtoDayOfWeekNullableToJson,
    fromJson: courtHoursDtoDayOfWeekNullableFromJson,
  )
  final enums.CourtHoursDtoDayOfWeek? dayOfWeek;
  @JsonKey(name: 'openTime')
  final String? openTime;
  @JsonKey(name: 'closeTime')
  final String? closeTime;
  static const fromJsonFactory = _$CourtHoursDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CourtHoursDto &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                const DeepCollectionEquality()
                    .equals(other.dayOfWeek, dayOfWeek)) &&
            (identical(other.openTime, openTime) ||
                const DeepCollectionEquality()
                    .equals(other.openTime, openTime)) &&
            (identical(other.closeTime, closeTime) ||
                const DeepCollectionEquality()
                    .equals(other.closeTime, closeTime)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(dayOfWeek) ^
      const DeepCollectionEquality().hash(openTime) ^
      const DeepCollectionEquality().hash(closeTime) ^
      runtimeType.hashCode;
}

extension $CourtHoursDtoExtension on CourtHoursDto {
  CourtHoursDto copyWith(
      {enums.CourtHoursDtoDayOfWeek? dayOfWeek,
      String? openTime,
      String? closeTime}) {
    return CourtHoursDto(
        dayOfWeek: dayOfWeek ?? this.dayOfWeek,
        openTime: openTime ?? this.openTime,
        closeTime: closeTime ?? this.closeTime);
  }

  CourtHoursDto copyWithWrapped(
      {Wrapped<enums.CourtHoursDtoDayOfWeek?>? dayOfWeek,
      Wrapped<String?>? openTime,
      Wrapped<String?>? closeTime}) {
    return CourtHoursDto(
        dayOfWeek: (dayOfWeek != null ? dayOfWeek.value : this.dayOfWeek),
        openTime: (openTime != null ? openTime.value : this.openTime),
        closeTime: (closeTime != null ? closeTime.value : this.closeTime));
  }
}

@JsonSerializable(explicitToJson: true)
class CourtReqDto {
  const CourtReqDto({
    required this.latitude,
    required this.longitude,
    this.description,
    required this.ownerId,
    required this.courtType,
    required this.courtName,
    this.businessHours,
    this.rentalCostPerHalfHour,
  });

  factory CourtReqDto.fromJson(Map<String, dynamic> json) =>
      _$CourtReqDtoFromJson(json);

  static const toJsonFactory = _$CourtReqDtoToJson;
  Map<String, dynamic> toJson() => _$CourtReqDtoToJson(this);

  @JsonKey(name: 'latitude')
  final double latitude;
  @JsonKey(name: 'longitude')
  final double longitude;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'ownerId')
  final String ownerId;
  @JsonKey(
    name: 'courtType',
    toJson: courtReqDtoCourtTypeToJson,
    fromJson: courtReqDtoCourtTypeFromJson,
  )
  final enums.CourtReqDtoCourtType courtType;
  @JsonKey(name: 'courtName')
  final String courtName;
  @JsonKey(name: 'businessHours', defaultValue: <CourtHoursDto>[])
  final List<CourtHoursDto>? businessHours;
  @JsonKey(name: 'rentalCostPerHalfHour')
  final double? rentalCostPerHalfHour;
  static const fromJsonFactory = _$CourtReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CourtReqDto &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.ownerId, ownerId) ||
                const DeepCollectionEquality()
                    .equals(other.ownerId, ownerId)) &&
            (identical(other.courtType, courtType) ||
                const DeepCollectionEquality()
                    .equals(other.courtType, courtType)) &&
            (identical(other.courtName, courtName) ||
                const DeepCollectionEquality()
                    .equals(other.courtName, courtName)) &&
            (identical(other.businessHours, businessHours) ||
                const DeepCollectionEquality()
                    .equals(other.businessHours, businessHours)) &&
            (identical(other.rentalCostPerHalfHour, rentalCostPerHalfHour) ||
                const DeepCollectionEquality().equals(
                    other.rentalCostPerHalfHour, rentalCostPerHalfHour)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(courtType) ^
      const DeepCollectionEquality().hash(courtName) ^
      const DeepCollectionEquality().hash(businessHours) ^
      const DeepCollectionEquality().hash(rentalCostPerHalfHour) ^
      runtimeType.hashCode;
}

extension $CourtReqDtoExtension on CourtReqDto {
  CourtReqDto copyWith(
      {double? latitude,
      double? longitude,
      String? description,
      String? ownerId,
      enums.CourtReqDtoCourtType? courtType,
      String? courtName,
      List<CourtHoursDto>? businessHours,
      double? rentalCostPerHalfHour}) {
    return CourtReqDto(
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        description: description ?? this.description,
        ownerId: ownerId ?? this.ownerId,
        courtType: courtType ?? this.courtType,
        courtName: courtName ?? this.courtName,
        businessHours: businessHours ?? this.businessHours,
        rentalCostPerHalfHour:
            rentalCostPerHalfHour ?? this.rentalCostPerHalfHour);
  }

  CourtReqDto copyWithWrapped(
      {Wrapped<double>? latitude,
      Wrapped<double>? longitude,
      Wrapped<String?>? description,
      Wrapped<String>? ownerId,
      Wrapped<enums.CourtReqDtoCourtType>? courtType,
      Wrapped<String>? courtName,
      Wrapped<List<CourtHoursDto>?>? businessHours,
      Wrapped<double?>? rentalCostPerHalfHour}) {
    return CourtReqDto(
        latitude: (latitude != null ? latitude.value : this.latitude),
        longitude: (longitude != null ? longitude.value : this.longitude),
        description:
            (description != null ? description.value : this.description),
        ownerId: (ownerId != null ? ownerId.value : this.ownerId),
        courtType: (courtType != null ? courtType.value : this.courtType),
        courtName: (courtName != null ? courtName.value : this.courtName),
        businessHours:
            (businessHours != null ? businessHours.value : this.businessHours),
        rentalCostPerHalfHour: (rentalCostPerHalfHour != null
            ? rentalCostPerHalfHour.value
            : this.rentalCostPerHalfHour));
  }
}

@JsonSerializable(explicitToJson: true)
class ApiResultCourtResDto {
  const ApiResultCourtResDto({
    this.isSuccess,
    this.code,
    this.message,
    this.result,
  });

  factory ApiResultCourtResDto.fromJson(Map<String, dynamic> json) =>
      _$ApiResultCourtResDtoFromJson(json);

  static const toJsonFactory = _$ApiResultCourtResDtoToJson;
  Map<String, dynamic> toJson() => _$ApiResultCourtResDtoToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'result')
  final CourtResDto? result;
  static const fromJsonFactory = _$ApiResultCourtResDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiResultCourtResDto &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(result) ^
      runtimeType.hashCode;
}

extension $ApiResultCourtResDtoExtension on ApiResultCourtResDto {
  ApiResultCourtResDto copyWith(
      {bool? isSuccess, String? code, String? message, CourtResDto? result}) {
    return ApiResultCourtResDto(
        isSuccess: isSuccess ?? this.isSuccess,
        code: code ?? this.code,
        message: message ?? this.message,
        result: result ?? this.result);
  }

  ApiResultCourtResDto copyWithWrapped(
      {Wrapped<bool?>? isSuccess,
      Wrapped<String?>? code,
      Wrapped<String?>? message,
      Wrapped<CourtResDto?>? result}) {
    return ApiResultCourtResDto(
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        code: (code != null ? code.value : this.code),
        message: (message != null ? message.value : this.message),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class CourtResDto {
  const CourtResDto({
    this.courtId,
    this.location,
    this.description,
    this.ownerId,
    this.courtType,
    this.courtName,
    this.businessHours,
  });

  factory CourtResDto.fromJson(Map<String, dynamic> json) =>
      _$CourtResDtoFromJson(json);

  static const toJsonFactory = _$CourtResDtoToJson;
  Map<String, dynamic> toJson() => _$CourtResDtoToJson(this);

  @JsonKey(name: 'courtId')
  final String? courtId;
  @JsonKey(name: 'location')
  final Point? location;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'ownerId')
  final String? ownerId;
  @JsonKey(
    name: 'courtType',
    toJson: courtResDtoCourtTypeNullableToJson,
    fromJson: courtResDtoCourtTypeNullableFromJson,
  )
  final enums.CourtResDtoCourtType? courtType;
  @JsonKey(name: 'courtName')
  final String? courtName;
  @JsonKey(name: 'businessHours', defaultValue: <CourtHoursDto>[])
  final List<CourtHoursDto>? businessHours;
  static const fromJsonFactory = _$CourtResDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CourtResDto &&
            (identical(other.courtId, courtId) ||
                const DeepCollectionEquality()
                    .equals(other.courtId, courtId)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.ownerId, ownerId) ||
                const DeepCollectionEquality()
                    .equals(other.ownerId, ownerId)) &&
            (identical(other.courtType, courtType) ||
                const DeepCollectionEquality()
                    .equals(other.courtType, courtType)) &&
            (identical(other.courtName, courtName) ||
                const DeepCollectionEquality()
                    .equals(other.courtName, courtName)) &&
            (identical(other.businessHours, businessHours) ||
                const DeepCollectionEquality()
                    .equals(other.businessHours, businessHours)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(courtId) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(courtType) ^
      const DeepCollectionEquality().hash(courtName) ^
      const DeepCollectionEquality().hash(businessHours) ^
      runtimeType.hashCode;
}

extension $CourtResDtoExtension on CourtResDto {
  CourtResDto copyWith(
      {String? courtId,
      Point? location,
      String? description,
      String? ownerId,
      enums.CourtResDtoCourtType? courtType,
      String? courtName,
      List<CourtHoursDto>? businessHours}) {
    return CourtResDto(
        courtId: courtId ?? this.courtId,
        location: location ?? this.location,
        description: description ?? this.description,
        ownerId: ownerId ?? this.ownerId,
        courtType: courtType ?? this.courtType,
        courtName: courtName ?? this.courtName,
        businessHours: businessHours ?? this.businessHours);
  }

  CourtResDto copyWithWrapped(
      {Wrapped<String?>? courtId,
      Wrapped<Point?>? location,
      Wrapped<String?>? description,
      Wrapped<String?>? ownerId,
      Wrapped<enums.CourtResDtoCourtType?>? courtType,
      Wrapped<String?>? courtName,
      Wrapped<List<CourtHoursDto>?>? businessHours}) {
    return CourtResDto(
        courtId: (courtId != null ? courtId.value : this.courtId),
        location: (location != null ? location.value : this.location),
        description:
            (description != null ? description.value : this.description),
        ownerId: (ownerId != null ? ownerId.value : this.ownerId),
        courtType: (courtType != null ? courtType.value : this.courtType),
        courtName: (courtName != null ? courtName.value : this.courtName),
        businessHours:
            (businessHours != null ? businessHours.value : this.businessHours));
  }
}

@JsonSerializable(explicitToJson: true)
class Point {
  const Point({
    this.x,
    this.y,
  });

  factory Point.fromJson(Map<String, dynamic> json) => _$PointFromJson(json);

  static const toJsonFactory = _$PointToJson;
  Map<String, dynamic> toJson() => _$PointToJson(this);

  @JsonKey(name: 'x')
  final double? x;
  @JsonKey(name: 'y')
  final double? y;
  static const fromJsonFactory = _$PointFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Point &&
            (identical(other.x, x) ||
                const DeepCollectionEquality().equals(other.x, x)) &&
            (identical(other.y, y) ||
                const DeepCollectionEquality().equals(other.y, y)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(x) ^
      const DeepCollectionEquality().hash(y) ^
      runtimeType.hashCode;
}

extension $PointExtension on Point {
  Point copyWith({double? x, double? y}) {
    return Point(x: x ?? this.x, y: y ?? this.y);
  }

  Point copyWithWrapped({Wrapped<double?>? x, Wrapped<double?>? y}) {
    return Point(
        x: (x != null ? x.value : this.x), y: (y != null ? y.value : this.y));
  }
}

@JsonSerializable(explicitToJson: true)
class AutoMatchApplyDto {
  const AutoMatchApplyDto({
    required this.courtId,
    this.dates,
  });

  factory AutoMatchApplyDto.fromJson(Map<String, dynamic> json) =>
      _$AutoMatchApplyDtoFromJson(json);

  static const toJsonFactory = _$AutoMatchApplyDtoToJson;
  Map<String, dynamic> toJson() => _$AutoMatchApplyDtoToJson(this);

  @JsonKey(name: 'courtId')
  final String courtId;
  @JsonKey(name: 'dates', defaultValue: <String>[])
  final List<String>? dates;
  static const fromJsonFactory = _$AutoMatchApplyDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AutoMatchApplyDto &&
            (identical(other.courtId, courtId) ||
                const DeepCollectionEquality()
                    .equals(other.courtId, courtId)) &&
            (identical(other.dates, dates) ||
                const DeepCollectionEquality().equals(other.dates, dates)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(courtId) ^
      const DeepCollectionEquality().hash(dates) ^
      runtimeType.hashCode;
}

extension $AutoMatchApplyDtoExtension on AutoMatchApplyDto {
  AutoMatchApplyDto copyWith({String? courtId, List<String>? dates}) {
    return AutoMatchApplyDto(
        courtId: courtId ?? this.courtId, dates: dates ?? this.dates);
  }

  AutoMatchApplyDto copyWithWrapped(
      {Wrapped<String>? courtId, Wrapped<List<String>?>? dates}) {
    return AutoMatchApplyDto(
        courtId: (courtId != null ? courtId.value : this.courtId),
        dates: (dates != null ? dates.value : this.dates));
  }
}

@JsonSerializable(explicitToJson: true)
class AccountReqDto {
  const AccountReqDto({
    required this.businessInfoId,
    required this.bank,
    required this.accountNumber,
    this.files,
  });

  factory AccountReqDto.fromJson(Map<String, dynamic> json) =>
      _$AccountReqDtoFromJson(json);

  static const toJsonFactory = _$AccountReqDtoToJson;
  Map<String, dynamic> toJson() => _$AccountReqDtoToJson(this);

  @JsonKey(name: 'businessInfoId')
  final String businessInfoId;
  @JsonKey(name: 'bank')
  final String bank;
  @JsonKey(name: 'accountNumber')
  final String accountNumber;
  @JsonKey(name: 'files', defaultValue: <String>[])
  final List<String>? files;
  static const fromJsonFactory = _$AccountReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AccountReqDto &&
            (identical(other.businessInfoId, businessInfoId) ||
                const DeepCollectionEquality()
                    .equals(other.businessInfoId, businessInfoId)) &&
            (identical(other.bank, bank) ||
                const DeepCollectionEquality().equals(other.bank, bank)) &&
            (identical(other.accountNumber, accountNumber) ||
                const DeepCollectionEquality()
                    .equals(other.accountNumber, accountNumber)) &&
            (identical(other.files, files) ||
                const DeepCollectionEquality().equals(other.files, files)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(businessInfoId) ^
      const DeepCollectionEquality().hash(bank) ^
      const DeepCollectionEquality().hash(accountNumber) ^
      const DeepCollectionEquality().hash(files) ^
      runtimeType.hashCode;
}

extension $AccountReqDtoExtension on AccountReqDto {
  AccountReqDto copyWith(
      {String? businessInfoId,
      String? bank,
      String? accountNumber,
      List<String>? files}) {
    return AccountReqDto(
        businessInfoId: businessInfoId ?? this.businessInfoId,
        bank: bank ?? this.bank,
        accountNumber: accountNumber ?? this.accountNumber,
        files: files ?? this.files);
  }

  AccountReqDto copyWithWrapped(
      {Wrapped<String>? businessInfoId,
      Wrapped<String>? bank,
      Wrapped<String>? accountNumber,
      Wrapped<List<String>?>? files}) {
    return AccountReqDto(
        businessInfoId: (businessInfoId != null
            ? businessInfoId.value
            : this.businessInfoId),
        bank: (bank != null ? bank.value : this.bank),
        accountNumber:
            (accountNumber != null ? accountNumber.value : this.accountNumber),
        files: (files != null ? files.value : this.files));
  }
}

@JsonSerializable(explicitToJson: true)
class LocationUpdateDto {
  const LocationUpdateDto({
    this.maxDistance,
    this.location,
  });

  factory LocationUpdateDto.fromJson(Map<String, dynamic> json) =>
      _$LocationUpdateDtoFromJson(json);

  static const toJsonFactory = _$LocationUpdateDtoToJson;
  Map<String, dynamic> toJson() => _$LocationUpdateDtoToJson(this);

  @JsonKey(name: 'maxDistance')
  final double? maxDistance;
  @JsonKey(name: 'location')
  final Point? location;
  static const fromJsonFactory = _$LocationUpdateDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LocationUpdateDto &&
            (identical(other.maxDistance, maxDistance) ||
                const DeepCollectionEquality()
                    .equals(other.maxDistance, maxDistance)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(maxDistance) ^
      const DeepCollectionEquality().hash(location) ^
      runtimeType.hashCode;
}

extension $LocationUpdateDtoExtension on LocationUpdateDto {
  LocationUpdateDto copyWith({double? maxDistance, Point? location}) {
    return LocationUpdateDto(
        maxDistance: maxDistance ?? this.maxDistance,
        location: location ?? this.location);
  }

  LocationUpdateDto copyWithWrapped(
      {Wrapped<double?>? maxDistance, Wrapped<Point?>? location}) {
    return LocationUpdateDto(
        maxDistance:
            (maxDistance != null ? maxDistance.value : this.maxDistance),
        location: (location != null ? location.value : this.location));
  }
}

@JsonSerializable(explicitToJson: true)
class ApiResultListCourtResDto {
  const ApiResultListCourtResDto({
    this.isSuccess,
    this.code,
    this.message,
    this.result,
  });

  factory ApiResultListCourtResDto.fromJson(Map<String, dynamic> json) =>
      _$ApiResultListCourtResDtoFromJson(json);

  static const toJsonFactory = _$ApiResultListCourtResDtoToJson;
  Map<String, dynamic> toJson() => _$ApiResultListCourtResDtoToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'result', defaultValue: <CourtResDto>[])
  final List<CourtResDto>? result;
  static const fromJsonFactory = _$ApiResultListCourtResDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiResultListCourtResDto &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(result) ^
      runtimeType.hashCode;
}

extension $ApiResultListCourtResDtoExtension on ApiResultListCourtResDto {
  ApiResultListCourtResDto copyWith(
      {bool? isSuccess,
      String? code,
      String? message,
      List<CourtResDto>? result}) {
    return ApiResultListCourtResDto(
        isSuccess: isSuccess ?? this.isSuccess,
        code: code ?? this.code,
        message: message ?? this.message,
        result: result ?? this.result);
  }

  ApiResultListCourtResDto copyWithWrapped(
      {Wrapped<bool?>? isSuccess,
      Wrapped<String?>? code,
      Wrapped<String?>? message,
      Wrapped<List<CourtResDto>?>? result}) {
    return ApiResultListCourtResDto(
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        code: (code != null ? code.value : this.code),
        message: (message != null ? message.value : this.message),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class ApiResultListMatchResultResDto {
  const ApiResultListMatchResultResDto({
    this.isSuccess,
    this.code,
    this.message,
    this.result,
  });

  factory ApiResultListMatchResultResDto.fromJson(Map<String, dynamic> json) =>
      _$ApiResultListMatchResultResDtoFromJson(json);

  static const toJsonFactory = _$ApiResultListMatchResultResDtoToJson;
  Map<String, dynamic> toJson() => _$ApiResultListMatchResultResDtoToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'result', defaultValue: <MatchResultResDto>[])
  final List<MatchResultResDto>? result;
  static const fromJsonFactory = _$ApiResultListMatchResultResDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiResultListMatchResultResDto &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(result) ^
      runtimeType.hashCode;
}

extension $ApiResultListMatchResultResDtoExtension
    on ApiResultListMatchResultResDto {
  ApiResultListMatchResultResDto copyWith(
      {bool? isSuccess,
      String? code,
      String? message,
      List<MatchResultResDto>? result}) {
    return ApiResultListMatchResultResDto(
        isSuccess: isSuccess ?? this.isSuccess,
        code: code ?? this.code,
        message: message ?? this.message,
        result: result ?? this.result);
  }

  ApiResultListMatchResultResDto copyWithWrapped(
      {Wrapped<bool?>? isSuccess,
      Wrapped<String?>? code,
      Wrapped<String?>? message,
      Wrapped<List<MatchResultResDto>?>? result}) {
    return ApiResultListMatchResultResDto(
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        code: (code != null ? code.value : this.code),
        message: (message != null ? message.value : this.message),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class MatchDetails {
  const MatchDetails({
    this.startTime,
    this.endTime,
    this.location,
    this.courtId,
    this.courtType,
  });

  factory MatchDetails.fromJson(Map<String, dynamic> json) =>
      _$MatchDetailsFromJson(json);

  static const toJsonFactory = _$MatchDetailsToJson;
  Map<String, dynamic> toJson() => _$MatchDetailsToJson(this);

  @JsonKey(name: 'startTime')
  final DateTime? startTime;
  @JsonKey(name: 'endTime')
  final DateTime? endTime;
  @JsonKey(name: 'location')
  final Point? location;
  @JsonKey(name: 'courtId')
  final String? courtId;
  @JsonKey(name: 'courtType')
  final String? courtType;
  static const fromJsonFactory = _$MatchDetailsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MatchDetails &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality()
                    .equals(other.endTime, endTime)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.courtId, courtId) ||
                const DeepCollectionEquality()
                    .equals(other.courtId, courtId)) &&
            (identical(other.courtType, courtType) ||
                const DeepCollectionEquality()
                    .equals(other.courtType, courtType)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(courtId) ^
      const DeepCollectionEquality().hash(courtType) ^
      runtimeType.hashCode;
}

extension $MatchDetailsExtension on MatchDetails {
  MatchDetails copyWith(
      {DateTime? startTime,
      DateTime? endTime,
      Point? location,
      String? courtId,
      String? courtType}) {
    return MatchDetails(
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        location: location ?? this.location,
        courtId: courtId ?? this.courtId,
        courtType: courtType ?? this.courtType);
  }

  MatchDetails copyWithWrapped(
      {Wrapped<DateTime?>? startTime,
      Wrapped<DateTime?>? endTime,
      Wrapped<Point?>? location,
      Wrapped<String?>? courtId,
      Wrapped<String?>? courtType}) {
    return MatchDetails(
        startTime: (startTime != null ? startTime.value : this.startTime),
        endTime: (endTime != null ? endTime.value : this.endTime),
        location: (location != null ? location.value : this.location),
        courtId: (courtId != null ? courtId.value : this.courtId),
        courtType: (courtType != null ? courtType.value : this.courtType));
  }
}

@JsonSerializable(explicitToJson: true)
class MatchResultResDto {
  const MatchResultResDto({
    this.id,
    this.opponent,
    this.matchDetails,
    this.court,
    this.status,
  });

  factory MatchResultResDto.fromJson(Map<String, dynamic> json) =>
      _$MatchResultResDtoFromJson(json);

  static const toJsonFactory = _$MatchResultResDtoToJson;
  Map<String, dynamic> toJson() => _$MatchResultResDtoToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'opponent')
  final UserResDto? opponent;
  @JsonKey(name: 'matchDetails')
  final MatchDetails? matchDetails;
  @JsonKey(name: 'court')
  final CourtResDto? court;
  @JsonKey(
    name: 'status',
    toJson: matchResultResDtoStatusNullableToJson,
    fromJson: matchResultResDtoStatusNullableFromJson,
  )
  final enums.MatchResultResDtoStatus? status;
  static const fromJsonFactory = _$MatchResultResDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MatchResultResDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.opponent, opponent) ||
                const DeepCollectionEquality()
                    .equals(other.opponent, opponent)) &&
            (identical(other.matchDetails, matchDetails) ||
                const DeepCollectionEquality()
                    .equals(other.matchDetails, matchDetails)) &&
            (identical(other.court, court) ||
                const DeepCollectionEquality().equals(other.court, court)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(opponent) ^
      const DeepCollectionEquality().hash(matchDetails) ^
      const DeepCollectionEquality().hash(court) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $MatchResultResDtoExtension on MatchResultResDto {
  MatchResultResDto copyWith(
      {String? id,
      UserResDto? opponent,
      MatchDetails? matchDetails,
      CourtResDto? court,
      enums.MatchResultResDtoStatus? status}) {
    return MatchResultResDto(
        id: id ?? this.id,
        opponent: opponent ?? this.opponent,
        matchDetails: matchDetails ?? this.matchDetails,
        court: court ?? this.court,
        status: status ?? this.status);
  }

  MatchResultResDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<UserResDto?>? opponent,
      Wrapped<MatchDetails?>? matchDetails,
      Wrapped<CourtResDto?>? court,
      Wrapped<enums.MatchResultResDtoStatus?>? status}) {
    return MatchResultResDto(
        id: (id != null ? id.value : this.id),
        opponent: (opponent != null ? opponent.value : this.opponent),
        matchDetails:
            (matchDetails != null ? matchDetails.value : this.matchDetails),
        court: (court != null ? court.value : this.court),
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class UserResDto {
  const UserResDto({
    this.id,
    this.name,
    this.emailId,
    this.age,
    this.gender,
    this.location,
    this.maxDistance,
    this.dislikedCourts,
    this.ntrp,
    this.mannerScore,
    this.clubIds,
    this.emailVerified,
  });

  factory UserResDto.fromJson(Map<String, dynamic> json) =>
      _$UserResDtoFromJson(json);

  static const toJsonFactory = _$UserResDtoToJson;
  Map<String, dynamic> toJson() => _$UserResDtoToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'emailId')
  final String? emailId;
  @JsonKey(name: 'age')
  final int? age;
  @JsonKey(name: 'gender')
  final String? gender;
  @JsonKey(name: 'location')
  final Point? location;
  @JsonKey(name: 'maxDistance')
  final double? maxDistance;
  @JsonKey(name: 'dislikedCourts', defaultValue: <String>[])
  final List<String>? dislikedCourts;
  @JsonKey(name: 'ntrp')
  final double? ntrp;
  @JsonKey(name: 'mannerScore')
  final double? mannerScore;
  @JsonKey(name: 'clubIds', defaultValue: <String>[])
  final List<String>? clubIds;
  @JsonKey(name: 'emailVerified')
  final bool? emailVerified;
  static const fromJsonFactory = _$UserResDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserResDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.emailId, emailId) ||
                const DeepCollectionEquality()
                    .equals(other.emailId, emailId)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.maxDistance, maxDistance) ||
                const DeepCollectionEquality()
                    .equals(other.maxDistance, maxDistance)) &&
            (identical(other.dislikedCourts, dislikedCourts) ||
                const DeepCollectionEquality()
                    .equals(other.dislikedCourts, dislikedCourts)) &&
            (identical(other.ntrp, ntrp) ||
                const DeepCollectionEquality().equals(other.ntrp, ntrp)) &&
            (identical(other.mannerScore, mannerScore) ||
                const DeepCollectionEquality()
                    .equals(other.mannerScore, mannerScore)) &&
            (identical(other.clubIds, clubIds) ||
                const DeepCollectionEquality()
                    .equals(other.clubIds, clubIds)) &&
            (identical(other.emailVerified, emailVerified) ||
                const DeepCollectionEquality()
                    .equals(other.emailVerified, emailVerified)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(emailId) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(maxDistance) ^
      const DeepCollectionEquality().hash(dislikedCourts) ^
      const DeepCollectionEquality().hash(ntrp) ^
      const DeepCollectionEquality().hash(mannerScore) ^
      const DeepCollectionEquality().hash(clubIds) ^
      const DeepCollectionEquality().hash(emailVerified) ^
      runtimeType.hashCode;
}

extension $UserResDtoExtension on UserResDto {
  UserResDto copyWith(
      {String? id,
      String? name,
      String? emailId,
      int? age,
      String? gender,
      Point? location,
      double? maxDistance,
      List<String>? dislikedCourts,
      double? ntrp,
      double? mannerScore,
      List<String>? clubIds,
      bool? emailVerified}) {
    return UserResDto(
        id: id ?? this.id,
        name: name ?? this.name,
        emailId: emailId ?? this.emailId,
        age: age ?? this.age,
        gender: gender ?? this.gender,
        location: location ?? this.location,
        maxDistance: maxDistance ?? this.maxDistance,
        dislikedCourts: dislikedCourts ?? this.dislikedCourts,
        ntrp: ntrp ?? this.ntrp,
        mannerScore: mannerScore ?? this.mannerScore,
        clubIds: clubIds ?? this.clubIds,
        emailVerified: emailVerified ?? this.emailVerified);
  }

  UserResDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? emailId,
      Wrapped<int?>? age,
      Wrapped<String?>? gender,
      Wrapped<Point?>? location,
      Wrapped<double?>? maxDistance,
      Wrapped<List<String>?>? dislikedCourts,
      Wrapped<double?>? ntrp,
      Wrapped<double?>? mannerScore,
      Wrapped<List<String>?>? clubIds,
      Wrapped<bool?>? emailVerified}) {
    return UserResDto(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        emailId: (emailId != null ? emailId.value : this.emailId),
        age: (age != null ? age.value : this.age),
        gender: (gender != null ? gender.value : this.gender),
        location: (location != null ? location.value : this.location),
        maxDistance:
            (maxDistance != null ? maxDistance.value : this.maxDistance),
        dislikedCourts: (dislikedCourts != null
            ? dislikedCourts.value
            : this.dislikedCourts),
        ntrp: (ntrp != null ? ntrp.value : this.ntrp),
        mannerScore:
            (mannerScore != null ? mannerScore.value : this.mannerScore),
        clubIds: (clubIds != null ? clubIds.value : this.clubIds),
        emailVerified:
            (emailVerified != null ? emailVerified.value : this.emailVerified));
  }
}

@JsonSerializable(explicitToJson: true)
class ApiMatchRequestPut$RequestBody {
  const ApiMatchRequestPut$RequestBody({
    this.matchRequestDto,
    this.userId,
  });

  factory ApiMatchRequestPut$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$ApiMatchRequestPut$RequestBodyFromJson(json);

  static const toJsonFactory = _$ApiMatchRequestPut$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$ApiMatchRequestPut$RequestBodyToJson(this);

  @JsonKey(name: 'matchRequestDto')
  final MatchRequestDto? matchRequestDto;
  @JsonKey(name: 'userId')
  final String? userId;
  static const fromJsonFactory = _$ApiMatchRequestPut$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiMatchRequestPut$RequestBody &&
            (identical(other.matchRequestDto, matchRequestDto) ||
                const DeepCollectionEquality()
                    .equals(other.matchRequestDto, matchRequestDto)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(matchRequestDto) ^
      const DeepCollectionEquality().hash(userId) ^
      runtimeType.hashCode;
}

extension $ApiMatchRequestPut$RequestBodyExtension
    on ApiMatchRequestPut$RequestBody {
  ApiMatchRequestPut$RequestBody copyWith(
      {MatchRequestDto? matchRequestDto, String? userId}) {
    return ApiMatchRequestPut$RequestBody(
        matchRequestDto: matchRequestDto ?? this.matchRequestDto,
        userId: userId ?? this.userId);
  }

  ApiMatchRequestPut$RequestBody copyWithWrapped(
      {Wrapped<MatchRequestDto?>? matchRequestDto, Wrapped<String?>? userId}) {
    return ApiMatchRequestPut$RequestBody(
        matchRequestDto: (matchRequestDto != null
            ? matchRequestDto.value
            : this.matchRequestDto),
        userId: (userId != null ? userId.value : this.userId));
  }
}

@JsonSerializable(explicitToJson: true)
class ApiMatchResultsMatchResultIdFeedbackPost$RequestBody {
  const ApiMatchResultsMatchResultIdFeedbackPost$RequestBody({
    this.feedbackReqDto,
    this.userId,
  });

  factory ApiMatchResultsMatchResultIdFeedbackPost$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$ApiMatchResultsMatchResultIdFeedbackPost$RequestBodyFromJson(json);

  static const toJsonFactory =
      _$ApiMatchResultsMatchResultIdFeedbackPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$ApiMatchResultsMatchResultIdFeedbackPost$RequestBodyToJson(this);

  @JsonKey(name: 'feedbackReqDto')
  final FeedbackReqDto? feedbackReqDto;
  @JsonKey(name: 'userId')
  final String? userId;
  static const fromJsonFactory =
      _$ApiMatchResultsMatchResultIdFeedbackPost$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiMatchResultsMatchResultIdFeedbackPost$RequestBody &&
            (identical(other.feedbackReqDto, feedbackReqDto) ||
                const DeepCollectionEquality()
                    .equals(other.feedbackReqDto, feedbackReqDto)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(feedbackReqDto) ^
      const DeepCollectionEquality().hash(userId) ^
      runtimeType.hashCode;
}

extension $ApiMatchResultsMatchResultIdFeedbackPost$RequestBodyExtension
    on ApiMatchResultsMatchResultIdFeedbackPost$RequestBody {
  ApiMatchResultsMatchResultIdFeedbackPost$RequestBody copyWith(
      {FeedbackReqDto? feedbackReqDto, String? userId}) {
    return ApiMatchResultsMatchResultIdFeedbackPost$RequestBody(
        feedbackReqDto: feedbackReqDto ?? this.feedbackReqDto,
        userId: userId ?? this.userId);
  }

  ApiMatchResultsMatchResultIdFeedbackPost$RequestBody copyWithWrapped(
      {Wrapped<FeedbackReqDto?>? feedbackReqDto, Wrapped<String?>? userId}) {
    return ApiMatchResultsMatchResultIdFeedbackPost$RequestBody(
        feedbackReqDto: (feedbackReqDto != null
            ? feedbackReqDto.value
            : this.feedbackReqDto),
        userId: (userId != null ? userId.value : this.userId));
  }
}

@JsonSerializable(explicitToJson: true)
class ApiFileUploadPost$RequestBody {
  const ApiFileUploadPost$RequestBody({
    required this.images,
  });

  factory ApiFileUploadPost$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$ApiFileUploadPost$RequestBodyFromJson(json);

  static const toJsonFactory = _$ApiFileUploadPost$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$ApiFileUploadPost$RequestBodyToJson(this);

  @JsonKey(name: 'images', defaultValue: <String>[])
  final List<String> images;
  static const fromJsonFactory = _$ApiFileUploadPost$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiFileUploadPost$RequestBody &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(images) ^ runtimeType.hashCode;
}

extension $ApiFileUploadPost$RequestBodyExtension
    on ApiFileUploadPost$RequestBody {
  ApiFileUploadPost$RequestBody copyWith({List<String>? images}) {
    return ApiFileUploadPost$RequestBody(images: images ?? this.images);
  }

  ApiFileUploadPost$RequestBody copyWithWrapped(
      {Wrapped<List<String>>? images}) {
    return ApiFileUploadPost$RequestBody(
        images: (images != null ? images.value : this.images));
  }
}

String? matchRequestDtoObjectiveNullableToJson(
    enums.MatchRequestDtoObjective? matchRequestDtoObjective) {
  return matchRequestDtoObjective?.value;
}

String? matchRequestDtoObjectiveToJson(
    enums.MatchRequestDtoObjective matchRequestDtoObjective) {
  return matchRequestDtoObjective.value;
}

enums.MatchRequestDtoObjective matchRequestDtoObjectiveFromJson(
  Object? matchRequestDtoObjective, [
  enums.MatchRequestDtoObjective? defaultValue,
]) {
  return enums.MatchRequestDtoObjective.values
          .firstWhereOrNull((e) => e.value == matchRequestDtoObjective) ??
      defaultValue ??
      enums.MatchRequestDtoObjective.swaggerGeneratedUnknown;
}

enums.MatchRequestDtoObjective? matchRequestDtoObjectiveNullableFromJson(
  Object? matchRequestDtoObjective, [
  enums.MatchRequestDtoObjective? defaultValue,
]) {
  if (matchRequestDtoObjective == null) {
    return null;
  }
  return enums.MatchRequestDtoObjective.values
          .firstWhereOrNull((e) => e.value == matchRequestDtoObjective) ??
      defaultValue;
}

String matchRequestDtoObjectiveExplodedListToJson(
    List<enums.MatchRequestDtoObjective>? matchRequestDtoObjective) {
  return matchRequestDtoObjective?.map((e) => e.value!).join(',') ?? '';
}

List<String> matchRequestDtoObjectiveListToJson(
    List<enums.MatchRequestDtoObjective>? matchRequestDtoObjective) {
  if (matchRequestDtoObjective == null) {
    return [];
  }

  return matchRequestDtoObjective.map((e) => e.value!).toList();
}

List<enums.MatchRequestDtoObjective> matchRequestDtoObjectiveListFromJson(
  List? matchRequestDtoObjective, [
  List<enums.MatchRequestDtoObjective>? defaultValue,
]) {
  if (matchRequestDtoObjective == null) {
    return defaultValue ?? [];
  }

  return matchRequestDtoObjective
      .map((e) => matchRequestDtoObjectiveFromJson(e.toString()))
      .toList();
}

List<enums.MatchRequestDtoObjective>?
    matchRequestDtoObjectiveNullableListFromJson(
  List? matchRequestDtoObjective, [
  List<enums.MatchRequestDtoObjective>? defaultValue,
]) {
  if (matchRequestDtoObjective == null) {
    return defaultValue;
  }

  return matchRequestDtoObjective
      .map((e) => matchRequestDtoObjectiveFromJson(e.toString()))
      .toList();
}

String? matchResponseDtoObjectiveNullableToJson(
    enums.MatchResponseDtoObjective? matchResponseDtoObjective) {
  return matchResponseDtoObjective?.value;
}

String? matchResponseDtoObjectiveToJson(
    enums.MatchResponseDtoObjective matchResponseDtoObjective) {
  return matchResponseDtoObjective.value;
}

enums.MatchResponseDtoObjective matchResponseDtoObjectiveFromJson(
  Object? matchResponseDtoObjective, [
  enums.MatchResponseDtoObjective? defaultValue,
]) {
  return enums.MatchResponseDtoObjective.values
          .firstWhereOrNull((e) => e.value == matchResponseDtoObjective) ??
      defaultValue ??
      enums.MatchResponseDtoObjective.swaggerGeneratedUnknown;
}

enums.MatchResponseDtoObjective? matchResponseDtoObjectiveNullableFromJson(
  Object? matchResponseDtoObjective, [
  enums.MatchResponseDtoObjective? defaultValue,
]) {
  if (matchResponseDtoObjective == null) {
    return null;
  }
  return enums.MatchResponseDtoObjective.values
          .firstWhereOrNull((e) => e.value == matchResponseDtoObjective) ??
      defaultValue;
}

String matchResponseDtoObjectiveExplodedListToJson(
    List<enums.MatchResponseDtoObjective>? matchResponseDtoObjective) {
  return matchResponseDtoObjective?.map((e) => e.value!).join(',') ?? '';
}

List<String> matchResponseDtoObjectiveListToJson(
    List<enums.MatchResponseDtoObjective>? matchResponseDtoObjective) {
  if (matchResponseDtoObjective == null) {
    return [];
  }

  return matchResponseDtoObjective.map((e) => e.value!).toList();
}

List<enums.MatchResponseDtoObjective> matchResponseDtoObjectiveListFromJson(
  List? matchResponseDtoObjective, [
  List<enums.MatchResponseDtoObjective>? defaultValue,
]) {
  if (matchResponseDtoObjective == null) {
    return defaultValue ?? [];
  }

  return matchResponseDtoObjective
      .map((e) => matchResponseDtoObjectiveFromJson(e.toString()))
      .toList();
}

List<enums.MatchResponseDtoObjective>?
    matchResponseDtoObjectiveNullableListFromJson(
  List? matchResponseDtoObjective, [
  List<enums.MatchResponseDtoObjective>? defaultValue,
]) {
  if (matchResponseDtoObjective == null) {
    return defaultValue;
  }

  return matchResponseDtoObjective
      .map((e) => matchResponseDtoObjectiveFromJson(e.toString()))
      .toList();
}

String? feedbackReqDtoFeedbackNullableToJson(
    enums.FeedbackReqDtoFeedback? feedbackReqDtoFeedback) {
  return feedbackReqDtoFeedback?.value;
}

String? feedbackReqDtoFeedbackToJson(
    enums.FeedbackReqDtoFeedback feedbackReqDtoFeedback) {
  return feedbackReqDtoFeedback.value;
}

enums.FeedbackReqDtoFeedback feedbackReqDtoFeedbackFromJson(
  Object? feedbackReqDtoFeedback, [
  enums.FeedbackReqDtoFeedback? defaultValue,
]) {
  return enums.FeedbackReqDtoFeedback.values
          .firstWhereOrNull((e) => e.value == feedbackReqDtoFeedback) ??
      defaultValue ??
      enums.FeedbackReqDtoFeedback.swaggerGeneratedUnknown;
}

enums.FeedbackReqDtoFeedback? feedbackReqDtoFeedbackNullableFromJson(
  Object? feedbackReqDtoFeedback, [
  enums.FeedbackReqDtoFeedback? defaultValue,
]) {
  if (feedbackReqDtoFeedback == null) {
    return null;
  }
  return enums.FeedbackReqDtoFeedback.values
          .firstWhereOrNull((e) => e.value == feedbackReqDtoFeedback) ??
      defaultValue;
}

String feedbackReqDtoFeedbackExplodedListToJson(
    List<enums.FeedbackReqDtoFeedback>? feedbackReqDtoFeedback) {
  return feedbackReqDtoFeedback?.map((e) => e.value!).join(',') ?? '';
}

List<String> feedbackReqDtoFeedbackListToJson(
    List<enums.FeedbackReqDtoFeedback>? feedbackReqDtoFeedback) {
  if (feedbackReqDtoFeedback == null) {
    return [];
  }

  return feedbackReqDtoFeedback.map((e) => e.value!).toList();
}

List<enums.FeedbackReqDtoFeedback> feedbackReqDtoFeedbackListFromJson(
  List? feedbackReqDtoFeedback, [
  List<enums.FeedbackReqDtoFeedback>? defaultValue,
]) {
  if (feedbackReqDtoFeedback == null) {
    return defaultValue ?? [];
  }

  return feedbackReqDtoFeedback
      .map((e) => feedbackReqDtoFeedbackFromJson(e.toString()))
      .toList();
}

List<enums.FeedbackReqDtoFeedback>? feedbackReqDtoFeedbackNullableListFromJson(
  List? feedbackReqDtoFeedback, [
  List<enums.FeedbackReqDtoFeedback>? defaultValue,
]) {
  if (feedbackReqDtoFeedback == null) {
    return defaultValue;
  }

  return feedbackReqDtoFeedback
      .map((e) => feedbackReqDtoFeedbackFromJson(e.toString()))
      .toList();
}

String? gameCreationDtoGameStatusNullableToJson(
    enums.GameCreationDtoGameStatus? gameCreationDtoGameStatus) {
  return gameCreationDtoGameStatus?.value;
}

String? gameCreationDtoGameStatusToJson(
    enums.GameCreationDtoGameStatus gameCreationDtoGameStatus) {
  return gameCreationDtoGameStatus.value;
}

enums.GameCreationDtoGameStatus gameCreationDtoGameStatusFromJson(
  Object? gameCreationDtoGameStatus, [
  enums.GameCreationDtoGameStatus? defaultValue,
]) {
  return enums.GameCreationDtoGameStatus.values
          .firstWhereOrNull((e) => e.value == gameCreationDtoGameStatus) ??
      defaultValue ??
      enums.GameCreationDtoGameStatus.swaggerGeneratedUnknown;
}

enums.GameCreationDtoGameStatus? gameCreationDtoGameStatusNullableFromJson(
  Object? gameCreationDtoGameStatus, [
  enums.GameCreationDtoGameStatus? defaultValue,
]) {
  if (gameCreationDtoGameStatus == null) {
    return null;
  }
  return enums.GameCreationDtoGameStatus.values
          .firstWhereOrNull((e) => e.value == gameCreationDtoGameStatus) ??
      defaultValue;
}

String gameCreationDtoGameStatusExplodedListToJson(
    List<enums.GameCreationDtoGameStatus>? gameCreationDtoGameStatus) {
  return gameCreationDtoGameStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> gameCreationDtoGameStatusListToJson(
    List<enums.GameCreationDtoGameStatus>? gameCreationDtoGameStatus) {
  if (gameCreationDtoGameStatus == null) {
    return [];
  }

  return gameCreationDtoGameStatus.map((e) => e.value!).toList();
}

List<enums.GameCreationDtoGameStatus> gameCreationDtoGameStatusListFromJson(
  List? gameCreationDtoGameStatus, [
  List<enums.GameCreationDtoGameStatus>? defaultValue,
]) {
  if (gameCreationDtoGameStatus == null) {
    return defaultValue ?? [];
  }

  return gameCreationDtoGameStatus
      .map((e) => gameCreationDtoGameStatusFromJson(e.toString()))
      .toList();
}

List<enums.GameCreationDtoGameStatus>?
    gameCreationDtoGameStatusNullableListFromJson(
  List? gameCreationDtoGameStatus, [
  List<enums.GameCreationDtoGameStatus>? defaultValue,
]) {
  if (gameCreationDtoGameStatus == null) {
    return defaultValue;
  }

  return gameCreationDtoGameStatus
      .map((e) => gameCreationDtoGameStatusFromJson(e.toString()))
      .toList();
}

String? businessInfoResDtoRegistrationStatusNullableToJson(
    enums.BusinessInfoResDtoRegistrationStatus?
        businessInfoResDtoRegistrationStatus) {
  return businessInfoResDtoRegistrationStatus?.value;
}

String? businessInfoResDtoRegistrationStatusToJson(
    enums.BusinessInfoResDtoRegistrationStatus
        businessInfoResDtoRegistrationStatus) {
  return businessInfoResDtoRegistrationStatus.value;
}

enums.BusinessInfoResDtoRegistrationStatus
    businessInfoResDtoRegistrationStatusFromJson(
  Object? businessInfoResDtoRegistrationStatus, [
  enums.BusinessInfoResDtoRegistrationStatus? defaultValue,
]) {
  return enums.BusinessInfoResDtoRegistrationStatus.values.firstWhereOrNull(
          (e) => e.value == businessInfoResDtoRegistrationStatus) ??
      defaultValue ??
      enums.BusinessInfoResDtoRegistrationStatus.swaggerGeneratedUnknown;
}

enums.BusinessInfoResDtoRegistrationStatus?
    businessInfoResDtoRegistrationStatusNullableFromJson(
  Object? businessInfoResDtoRegistrationStatus, [
  enums.BusinessInfoResDtoRegistrationStatus? defaultValue,
]) {
  if (businessInfoResDtoRegistrationStatus == null) {
    return null;
  }
  return enums.BusinessInfoResDtoRegistrationStatus.values.firstWhereOrNull(
          (e) => e.value == businessInfoResDtoRegistrationStatus) ??
      defaultValue;
}

String businessInfoResDtoRegistrationStatusExplodedListToJson(
    List<enums.BusinessInfoResDtoRegistrationStatus>?
        businessInfoResDtoRegistrationStatus) {
  return businessInfoResDtoRegistrationStatus?.map((e) => e.value!).join(',') ??
      '';
}

List<String> businessInfoResDtoRegistrationStatusListToJson(
    List<enums.BusinessInfoResDtoRegistrationStatus>?
        businessInfoResDtoRegistrationStatus) {
  if (businessInfoResDtoRegistrationStatus == null) {
    return [];
  }

  return businessInfoResDtoRegistrationStatus.map((e) => e.value!).toList();
}

List<enums.BusinessInfoResDtoRegistrationStatus>
    businessInfoResDtoRegistrationStatusListFromJson(
  List? businessInfoResDtoRegistrationStatus, [
  List<enums.BusinessInfoResDtoRegistrationStatus>? defaultValue,
]) {
  if (businessInfoResDtoRegistrationStatus == null) {
    return defaultValue ?? [];
  }

  return businessInfoResDtoRegistrationStatus
      .map((e) => businessInfoResDtoRegistrationStatusFromJson(e.toString()))
      .toList();
}

List<enums.BusinessInfoResDtoRegistrationStatus>?
    businessInfoResDtoRegistrationStatusNullableListFromJson(
  List? businessInfoResDtoRegistrationStatus, [
  List<enums.BusinessInfoResDtoRegistrationStatus>? defaultValue,
]) {
  if (businessInfoResDtoRegistrationStatus == null) {
    return defaultValue;
  }

  return businessInfoResDtoRegistrationStatus
      .map((e) => businessInfoResDtoRegistrationStatusFromJson(e.toString()))
      .toList();
}

String? courtHoursDtoDayOfWeekNullableToJson(
    enums.CourtHoursDtoDayOfWeek? courtHoursDtoDayOfWeek) {
  return courtHoursDtoDayOfWeek?.value;
}

String? courtHoursDtoDayOfWeekToJson(
    enums.CourtHoursDtoDayOfWeek courtHoursDtoDayOfWeek) {
  return courtHoursDtoDayOfWeek.value;
}

enums.CourtHoursDtoDayOfWeek courtHoursDtoDayOfWeekFromJson(
  Object? courtHoursDtoDayOfWeek, [
  enums.CourtHoursDtoDayOfWeek? defaultValue,
]) {
  return enums.CourtHoursDtoDayOfWeek.values
          .firstWhereOrNull((e) => e.value == courtHoursDtoDayOfWeek) ??
      defaultValue ??
      enums.CourtHoursDtoDayOfWeek.swaggerGeneratedUnknown;
}

enums.CourtHoursDtoDayOfWeek? courtHoursDtoDayOfWeekNullableFromJson(
  Object? courtHoursDtoDayOfWeek, [
  enums.CourtHoursDtoDayOfWeek? defaultValue,
]) {
  if (courtHoursDtoDayOfWeek == null) {
    return null;
  }
  return enums.CourtHoursDtoDayOfWeek.values
          .firstWhereOrNull((e) => e.value == courtHoursDtoDayOfWeek) ??
      defaultValue;
}

String courtHoursDtoDayOfWeekExplodedListToJson(
    List<enums.CourtHoursDtoDayOfWeek>? courtHoursDtoDayOfWeek) {
  return courtHoursDtoDayOfWeek?.map((e) => e.value!).join(',') ?? '';
}

List<String> courtHoursDtoDayOfWeekListToJson(
    List<enums.CourtHoursDtoDayOfWeek>? courtHoursDtoDayOfWeek) {
  if (courtHoursDtoDayOfWeek == null) {
    return [];
  }

  return courtHoursDtoDayOfWeek.map((e) => e.value!).toList();
}

List<enums.CourtHoursDtoDayOfWeek> courtHoursDtoDayOfWeekListFromJson(
  List? courtHoursDtoDayOfWeek, [
  List<enums.CourtHoursDtoDayOfWeek>? defaultValue,
]) {
  if (courtHoursDtoDayOfWeek == null) {
    return defaultValue ?? [];
  }

  return courtHoursDtoDayOfWeek
      .map((e) => courtHoursDtoDayOfWeekFromJson(e.toString()))
      .toList();
}

List<enums.CourtHoursDtoDayOfWeek>? courtHoursDtoDayOfWeekNullableListFromJson(
  List? courtHoursDtoDayOfWeek, [
  List<enums.CourtHoursDtoDayOfWeek>? defaultValue,
]) {
  if (courtHoursDtoDayOfWeek == null) {
    return defaultValue;
  }

  return courtHoursDtoDayOfWeek
      .map((e) => courtHoursDtoDayOfWeekFromJson(e.toString()))
      .toList();
}

String? courtReqDtoCourtTypeNullableToJson(
    enums.CourtReqDtoCourtType? courtReqDtoCourtType) {
  return courtReqDtoCourtType?.value;
}

String? courtReqDtoCourtTypeToJson(
    enums.CourtReqDtoCourtType courtReqDtoCourtType) {
  return courtReqDtoCourtType.value;
}

enums.CourtReqDtoCourtType courtReqDtoCourtTypeFromJson(
  Object? courtReqDtoCourtType, [
  enums.CourtReqDtoCourtType? defaultValue,
]) {
  return enums.CourtReqDtoCourtType.values
          .firstWhereOrNull((e) => e.value == courtReqDtoCourtType) ??
      defaultValue ??
      enums.CourtReqDtoCourtType.swaggerGeneratedUnknown;
}

enums.CourtReqDtoCourtType? courtReqDtoCourtTypeNullableFromJson(
  Object? courtReqDtoCourtType, [
  enums.CourtReqDtoCourtType? defaultValue,
]) {
  if (courtReqDtoCourtType == null) {
    return null;
  }
  return enums.CourtReqDtoCourtType.values
          .firstWhereOrNull((e) => e.value == courtReqDtoCourtType) ??
      defaultValue;
}

String courtReqDtoCourtTypeExplodedListToJson(
    List<enums.CourtReqDtoCourtType>? courtReqDtoCourtType) {
  return courtReqDtoCourtType?.map((e) => e.value!).join(',') ?? '';
}

List<String> courtReqDtoCourtTypeListToJson(
    List<enums.CourtReqDtoCourtType>? courtReqDtoCourtType) {
  if (courtReqDtoCourtType == null) {
    return [];
  }

  return courtReqDtoCourtType.map((e) => e.value!).toList();
}

List<enums.CourtReqDtoCourtType> courtReqDtoCourtTypeListFromJson(
  List? courtReqDtoCourtType, [
  List<enums.CourtReqDtoCourtType>? defaultValue,
]) {
  if (courtReqDtoCourtType == null) {
    return defaultValue ?? [];
  }

  return courtReqDtoCourtType
      .map((e) => courtReqDtoCourtTypeFromJson(e.toString()))
      .toList();
}

List<enums.CourtReqDtoCourtType>? courtReqDtoCourtTypeNullableListFromJson(
  List? courtReqDtoCourtType, [
  List<enums.CourtReqDtoCourtType>? defaultValue,
]) {
  if (courtReqDtoCourtType == null) {
    return defaultValue;
  }

  return courtReqDtoCourtType
      .map((e) => courtReqDtoCourtTypeFromJson(e.toString()))
      .toList();
}

String? courtResDtoCourtTypeNullableToJson(
    enums.CourtResDtoCourtType? courtResDtoCourtType) {
  return courtResDtoCourtType?.value;
}

String? courtResDtoCourtTypeToJson(
    enums.CourtResDtoCourtType courtResDtoCourtType) {
  return courtResDtoCourtType.value;
}

enums.CourtResDtoCourtType courtResDtoCourtTypeFromJson(
  Object? courtResDtoCourtType, [
  enums.CourtResDtoCourtType? defaultValue,
]) {
  return enums.CourtResDtoCourtType.values
          .firstWhereOrNull((e) => e.value == courtResDtoCourtType) ??
      defaultValue ??
      enums.CourtResDtoCourtType.swaggerGeneratedUnknown;
}

enums.CourtResDtoCourtType? courtResDtoCourtTypeNullableFromJson(
  Object? courtResDtoCourtType, [
  enums.CourtResDtoCourtType? defaultValue,
]) {
  if (courtResDtoCourtType == null) {
    return null;
  }
  return enums.CourtResDtoCourtType.values
          .firstWhereOrNull((e) => e.value == courtResDtoCourtType) ??
      defaultValue;
}

String courtResDtoCourtTypeExplodedListToJson(
    List<enums.CourtResDtoCourtType>? courtResDtoCourtType) {
  return courtResDtoCourtType?.map((e) => e.value!).join(',') ?? '';
}

List<String> courtResDtoCourtTypeListToJson(
    List<enums.CourtResDtoCourtType>? courtResDtoCourtType) {
  if (courtResDtoCourtType == null) {
    return [];
  }

  return courtResDtoCourtType.map((e) => e.value!).toList();
}

List<enums.CourtResDtoCourtType> courtResDtoCourtTypeListFromJson(
  List? courtResDtoCourtType, [
  List<enums.CourtResDtoCourtType>? defaultValue,
]) {
  if (courtResDtoCourtType == null) {
    return defaultValue ?? [];
  }

  return courtResDtoCourtType
      .map((e) => courtResDtoCourtTypeFromJson(e.toString()))
      .toList();
}

List<enums.CourtResDtoCourtType>? courtResDtoCourtTypeNullableListFromJson(
  List? courtResDtoCourtType, [
  List<enums.CourtResDtoCourtType>? defaultValue,
]) {
  if (courtResDtoCourtType == null) {
    return defaultValue;
  }

  return courtResDtoCourtType
      .map((e) => courtResDtoCourtTypeFromJson(e.toString()))
      .toList();
}

String? matchResultResDtoStatusNullableToJson(
    enums.MatchResultResDtoStatus? matchResultResDtoStatus) {
  return matchResultResDtoStatus?.value;
}

String? matchResultResDtoStatusToJson(
    enums.MatchResultResDtoStatus matchResultResDtoStatus) {
  return matchResultResDtoStatus.value;
}

enums.MatchResultResDtoStatus matchResultResDtoStatusFromJson(
  Object? matchResultResDtoStatus, [
  enums.MatchResultResDtoStatus? defaultValue,
]) {
  return enums.MatchResultResDtoStatus.values
          .firstWhereOrNull((e) => e.value == matchResultResDtoStatus) ??
      defaultValue ??
      enums.MatchResultResDtoStatus.swaggerGeneratedUnknown;
}

enums.MatchResultResDtoStatus? matchResultResDtoStatusNullableFromJson(
  Object? matchResultResDtoStatus, [
  enums.MatchResultResDtoStatus? defaultValue,
]) {
  if (matchResultResDtoStatus == null) {
    return null;
  }
  return enums.MatchResultResDtoStatus.values
          .firstWhereOrNull((e) => e.value == matchResultResDtoStatus) ??
      defaultValue;
}

String matchResultResDtoStatusExplodedListToJson(
    List<enums.MatchResultResDtoStatus>? matchResultResDtoStatus) {
  return matchResultResDtoStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> matchResultResDtoStatusListToJson(
    List<enums.MatchResultResDtoStatus>? matchResultResDtoStatus) {
  if (matchResultResDtoStatus == null) {
    return [];
  }

  return matchResultResDtoStatus.map((e) => e.value!).toList();
}

List<enums.MatchResultResDtoStatus> matchResultResDtoStatusListFromJson(
  List? matchResultResDtoStatus, [
  List<enums.MatchResultResDtoStatus>? defaultValue,
]) {
  if (matchResultResDtoStatus == null) {
    return defaultValue ?? [];
  }

  return matchResultResDtoStatus
      .map((e) => matchResultResDtoStatusFromJson(e.toString()))
      .toList();
}

List<enums.MatchResultResDtoStatus>?
    matchResultResDtoStatusNullableListFromJson(
  List? matchResultResDtoStatus, [
  List<enums.MatchResultResDtoStatus>? defaultValue,
]) {
  if (matchResultResDtoStatus == null) {
    return defaultValue;
  }

  return matchResultResDtoStatus
      .map((e) => matchResultResDtoStatusFromJson(e.toString()))
      .toList();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
          body: DateTime.parse((response.body as String).replaceAll('"', ''))
              as ResultType);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
