// Mocks generated by Mockito 5.4.2 from annotations
// in game_of_flutter/test/test_helper/mocks/miscellaneous/miscellaneous_mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:game_of_flutter/configs/app_configs.dart' as _i5;
import 'package:game_of_flutter/infrastructure/clients/app_client.dart' as _i3;
import 'package:http/http.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeClient_0 extends _i1.SmartFake implements _i2.Client {
  _FakeClient_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_1 extends _i1.SmartFake implements _i2.Response {
  _FakeResponse_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AppClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockAppClient extends _i1.Mock implements _i3.AppClient {
  MockAppClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Client get client => (super.noSuchMethod(
        Invocation.getter(#client),
        returnValue: _FakeClient_0(
          this,
          Invocation.getter(#client),
        ),
      ) as _i2.Client);
  @override
  _i4.Future<_i2.Response> get(
    Uri? uri, {
    Map<String, String>? headers = const {},
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [uri],
          {#headers: headers},
        ),
        returnValue: _i4.Future<_i2.Response>.value(_FakeResponse_1(
          this,
          Invocation.method(
            #get,
            [uri],
            {#headers: headers},
          ),
        )),
      ) as _i4.Future<_i2.Response>);
}

/// A class which mocks [AppConfigs].
///
/// See the documentation for Mockito's code generation for more information.
class MockAppConfigs extends _i1.Mock implements _i5.AppConfigs {
  MockAppConfigs() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get baseUrl => (super.noSuchMethod(
        Invocation.getter(#baseUrl),
        returnValue: '',
      ) as String);
  @override
  int get perPage => (super.noSuchMethod(
        Invocation.getter(#perPage),
        returnValue: 0,
      ) as int);
}
