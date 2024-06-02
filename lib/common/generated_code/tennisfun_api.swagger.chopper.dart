// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tennisfun_api.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$TennisfunApi extends TennisfunApi {
  _$TennisfunApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = TennisfunApi;

  @override
  Future<Response<ApiResultMatchResponseDto>> _apiMatchRequestGet(
      {required String? userId}) {
    final Uri $url = Uri.parse('/api/match/request');
    final Map<String, dynamic> $params = <String, dynamic>{'userId': userId};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<ApiResultMatchResponseDto, ApiResultMatchResponseDto>($request);
  }

  @override
  Future<Response<ApiResultMatchResponseDto>> _apiMatchRequestPut(
      {required ApiMatchRequestPut$RequestBody? body}) {
    final Uri $url = Uri.parse('/api/match/request');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<ApiResultMatchResponseDto, ApiResultMatchResponseDto>($request);
  }

  @override
  Future<Response<ApiResultMatchResponseDto>> _apiMatchRequestPost(
      {required MatchRequestDto? body}) {
    final Uri $url = Uri.parse('/api/match/request');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<ApiResultMatchResponseDto, ApiResultMatchResponseDto>($request);
  }

  @override
  Future<Response<ApiResultString>> _apiMatchRequestDelete(
      {required String? body}) {
    final Uri $url = Uri.parse('/api/match/request');
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ApiResultString, ApiResultString>($request);
  }

  @override
  Future<Response<ApiResponse>> _apiUserRegisterPost(
      {required RegistrationDto? body}) {
    final Uri $url = Uri.parse('/api/user/register');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ApiResponse, ApiResponse>($request);
  }

  @override
  Future<Response<ApiResponse>> _apiUserLoginPost({required LoginDto? body}) {
    final Uri $url = Uri.parse('/api/user/login');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ApiResponse, ApiResponse>($request);
  }

  @override
  Future<Response<ApiResultString>> _apiMatchResultsMatchResultIdFeedbackPost({
    required String? matchResultId,
    required ApiMatchResultsMatchResultIdFeedbackPost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/api/match/results/${matchResultId}/feedback');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ApiResultString, ApiResultString>($request);
  }

  @override
  Future<Response<ApiResponse>> _apiGameGet() {
    final Uri $url = Uri.parse('/api/game');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ApiResponse, ApiResponse>($request);
  }

  @override
  Future<Response<ApiResponse>> _apiGamePost({required GameCreationDto? body}) {
    final Uri $url = Uri.parse('/api/game');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ApiResponse, ApiResponse>($request);
  }

  @override
  Future<Response<ApiResponse>> _apiGameDelete() {
    final Uri $url = Uri.parse('/api/game');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<ApiResponse, ApiResponse>($request);
  }

  @override
  Future<Response<ApiResultListString>> _apiFileUploadPost(
      {required List<List<int>> images}) {
    final Uri $url = Uri.parse('/api/file/upload');
    final List<PartValue> $parts = <PartValue>[
      PartValueFile<List<List<int>>>(
        'images',
        images,
      )
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
    );
    return client.send<ApiResultListString, ApiResultListString>($request);
  }

  @override
  Future<Response<ApiResultBusinessInfoResDto>> _apiBusinessRegisterPost(
      {required BusinessInfoReqDto? body}) {
    final Uri $url = Uri.parse('/api/business/register');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ApiResultBusinessInfoResDto,
        ApiResultBusinessInfoResDto>($request);
  }

  @override
  Future<Response<ApiResultCourtResDto>> _apiBusinessCourtsPost(
      {required CourtReqDto? body}) {
    final Uri $url = Uri.parse('/api/business/courts');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ApiResultCourtResDto, ApiResultCourtResDto>($request);
  }

  @override
  Future<Response<ApiResultCourtResDto>> _apiBusinessCourtsTimeslotPost(
      {required String? courtId}) {
    final Uri $url = Uri.parse('/api/business/courts/timeslot');
    final Map<String, dynamic> $params = <String, dynamic>{'courtId': courtId};
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ApiResultCourtResDto, ApiResultCourtResDto>($request);
  }

  @override
  Future<Response<ApiResultString>> _apiBusinessCourtsAutoMatchPost(
      {required AutoMatchApplyDto? body}) {
    final Uri $url = Uri.parse('/api/business/courts/auto-match');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ApiResultString, ApiResultString>($request);
  }

  @override
  Future<Response<ApiResultBusinessInfoResDto>> _apiBusinessAccountPost(
      {required AccountReqDto? body}) {
    final Uri $url = Uri.parse('/api/business/account');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ApiResultBusinessInfoResDto,
        ApiResultBusinessInfoResDto>($request);
  }

  @override
  Future<Response<ApiResponse>> _apiUserLocationPatch(
      {required LocationUpdateDto? body}) {
    final Uri $url = Uri.parse('/api/user/location');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ApiResponse, ApiResponse>($request);
  }

  @override
  Future<Response<dynamic>> _authExpiredGet() {
    final Uri $url = Uri.parse('/auth/expired');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<String>> _apiUserVerifyEmailGet({required String? token}) {
    final Uri $url = Uri.parse('/api/user/verify-email');
    final Map<String, dynamic> $params = <String, dynamic>{'token': token};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<ApiResultListCourtResDto>> _apiUserCourtsSearchGet(
      {required String? courtName}) {
    final Uri $url = Uri.parse('/api/user/courts/search');
    final Map<String, dynamic> $params = <String, dynamic>{
      'courtName': courtName
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<ApiResultListCourtResDto, ApiResultListCourtResDto>($request);
  }

  @override
  Future<Response<ApiResultListMatchResultResDto>> _apiMatchResultsGet(
      {required String? userId}) {
    final Uri $url = Uri.parse('/api/match/results');
    final Map<String, dynamic> $params = <String, dynamic>{'userId': userId};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ApiResultListMatchResultResDto,
        ApiResultListMatchResultResDto>($request);
  }

  @override
  Future<Response<ApiResultString>> _apiFileDeleteUuidDelete(
      {required String? uuid}) {
    final Uri $url = Uri.parse('/api/file/delete/${uuid}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<ApiResultString, ApiResultString>($request);
  }
}
