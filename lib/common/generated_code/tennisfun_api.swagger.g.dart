// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tennisfun_api.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchRequestDto _$MatchRequestDtoFromJson(Map<String, dynamic> json) =>
    MatchRequestDto(
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      objective: matchRequestDtoObjectiveFromJson(json['objective']),
      isSingles: json['isSingles'] as bool,
      dislikedCourts: (json['dislikedCourts'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      minTime: (json['minTime'] as num).toInt(),
      maxTime: (json['maxTime'] as num).toInt(),
      reservationCourtId: json['reservationCourtId'] as String?,
      reservationDate: json['reservationDate'] == null
          ? null
          : DateTime.parse(json['reservationDate'] as String),
      rentalCost: (json['rentalCost'] as num?)?.toInt(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$MatchRequestDtoToJson(MatchRequestDto instance) =>
    <String, dynamic>{
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'objective': matchRequestDtoObjectiveToJson(instance.objective),
      'isSingles': instance.isSingles,
      'dislikedCourts': instance.dislikedCourts,
      'minTime': instance.minTime,
      'maxTime': instance.maxTime,
      'reservationCourtId': instance.reservationCourtId,
      'reservationDate': instance.reservationDate?.toIso8601String(),
      'rentalCost': instance.rentalCost,
      'description': instance.description,
    };

ApiResultMatchResponseDto _$ApiResultMatchResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ApiResultMatchResponseDto(
      isSuccess: json['isSuccess'] as bool?,
      code: json['code'] as String?,
      message: json['message'] as String?,
      result: json['result'] == null
          ? null
          : MatchResponseDto.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiResultMatchResponseDtoToJson(
        ApiResultMatchResponseDto instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'code': instance.code,
      'message': instance.message,
      'result': instance.result?.toJson(),
    };

MatchResponseDto _$MatchResponseDtoFromJson(Map<String, dynamic> json) =>
    MatchResponseDto(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      objective: matchResponseDtoObjectiveNullableFromJson(json['objective']),
      isSingles: json['isSingles'] as bool?,
      x: (json['x'] as num?)?.toDouble(),
      y: (json['y'] as num?)?.toDouble(),
      dislikedCourts: (json['dislikedCourts'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      maxDistance: (json['maxDistance'] as num?)?.toDouble(),
      minTime: (json['minTime'] as num?)?.toInt(),
      maxTime: (json['maxTime'] as num?)?.toInt(),
      reservationCourtId: json['reservationCourtId'] as String?,
      reservationDate: json['reservationDate'] == null
          ? null
          : DateTime.parse(json['reservationDate'] as String),
      rentalCost: (json['rentalCost'] as num?)?.toInt(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$MatchResponseDtoToJson(MatchResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'startTime': instance.startTime?.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'objective': matchResponseDtoObjectiveNullableToJson(instance.objective),
      'isSingles': instance.isSingles,
      'x': instance.x,
      'y': instance.y,
      'dislikedCourts': instance.dislikedCourts,
      'maxDistance': instance.maxDistance,
      'minTime': instance.minTime,
      'maxTime': instance.maxTime,
      'reservationCourtId': instance.reservationCourtId,
      'reservationDate': instance.reservationDate?.toIso8601String(),
      'rentalCost': instance.rentalCost,
      'description': instance.description,
    };

RegistrationDto _$RegistrationDtoFromJson(Map<String, dynamic> json) =>
    RegistrationDto(
      email: json['email'] as String,
      name: json['name'] as String,
      password: json['password'] as String,
      ntrp: (json['ntrp'] as num).toDouble(),
      age: (json['age'] as num).toInt(),
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$RegistrationDtoToJson(RegistrationDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
      'ntrp': instance.ntrp,
      'age': instance.age,
      'gender': instance.gender,
    };

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) => ApiResponse(
      code: json['code'] as String?,
      message: json['message'] as String?,
      result: json['result'] as Map<String, dynamic>?,
      isSuccess: json['isSuccess'] as bool?,
    );

Map<String, dynamic> _$ApiResponseToJson(ApiResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'result': instance.result,
      'isSuccess': instance.isSuccess,
    };

LoginDto _$LoginDtoFromJson(Map<String, dynamic> json) => LoginDto(
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$LoginDtoToJson(LoginDto instance) => <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

FeedbackReqDto _$FeedbackReqDtoFromJson(Map<String, dynamic> json) =>
    FeedbackReqDto(
      feedback: feedbackReqDtoFeedbackFromJson(json['feedback']),
    );

Map<String, dynamic> _$FeedbackReqDtoToJson(FeedbackReqDto instance) =>
    <String, dynamic>{
      'feedback': feedbackReqDtoFeedbackToJson(instance.feedback),
    };

ApiResultString _$ApiResultStringFromJson(Map<String, dynamic> json) =>
    ApiResultString(
      isSuccess: json['isSuccess'] as bool?,
      code: json['code'] as String?,
      message: json['message'] as String?,
      result: json['result'] as String?,
    );

Map<String, dynamic> _$ApiResultStringToJson(ApiResultString instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'code': instance.code,
      'message': instance.message,
      'result': instance.result,
    };

GameCreationDto _$GameCreationDtoFromJson(Map<String, dynamic> json) =>
    GameCreationDto(
      gameStatus: gameCreationDtoGameStatusNullableFromJson(json['gameStatus']),
      playerIds: (json['playerIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      courtId: json['courtId'] as String?,
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      chatRoomId: json['chatRoomId'] as String?,
      rentalCost: (json['rentalCost'] as num?)?.toDouble(),
      scores: (json['scores'] as List<dynamic>?)
              ?.map((e) => ScoreDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      scoreConfirmed: json['scoreConfirmed'] as bool?,
      ntrpFeedbacks: (json['ntrpFeedbacks'] as List<dynamic>?)
              ?.map((e) => NTRPFeedbackDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      mannerFeedbacks: (json['mannerFeedbacks'] as List<dynamic>?)
              ?.map(
                  (e) => MannerFeedbackDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$GameCreationDtoToJson(GameCreationDto instance) =>
    <String, dynamic>{
      'gameStatus':
          gameCreationDtoGameStatusNullableToJson(instance.gameStatus),
      'playerIds': instance.playerIds,
      'courtId': instance.courtId,
      'startTime': instance.startTime?.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'chatRoomId': instance.chatRoomId,
      'rentalCost': instance.rentalCost,
      'scores': instance.scores?.map((e) => e.toJson()).toList(),
      'scoreConfirmed': instance.scoreConfirmed,
      'ntrpFeedbacks': instance.ntrpFeedbacks?.map((e) => e.toJson()).toList(),
      'mannerFeedbacks':
          instance.mannerFeedbacks?.map((e) => e.toJson()).toList(),
    };

MannerFeedbackDto _$MannerFeedbackDtoFromJson(Map<String, dynamic> json) =>
    MannerFeedbackDto(
      userId: json['userId'] as String?,
      opponentUserId: json['opponentUserId'] as String?,
      mannerScore: (json['mannerScore'] as num?)?.toInt(),
      comments: json['comments'] as String?,
    );

Map<String, dynamic> _$MannerFeedbackDtoToJson(MannerFeedbackDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'opponentUserId': instance.opponentUserId,
      'mannerScore': instance.mannerScore,
      'comments': instance.comments,
    };

NTRPFeedbackDto _$NTRPFeedbackDtoFromJson(Map<String, dynamic> json) =>
    NTRPFeedbackDto(
      userId: json['userId'] as String?,
      opponentUserId: json['opponentUserId'] as String?,
      ntrp: (json['ntrp'] as num?)?.toDouble(),
      comments: json['comments'] as String?,
    );

Map<String, dynamic> _$NTRPFeedbackDtoToJson(NTRPFeedbackDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'opponentUserId': instance.opponentUserId,
      'ntrp': instance.ntrp,
      'comments': instance.comments,
    };

ScoreDetailDto _$ScoreDetailDtoFromJson(Map<String, dynamic> json) =>
    ScoreDetailDto(
      userScore: (json['userScore'] as num?)?.toInt(),
      opponentScore: (json['opponentScore'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ScoreDetailDtoToJson(ScoreDetailDto instance) =>
    <String, dynamic>{
      'userScore': instance.userScore,
      'opponentScore': instance.opponentScore,
    };

ScoreDto _$ScoreDtoFromJson(Map<String, dynamic> json) => ScoreDto(
      userId: json['userId'] as String?,
      scoreDetails: (json['scoreDetails'] as List<dynamic>?)
              ?.map((e) => ScoreDetailDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ScoreDtoToJson(ScoreDto instance) => <String, dynamic>{
      'userId': instance.userId,
      'scoreDetails': instance.scoreDetails?.map((e) => e.toJson()).toList(),
    };

ApiResultListString _$ApiResultListStringFromJson(Map<String, dynamic> json) =>
    ApiResultListString(
      isSuccess: json['isSuccess'] as bool?,
      code: json['code'] as String?,
      message: json['message'] as String?,
      result: (json['result'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ApiResultListStringToJson(
        ApiResultListString instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'code': instance.code,
      'message': instance.message,
      'result': instance.result,
    };

BusinessInfoReqDto _$BusinessInfoReqDtoFromJson(Map<String, dynamic> json) =>
    BusinessInfoReqDto(
      businessRegistrationNumber: json['businessRegistrationNumber'] as String,
      documents: (json['documents'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$BusinessInfoReqDtoToJson(BusinessInfoReqDto instance) =>
    <String, dynamic>{
      'businessRegistrationNumber': instance.businessRegistrationNumber,
      'documents': instance.documents,
    };

ApiResultBusinessInfoResDto _$ApiResultBusinessInfoResDtoFromJson(
        Map<String, dynamic> json) =>
    ApiResultBusinessInfoResDto(
      isSuccess: json['isSuccess'] as bool?,
      code: json['code'] as String?,
      message: json['message'] as String?,
      result: json['result'] == null
          ? null
          : BusinessInfoResDto.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiResultBusinessInfoResDtoToJson(
        ApiResultBusinessInfoResDto instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'code': instance.code,
      'message': instance.message,
      'result': instance.result?.toJson(),
    };

BusinessInfoResDto _$BusinessInfoResDtoFromJson(Map<String, dynamic> json) =>
    BusinessInfoResDto(
      id: json['id'] as String?,
      businessRegistrationNumber: json['businessRegistrationNumber'] as String?,
      documents: (json['documents'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      bank: json['bank'] as String?,
      accountNumber: json['accountNumber'] as String?,
      registrationStatus: businessInfoResDtoRegistrationStatusNullableFromJson(
          json['registrationStatus']),
    );

Map<String, dynamic> _$BusinessInfoResDtoToJson(BusinessInfoResDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'businessRegistrationNumber': instance.businessRegistrationNumber,
      'documents': instance.documents,
      'bank': instance.bank,
      'accountNumber': instance.accountNumber,
      'registrationStatus': businessInfoResDtoRegistrationStatusNullableToJson(
          instance.registrationStatus),
    };

CourtHoursDto _$CourtHoursDtoFromJson(Map<String, dynamic> json) =>
    CourtHoursDto(
      dayOfWeek: courtHoursDtoDayOfWeekNullableFromJson(json['dayOfWeek']),
      openTime: json['openTime'] as String?,
      closeTime: json['closeTime'] as String?,
    );

Map<String, dynamic> _$CourtHoursDtoToJson(CourtHoursDto instance) =>
    <String, dynamic>{
      'dayOfWeek': courtHoursDtoDayOfWeekNullableToJson(instance.dayOfWeek),
      'openTime': instance.openTime,
      'closeTime': instance.closeTime,
    };

CourtReqDto _$CourtReqDtoFromJson(Map<String, dynamic> json) => CourtReqDto(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      description: json['description'] as String?,
      ownerId: json['ownerId'] as String,
      courtType: courtReqDtoCourtTypeFromJson(json['courtType']),
      courtName: json['courtName'] as String,
      businessHours: (json['businessHours'] as List<dynamic>?)
              ?.map((e) => CourtHoursDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      rentalCostPerHalfHour:
          (json['rentalCostPerHalfHour'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CourtReqDtoToJson(CourtReqDto instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'description': instance.description,
      'ownerId': instance.ownerId,
      'courtType': courtReqDtoCourtTypeToJson(instance.courtType),
      'courtName': instance.courtName,
      'businessHours': instance.businessHours?.map((e) => e.toJson()).toList(),
      'rentalCostPerHalfHour': instance.rentalCostPerHalfHour,
    };

ApiResultCourtResDto _$ApiResultCourtResDtoFromJson(
        Map<String, dynamic> json) =>
    ApiResultCourtResDto(
      isSuccess: json['isSuccess'] as bool?,
      code: json['code'] as String?,
      message: json['message'] as String?,
      result: json['result'] == null
          ? null
          : CourtResDto.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiResultCourtResDtoToJson(
        ApiResultCourtResDto instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'code': instance.code,
      'message': instance.message,
      'result': instance.result?.toJson(),
    };

CourtResDto _$CourtResDtoFromJson(Map<String, dynamic> json) => CourtResDto(
      courtId: json['courtId'] as String?,
      location: json['location'] == null
          ? null
          : Point.fromJson(json['location'] as Map<String, dynamic>),
      description: json['description'] as String?,
      ownerId: json['ownerId'] as String?,
      courtType: courtResDtoCourtTypeNullableFromJson(json['courtType']),
      courtName: json['courtName'] as String?,
      businessHours: (json['businessHours'] as List<dynamic>?)
              ?.map((e) => CourtHoursDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CourtResDtoToJson(CourtResDto instance) =>
    <String, dynamic>{
      'courtId': instance.courtId,
      'location': instance.location?.toJson(),
      'description': instance.description,
      'ownerId': instance.ownerId,
      'courtType': courtResDtoCourtTypeNullableToJson(instance.courtType),
      'courtName': instance.courtName,
      'businessHours': instance.businessHours?.map((e) => e.toJson()).toList(),
    };

Point _$PointFromJson(Map<String, dynamic> json) => Point(
      x: (json['x'] as num?)?.toDouble(),
      y: (json['y'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PointToJson(Point instance) => <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };

AutoMatchApplyDto _$AutoMatchApplyDtoFromJson(Map<String, dynamic> json) =>
    AutoMatchApplyDto(
      courtId: json['courtId'] as String,
      dates:
          (json['dates'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
    );

Map<String, dynamic> _$AutoMatchApplyDtoToJson(AutoMatchApplyDto instance) =>
    <String, dynamic>{
      'courtId': instance.courtId,
      'dates': instance.dates,
    };

AccountReqDto _$AccountReqDtoFromJson(Map<String, dynamic> json) =>
    AccountReqDto(
      businessInfoId: json['businessInfoId'] as String,
      bank: json['bank'] as String,
      accountNumber: json['accountNumber'] as String,
      files:
          (json['files'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
    );

Map<String, dynamic> _$AccountReqDtoToJson(AccountReqDto instance) =>
    <String, dynamic>{
      'businessInfoId': instance.businessInfoId,
      'bank': instance.bank,
      'accountNumber': instance.accountNumber,
      'files': instance.files,
    };

LocationUpdateDto _$LocationUpdateDtoFromJson(Map<String, dynamic> json) =>
    LocationUpdateDto(
      maxDistance: (json['maxDistance'] as num?)?.toDouble(),
      location: json['location'] == null
          ? null
          : Point.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocationUpdateDtoToJson(LocationUpdateDto instance) =>
    <String, dynamic>{
      'maxDistance': instance.maxDistance,
      'location': instance.location?.toJson(),
    };

ApiResultListCourtResDto _$ApiResultListCourtResDtoFromJson(
        Map<String, dynamic> json) =>
    ApiResultListCourtResDto(
      isSuccess: json['isSuccess'] as bool?,
      code: json['code'] as String?,
      message: json['message'] as String?,
      result: (json['result'] as List<dynamic>?)
              ?.map((e) => CourtResDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ApiResultListCourtResDtoToJson(
        ApiResultListCourtResDto instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'code': instance.code,
      'message': instance.message,
      'result': instance.result?.map((e) => e.toJson()).toList(),
    };

ApiResultListMatchResultResDto _$ApiResultListMatchResultResDtoFromJson(
        Map<String, dynamic> json) =>
    ApiResultListMatchResultResDto(
      isSuccess: json['isSuccess'] as bool?,
      code: json['code'] as String?,
      message: json['message'] as String?,
      result: (json['result'] as List<dynamic>?)
              ?.map(
                  (e) => MatchResultResDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ApiResultListMatchResultResDtoToJson(
        ApiResultListMatchResultResDto instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'code': instance.code,
      'message': instance.message,
      'result': instance.result?.map((e) => e.toJson()).toList(),
    };

MatchDetails _$MatchDetailsFromJson(Map<String, dynamic> json) => MatchDetails(
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      location: json['location'] == null
          ? null
          : Point.fromJson(json['location'] as Map<String, dynamic>),
      courtId: json['courtId'] as String?,
      courtType: json['courtType'] as String?,
    );

Map<String, dynamic> _$MatchDetailsToJson(MatchDetails instance) =>
    <String, dynamic>{
      'startTime': instance.startTime?.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'location': instance.location?.toJson(),
      'courtId': instance.courtId,
      'courtType': instance.courtType,
    };

MatchResultResDto _$MatchResultResDtoFromJson(Map<String, dynamic> json) =>
    MatchResultResDto(
      id: json['id'] as String?,
      opponent: json['opponent'] == null
          ? null
          : UserResDto.fromJson(json['opponent'] as Map<String, dynamic>),
      matchDetails: json['matchDetails'] == null
          ? null
          : MatchDetails.fromJson(json['matchDetails'] as Map<String, dynamic>),
      court: json['court'] == null
          ? null
          : CourtResDto.fromJson(json['court'] as Map<String, dynamic>),
      status: matchResultResDtoStatusNullableFromJson(json['status']),
    );

Map<String, dynamic> _$MatchResultResDtoToJson(MatchResultResDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'opponent': instance.opponent?.toJson(),
      'matchDetails': instance.matchDetails?.toJson(),
      'court': instance.court?.toJson(),
      'status': matchResultResDtoStatusNullableToJson(instance.status),
    };

UserResDto _$UserResDtoFromJson(Map<String, dynamic> json) => UserResDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      emailId: json['emailId'] as String?,
      age: (json['age'] as num?)?.toInt(),
      gender: json['gender'] as String?,
      location: json['location'] == null
          ? null
          : Point.fromJson(json['location'] as Map<String, dynamic>),
      maxDistance: (json['maxDistance'] as num?)?.toDouble(),
      dislikedCourts: (json['dislikedCourts'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      ntrp: (json['ntrp'] as num?)?.toDouble(),
      mannerScore: (json['mannerScore'] as num?)?.toDouble(),
      clubIds: (json['clubIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      emailVerified: json['emailVerified'] as bool?,
    );

Map<String, dynamic> _$UserResDtoToJson(UserResDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'emailId': instance.emailId,
      'age': instance.age,
      'gender': instance.gender,
      'location': instance.location?.toJson(),
      'maxDistance': instance.maxDistance,
      'dislikedCourts': instance.dislikedCourts,
      'ntrp': instance.ntrp,
      'mannerScore': instance.mannerScore,
      'clubIds': instance.clubIds,
      'emailVerified': instance.emailVerified,
    };

ApiMatchRequestPut$RequestBody _$ApiMatchRequestPut$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    ApiMatchRequestPut$RequestBody(
      matchRequestDto: json['matchRequestDto'] == null
          ? null
          : MatchRequestDto.fromJson(
              json['matchRequestDto'] as Map<String, dynamic>),
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$ApiMatchRequestPut$RequestBodyToJson(
        ApiMatchRequestPut$RequestBody instance) =>
    <String, dynamic>{
      'matchRequestDto': instance.matchRequestDto?.toJson(),
      'userId': instance.userId,
    };

ApiMatchResultsMatchResultIdFeedbackPost$RequestBody
    _$ApiMatchResultsMatchResultIdFeedbackPost$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        ApiMatchResultsMatchResultIdFeedbackPost$RequestBody(
          feedbackReqDto: json['feedbackReqDto'] == null
              ? null
              : FeedbackReqDto.fromJson(
                  json['feedbackReqDto'] as Map<String, dynamic>),
          userId: json['userId'] as String?,
        );

Map<String, dynamic>
    _$ApiMatchResultsMatchResultIdFeedbackPost$RequestBodyToJson(
            ApiMatchResultsMatchResultIdFeedbackPost$RequestBody instance) =>
        <String, dynamic>{
          'feedbackReqDto': instance.feedbackReqDto?.toJson(),
          'userId': instance.userId,
        };

ApiFileUploadPost$RequestBody _$ApiFileUploadPost$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    ApiFileUploadPost$RequestBody(
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ApiFileUploadPost$RequestBodyToJson(
        ApiFileUploadPost$RequestBody instance) =>
    <String, dynamic>{
      'images': instance.images,
    };
