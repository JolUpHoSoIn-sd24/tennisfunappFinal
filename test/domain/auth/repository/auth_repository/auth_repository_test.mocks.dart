// Mocks generated by Mockito 5.4.4 from annotations
// in tennis_fun/test/domain/auth/repository/auth_repository/auth_repository_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:chopper/chopper.dart' as _i2;
import 'package:flutter/foundation.dart' as _i6;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:tennis_fun/common/generated_code/tennisfun_api.swagger.dart'
    as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeChopperClient_0 extends _i1.SmartFake implements _i2.ChopperClient {
  _FakeChopperClient_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeType_1 extends _i1.SmartFake implements Type {
  _FakeType_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_2<BodyType> extends _i1.SmartFake
    implements _i2.Response<BodyType> {
  _FakeResponse_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeIOSOptions_3 extends _i1.SmartFake implements _i3.IOSOptions {
  _FakeIOSOptions_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAndroidOptions_4 extends _i1.SmartFake
    implements _i3.AndroidOptions {
  _FakeAndroidOptions_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeLinuxOptions_5 extends _i1.SmartFake implements _i3.LinuxOptions {
  _FakeLinuxOptions_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeWindowsOptions_6 extends _i1.SmartFake
    implements _i3.WindowsOptions {
  _FakeWindowsOptions_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeWebOptions_7 extends _i1.SmartFake implements _i3.WebOptions {
  _FakeWebOptions_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMacOsOptions_8 extends _i1.SmartFake implements _i3.MacOsOptions {
  _FakeMacOsOptions_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [TennisfunApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockTennisfunApi extends _i1.Mock implements _i4.TennisfunApi {
  MockTennisfunApi() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.ChopperClient get client => (super.noSuchMethod(
        Invocation.getter(#client),
        returnValue: _FakeChopperClient_0(
          this,
          Invocation.getter(#client),
        ),
      ) as _i2.ChopperClient);

  @override
  set client(_i2.ChopperClient? _client) => super.noSuchMethod(
        Invocation.setter(
          #client,
          _client,
        ),
        returnValueForMissingStub: null,
      );

  @override
  Type get definitionType => (super.noSuchMethod(
        Invocation.getter(#definitionType),
        returnValue: _FakeType_1(
          this,
          Invocation.getter(#definitionType),
        ),
      ) as Type);

  @override
  _i5.Future<_i2.Response<_i4.ApiResultMatchResponseDto>> apiMatchRequestGet(
          {required String? userId}) =>
      (super.noSuchMethod(
        Invocation.method(
          #apiMatchRequestGet,
          [],
          {#userId: userId},
        ),
        returnValue:
            _i5.Future<_i2.Response<_i4.ApiResultMatchResponseDto>>.value(
                _FakeResponse_2<_i4.ApiResultMatchResponseDto>(
          this,
          Invocation.method(
            #apiMatchRequestGet,
            [],
            {#userId: userId},
          ),
        )),
      ) as _i5.Future<_i2.Response<_i4.ApiResultMatchResponseDto>>);

  @override
  _i5.Future<_i2.Response<_i4.ApiResultMatchResponseDto>> apiMatchRequestPut(
          {required _i4.ApiMatchRequestPut$RequestBody? body}) =>
      (super.noSuchMethod(
        Invocation.method(
          #apiMatchRequestPut,
          [],
          {#body: body},
        ),
        returnValue:
            _i5.Future<_i2.Response<_i4.ApiResultMatchResponseDto>>.value(
                _FakeResponse_2<_i4.ApiResultMatchResponseDto>(
          this,
          Invocation.method(
            #apiMatchRequestPut,
            [],
            {#body: body},
          ),
        )),
      ) as _i5.Future<_i2.Response<_i4.ApiResultMatchResponseDto>>);

  @override
  _i5.Future<_i2.Response<_i4.ApiResultMatchResponseDto>> apiMatchRequestPost(
          {required _i4.MatchRequestDto? body}) =>
      (super.noSuchMethod(
        Invocation.method(
          #apiMatchRequestPost,
          [],
          {#body: body},
        ),
        returnValue:
            _i5.Future<_i2.Response<_i4.ApiResultMatchResponseDto>>.value(
                _FakeResponse_2<_i4.ApiResultMatchResponseDto>(
          this,
          Invocation.method(
            #apiMatchRequestPost,
            [],
            {#body: body},
          ),
        )),
      ) as _i5.Future<_i2.Response<_i4.ApiResultMatchResponseDto>>);

  @override
  _i5.Future<_i2.Response<_i4.ApiResultString>> apiMatchRequestDelete(
          {required String? body}) =>
      (super.noSuchMethod(
        Invocation.method(
          #apiMatchRequestDelete,
          [],
          {#body: body},
        ),
        returnValue: _i5.Future<_i2.Response<_i4.ApiResultString>>.value(
            _FakeResponse_2<_i4.ApiResultString>(
          this,
          Invocation.method(
            #apiMatchRequestDelete,
            [],
            {#body: body},
          ),
        )),
      ) as _i5.Future<_i2.Response<_i4.ApiResultString>>);

  @override
  _i5.Future<_i2.Response<_i4.ApiResponse>> apiUserRegisterPost(
          {required _i4.RegistrationDto? body}) =>
      (super.noSuchMethod(
        Invocation.method(
          #apiUserRegisterPost,
          [],
          {#body: body},
        ),
        returnValue: _i5.Future<_i2.Response<_i4.ApiResponse>>.value(
            _FakeResponse_2<_i4.ApiResponse>(
          this,
          Invocation.method(
            #apiUserRegisterPost,
            [],
            {#body: body},
          ),
        )),
      ) as _i5.Future<_i2.Response<_i4.ApiResponse>>);

  @override
  _i5.Future<_i2.Response<_i4.ApiResponse>> apiUserLoginPost(
          {required _i4.LoginDto? body}) =>
      (super.noSuchMethod(
        Invocation.method(
          #apiUserLoginPost,
          [],
          {#body: body},
        ),
        returnValue: _i5.Future<_i2.Response<_i4.ApiResponse>>.value(
            _FakeResponse_2<_i4.ApiResponse>(
          this,
          Invocation.method(
            #apiUserLoginPost,
            [],
            {#body: body},
          ),
        )),
      ) as _i5.Future<_i2.Response<_i4.ApiResponse>>);

  @override
  _i5.Future<_i2.Response<_i4.ApiResultString>>
      apiMatchResultsMatchResultIdFeedbackPost({
    required String? matchResultId,
    required _i4.ApiMatchResultsMatchResultIdFeedbackPost$RequestBody? body,
  }) =>
          (super.noSuchMethod(
            Invocation.method(
              #apiMatchResultsMatchResultIdFeedbackPost,
              [],
              {
                #matchResultId: matchResultId,
                #body: body,
              },
            ),
            returnValue: _i5.Future<_i2.Response<_i4.ApiResultString>>.value(
                _FakeResponse_2<_i4.ApiResultString>(
              this,
              Invocation.method(
                #apiMatchResultsMatchResultIdFeedbackPost,
                [],
                {
                  #matchResultId: matchResultId,
                  #body: body,
                },
              ),
            )),
          ) as _i5.Future<_i2.Response<_i4.ApiResultString>>);

  @override
  _i5.Future<_i2.Response<_i4.ApiResponse>> apiGameGet() => (super.noSuchMethod(
        Invocation.method(
          #apiGameGet,
          [],
        ),
        returnValue: _i5.Future<_i2.Response<_i4.ApiResponse>>.value(
            _FakeResponse_2<_i4.ApiResponse>(
          this,
          Invocation.method(
            #apiGameGet,
            [],
          ),
        )),
      ) as _i5.Future<_i2.Response<_i4.ApiResponse>>);

  @override
  _i5.Future<_i2.Response<_i4.ApiResponse>> apiGamePost(
          {required _i4.GameCreationDto? body}) =>
      (super.noSuchMethod(
        Invocation.method(
          #apiGamePost,
          [],
          {#body: body},
        ),
        returnValue: _i5.Future<_i2.Response<_i4.ApiResponse>>.value(
            _FakeResponse_2<_i4.ApiResponse>(
          this,
          Invocation.method(
            #apiGamePost,
            [],
            {#body: body},
          ),
        )),
      ) as _i5.Future<_i2.Response<_i4.ApiResponse>>);

  @override
  _i5.Future<_i2.Response<_i4.ApiResponse>> apiGameDelete() =>
      (super.noSuchMethod(
        Invocation.method(
          #apiGameDelete,
          [],
        ),
        returnValue: _i5.Future<_i2.Response<_i4.ApiResponse>>.value(
            _FakeResponse_2<_i4.ApiResponse>(
          this,
          Invocation.method(
            #apiGameDelete,
            [],
          ),
        )),
      ) as _i5.Future<_i2.Response<_i4.ApiResponse>>);

  @override
  _i5.Future<_i2.Response<_i4.ApiResultListString>> apiFileUploadPost(
          {required List<List<int>>? images}) =>
      (super.noSuchMethod(
        Invocation.method(
          #apiFileUploadPost,
          [],
          {#images: images},
        ),
        returnValue: _i5.Future<_i2.Response<_i4.ApiResultListString>>.value(
            _FakeResponse_2<_i4.ApiResultListString>(
          this,
          Invocation.method(
            #apiFileUploadPost,
            [],
            {#images: images},
          ),
        )),
      ) as _i5.Future<_i2.Response<_i4.ApiResultListString>>);

  @override
  _i5.Future<_i2.Response<_i4.ApiResultBusinessInfoResDto>>
      apiBusinessRegisterPost({required _i4.BusinessInfoReqDto? body}) =>
          (super.noSuchMethod(
            Invocation.method(
              #apiBusinessRegisterPost,
              [],
              {#body: body},
            ),
            returnValue:
                _i5.Future<_i2.Response<_i4.ApiResultBusinessInfoResDto>>.value(
                    _FakeResponse_2<_i4.ApiResultBusinessInfoResDto>(
              this,
              Invocation.method(
                #apiBusinessRegisterPost,
                [],
                {#body: body},
              ),
            )),
          ) as _i5.Future<_i2.Response<_i4.ApiResultBusinessInfoResDto>>);

  @override
  _i5.Future<_i2.Response<_i4.ApiResultCourtResDto>> apiBusinessCourtsPost(
          {required _i4.CourtReqDto? body}) =>
      (super.noSuchMethod(
        Invocation.method(
          #apiBusinessCourtsPost,
          [],
          {#body: body},
        ),
        returnValue: _i5.Future<_i2.Response<_i4.ApiResultCourtResDto>>.value(
            _FakeResponse_2<_i4.ApiResultCourtResDto>(
          this,
          Invocation.method(
            #apiBusinessCourtsPost,
            [],
            {#body: body},
          ),
        )),
      ) as _i5.Future<_i2.Response<_i4.ApiResultCourtResDto>>);

  @override
  _i5.Future<_i2.Response<_i4.ApiResultCourtResDto>>
      apiBusinessCourtsTimeslotPost({required String? courtId}) =>
          (super.noSuchMethod(
            Invocation.method(
              #apiBusinessCourtsTimeslotPost,
              [],
              {#courtId: courtId},
            ),
            returnValue:
                _i5.Future<_i2.Response<_i4.ApiResultCourtResDto>>.value(
                    _FakeResponse_2<_i4.ApiResultCourtResDto>(
              this,
              Invocation.method(
                #apiBusinessCourtsTimeslotPost,
                [],
                {#courtId: courtId},
              ),
            )),
          ) as _i5.Future<_i2.Response<_i4.ApiResultCourtResDto>>);

  @override
  _i5.Future<_i2.Response<_i4.ApiResultString>> apiBusinessCourtsAutoMatchPost(
          {required _i4.AutoMatchApplyDto? body}) =>
      (super.noSuchMethod(
        Invocation.method(
          #apiBusinessCourtsAutoMatchPost,
          [],
          {#body: body},
        ),
        returnValue: _i5.Future<_i2.Response<_i4.ApiResultString>>.value(
            _FakeResponse_2<_i4.ApiResultString>(
          this,
          Invocation.method(
            #apiBusinessCourtsAutoMatchPost,
            [],
            {#body: body},
          ),
        )),
      ) as _i5.Future<_i2.Response<_i4.ApiResultString>>);

  @override
  _i5.Future<_i2.Response<_i4.ApiResultBusinessInfoResDto>>
      apiBusinessAccountPost({required _i4.AccountReqDto? body}) =>
          (super.noSuchMethod(
            Invocation.method(
              #apiBusinessAccountPost,
              [],
              {#body: body},
            ),
            returnValue:
                _i5.Future<_i2.Response<_i4.ApiResultBusinessInfoResDto>>.value(
                    _FakeResponse_2<_i4.ApiResultBusinessInfoResDto>(
              this,
              Invocation.method(
                #apiBusinessAccountPost,
                [],
                {#body: body},
              ),
            )),
          ) as _i5.Future<_i2.Response<_i4.ApiResultBusinessInfoResDto>>);

  @override
  _i5.Future<_i2.Response<_i4.ApiResponse>> apiUserLocationPatch(
          {required _i4.LocationUpdateDto? body}) =>
      (super.noSuchMethod(
        Invocation.method(
          #apiUserLocationPatch,
          [],
          {#body: body},
        ),
        returnValue: _i5.Future<_i2.Response<_i4.ApiResponse>>.value(
            _FakeResponse_2<_i4.ApiResponse>(
          this,
          Invocation.method(
            #apiUserLocationPatch,
            [],
            {#body: body},
          ),
        )),
      ) as _i5.Future<_i2.Response<_i4.ApiResponse>>);

  @override
  _i5.Future<_i2.Response<dynamic>> authExpiredGet() => (super.noSuchMethod(
        Invocation.method(
          #authExpiredGet,
          [],
        ),
        returnValue:
            _i5.Future<_i2.Response<dynamic>>.value(_FakeResponse_2<dynamic>(
          this,
          Invocation.method(
            #authExpiredGet,
            [],
          ),
        )),
      ) as _i5.Future<_i2.Response<dynamic>>);

  @override
  _i5.Future<_i2.Response<String>> apiUserVerifyEmailGet(
          {required String? token}) =>
      (super.noSuchMethod(
        Invocation.method(
          #apiUserVerifyEmailGet,
          [],
          {#token: token},
        ),
        returnValue:
            _i5.Future<_i2.Response<String>>.value(_FakeResponse_2<String>(
          this,
          Invocation.method(
            #apiUserVerifyEmailGet,
            [],
            {#token: token},
          ),
        )),
      ) as _i5.Future<_i2.Response<String>>);

  @override
  _i5.Future<_i2.Response<_i4.ApiResultListCourtResDto>> apiUserCourtsSearchGet(
          {required String? courtName}) =>
      (super.noSuchMethod(
        Invocation.method(
          #apiUserCourtsSearchGet,
          [],
          {#courtName: courtName},
        ),
        returnValue:
            _i5.Future<_i2.Response<_i4.ApiResultListCourtResDto>>.value(
                _FakeResponse_2<_i4.ApiResultListCourtResDto>(
          this,
          Invocation.method(
            #apiUserCourtsSearchGet,
            [],
            {#courtName: courtName},
          ),
        )),
      ) as _i5.Future<_i2.Response<_i4.ApiResultListCourtResDto>>);

  @override
  _i5.Future<_i2.Response<_i4.ApiResultListMatchResultResDto>>
      apiMatchResultsGet({required String? userId}) => (super.noSuchMethod(
            Invocation.method(
              #apiMatchResultsGet,
              [],
              {#userId: userId},
            ),
            returnValue: _i5
                .Future<_i2.Response<_i4.ApiResultListMatchResultResDto>>.value(
                _FakeResponse_2<_i4.ApiResultListMatchResultResDto>(
              this,
              Invocation.method(
                #apiMatchResultsGet,
                [],
                {#userId: userId},
              ),
            )),
          ) as _i5.Future<_i2.Response<_i4.ApiResultListMatchResultResDto>>);

  @override
  _i5.Future<_i2.Response<_i4.ApiResultString>> apiFileDeleteUuidDelete(
          {required String? uuid}) =>
      (super.noSuchMethod(
        Invocation.method(
          #apiFileDeleteUuidDelete,
          [],
          {#uuid: uuid},
        ),
        returnValue: _i5.Future<_i2.Response<_i4.ApiResultString>>.value(
            _FakeResponse_2<_i4.ApiResultString>(
          this,
          Invocation.method(
            #apiFileDeleteUuidDelete,
            [],
            {#uuid: uuid},
          ),
        )),
      ) as _i5.Future<_i2.Response<_i4.ApiResultString>>);
}

/// A class which mocks [FlutterSecureStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockFlutterSecureStorage extends _i1.Mock
    implements _i3.FlutterSecureStorage {
  MockFlutterSecureStorage() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.IOSOptions get iOptions => (super.noSuchMethod(
        Invocation.getter(#iOptions),
        returnValue: _FakeIOSOptions_3(
          this,
          Invocation.getter(#iOptions),
        ),
      ) as _i3.IOSOptions);

  @override
  _i3.AndroidOptions get aOptions => (super.noSuchMethod(
        Invocation.getter(#aOptions),
        returnValue: _FakeAndroidOptions_4(
          this,
          Invocation.getter(#aOptions),
        ),
      ) as _i3.AndroidOptions);

  @override
  _i3.LinuxOptions get lOptions => (super.noSuchMethod(
        Invocation.getter(#lOptions),
        returnValue: _FakeLinuxOptions_5(
          this,
          Invocation.getter(#lOptions),
        ),
      ) as _i3.LinuxOptions);

  @override
  _i3.WindowsOptions get wOptions => (super.noSuchMethod(
        Invocation.getter(#wOptions),
        returnValue: _FakeWindowsOptions_6(
          this,
          Invocation.getter(#wOptions),
        ),
      ) as _i3.WindowsOptions);

  @override
  _i3.WebOptions get webOptions => (super.noSuchMethod(
        Invocation.getter(#webOptions),
        returnValue: _FakeWebOptions_7(
          this,
          Invocation.getter(#webOptions),
        ),
      ) as _i3.WebOptions);

  @override
  _i3.MacOsOptions get mOptions => (super.noSuchMethod(
        Invocation.getter(#mOptions),
        returnValue: _FakeMacOsOptions_8(
          this,
          Invocation.getter(#mOptions),
        ),
      ) as _i3.MacOsOptions);

  @override
  void registerListener({
    required String? key,
    required _i6.ValueChanged<String?>? listener,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #registerListener,
          [],
          {
            #key: key,
            #listener: listener,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void unregisterListener({
    required String? key,
    required _i6.ValueChanged<String?>? listener,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #unregisterListener,
          [],
          {
            #key: key,
            #listener: listener,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void unregisterAllListenersForKey({required String? key}) =>
      super.noSuchMethod(
        Invocation.method(
          #unregisterAllListenersForKey,
          [],
          {#key: key},
        ),
        returnValueForMissingStub: null,
      );

  @override
  void unregisterAllListeners() => super.noSuchMethod(
        Invocation.method(
          #unregisterAllListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<void> write({
    required String? key,
    required String? value,
    _i3.IOSOptions? iOptions,
    _i3.AndroidOptions? aOptions,
    _i3.LinuxOptions? lOptions,
    _i3.WebOptions? webOptions,
    _i3.MacOsOptions? mOptions,
    _i3.WindowsOptions? wOptions,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #write,
          [],
          {
            #key: key,
            #value: value,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions,
          },
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<String?> read({
    required String? key,
    _i3.IOSOptions? iOptions,
    _i3.AndroidOptions? aOptions,
    _i3.LinuxOptions? lOptions,
    _i3.WebOptions? webOptions,
    _i3.MacOsOptions? mOptions,
    _i3.WindowsOptions? wOptions,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #read,
          [],
          {
            #key: key,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions,
          },
        ),
        returnValue: _i5.Future<String?>.value(),
      ) as _i5.Future<String?>);

  @override
  _i5.Future<bool> containsKey({
    required String? key,
    _i3.IOSOptions? iOptions,
    _i3.AndroidOptions? aOptions,
    _i3.LinuxOptions? lOptions,
    _i3.WebOptions? webOptions,
    _i3.MacOsOptions? mOptions,
    _i3.WindowsOptions? wOptions,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #containsKey,
          [],
          {
            #key: key,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions,
          },
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);

  @override
  _i5.Future<void> delete({
    required String? key,
    _i3.IOSOptions? iOptions,
    _i3.AndroidOptions? aOptions,
    _i3.LinuxOptions? lOptions,
    _i3.WebOptions? webOptions,
    _i3.MacOsOptions? mOptions,
    _i3.WindowsOptions? wOptions,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [],
          {
            #key: key,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions,
          },
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<Map<String, String>> readAll({
    _i3.IOSOptions? iOptions,
    _i3.AndroidOptions? aOptions,
    _i3.LinuxOptions? lOptions,
    _i3.WebOptions? webOptions,
    _i3.MacOsOptions? mOptions,
    _i3.WindowsOptions? wOptions,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #readAll,
          [],
          {
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions,
          },
        ),
        returnValue: _i5.Future<Map<String, String>>.value(<String, String>{}),
      ) as _i5.Future<Map<String, String>>);

  @override
  _i5.Future<void> deleteAll({
    _i3.IOSOptions? iOptions,
    _i3.AndroidOptions? aOptions,
    _i3.LinuxOptions? lOptions,
    _i3.WebOptions? webOptions,
    _i3.MacOsOptions? mOptions,
    _i3.WindowsOptions? wOptions,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteAll,
          [],
          {
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions,
          },
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<bool?> isCupertinoProtectedDataAvailable() => (super.noSuchMethod(
        Invocation.method(
          #isCupertinoProtectedDataAvailable,
          [],
        ),
        returnValue: _i5.Future<bool?>.value(),
      ) as _i5.Future<bool?>);
}
