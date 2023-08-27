//
//  Generated code. Do not modify.
//  source: google/protobuf/api.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'source_context.pb.dart' as $0;
import 'type.pb.dart' as $2;
import 'type.pbenum.dart' as $2;

class Api extends $pb.GeneratedMessage {
  factory Api() => create();
  Api._() : super();
  factory Api.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Api.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Api', package: const $pb.PackageName(_omitMessageNames ? '' : 'google.protobuf'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pc<Method>(2, _omitFieldNames ? '' : 'methods', $pb.PbFieldType.PM, subBuilder: Method.create)
    ..pc<$2.Option>(3, _omitFieldNames ? '' : 'options', $pb.PbFieldType.PM, subBuilder: $2.Option.create)
    ..aOS(4, _omitFieldNames ? '' : 'version')
    ..aOM<$0.SourceContext>(5, _omitFieldNames ? '' : 'sourceContext', subBuilder: $0.SourceContext.create)
    ..pc<Mixin>(6, _omitFieldNames ? '' : 'mixins', $pb.PbFieldType.PM, subBuilder: Mixin.create)
    ..e<$2.Syntax>(7, _omitFieldNames ? '' : 'syntax', $pb.PbFieldType.OE, defaultOrMaker: $2.Syntax.SYNTAX_PROTO2, valueOf: $2.Syntax.valueOf, enumValues: $2.Syntax.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Api clone() => Api()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Api copyWith(void Function(Api) updates) => super.copyWith((message) => updates(message as Api)) as Api;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Api create() => Api._();
  Api createEmptyInstance() => create();
  static $pb.PbList<Api> createRepeated() => $pb.PbList<Api>();
  @$core.pragma('dart2js:noInline')
  static Api getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Api>(create);
  static Api? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Method> get methods => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$2.Option> get options => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get version => $_getSZ(3);
  @$pb.TagNumber(4)
  set version($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => clearField(4);

  @$pb.TagNumber(5)
  $0.SourceContext get sourceContext => $_getN(4);
  @$pb.TagNumber(5)
  set sourceContext($0.SourceContext v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSourceContext() => $_has(4);
  @$pb.TagNumber(5)
  void clearSourceContext() => clearField(5);
  @$pb.TagNumber(5)
  $0.SourceContext ensureSourceContext() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<Mixin> get mixins => $_getList(5);

  @$pb.TagNumber(7)
  $2.Syntax get syntax => $_getN(6);
  @$pb.TagNumber(7)
  set syntax($2.Syntax v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSyntax() => $_has(6);
  @$pb.TagNumber(7)
  void clearSyntax() => clearField(7);
}

class Method extends $pb.GeneratedMessage {
  factory Method() => create();
  Method._() : super();
  factory Method.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Method.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Method', package: const $pb.PackageName(_omitMessageNames ? '' : 'google.protobuf'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'requestTypeUrl')
    ..aOB(3, _omitFieldNames ? '' : 'requestStreaming')
    ..aOS(4, _omitFieldNames ? '' : 'responseTypeUrl')
    ..aOB(5, _omitFieldNames ? '' : 'responseStreaming')
    ..pc<$2.Option>(6, _omitFieldNames ? '' : 'options', $pb.PbFieldType.PM, subBuilder: $2.Option.create)
    ..e<$2.Syntax>(7, _omitFieldNames ? '' : 'syntax', $pb.PbFieldType.OE, defaultOrMaker: $2.Syntax.SYNTAX_PROTO2, valueOf: $2.Syntax.valueOf, enumValues: $2.Syntax.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Method clone() => Method()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Method copyWith(void Function(Method) updates) => super.copyWith((message) => updates(message as Method)) as Method;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Method create() => Method._();
  Method createEmptyInstance() => create();
  static $pb.PbList<Method> createRepeated() => $pb.PbList<Method>();
  @$core.pragma('dart2js:noInline')
  static Method getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Method>(create);
  static Method? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get requestTypeUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set requestTypeUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestTypeUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestTypeUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get requestStreaming => $_getBF(2);
  @$pb.TagNumber(3)
  set requestStreaming($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestStreaming() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestStreaming() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get responseTypeUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set responseTypeUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasResponseTypeUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearResponseTypeUrl() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get responseStreaming => $_getBF(4);
  @$pb.TagNumber(5)
  set responseStreaming($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasResponseStreaming() => $_has(4);
  @$pb.TagNumber(5)
  void clearResponseStreaming() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$2.Option> get options => $_getList(5);

  @$pb.TagNumber(7)
  $2.Syntax get syntax => $_getN(6);
  @$pb.TagNumber(7)
  set syntax($2.Syntax v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSyntax() => $_has(6);
  @$pb.TagNumber(7)
  void clearSyntax() => clearField(7);
}

class Mixin extends $pb.GeneratedMessage {
  factory Mixin() => create();
  Mixin._() : super();
  factory Mixin.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Mixin.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Mixin', package: const $pb.PackageName(_omitMessageNames ? '' : 'google.protobuf'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'root')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Mixin clone() => Mixin()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Mixin copyWith(void Function(Mixin) updates) => super.copyWith((message) => updates(message as Mixin)) as Mixin;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Mixin create() => Mixin._();
  Mixin createEmptyInstance() => create();
  static $pb.PbList<Mixin> createRepeated() => $pb.PbList<Mixin>();
  @$core.pragma('dart2js:noInline')
  static Mixin getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Mixin>(create);
  static Mixin? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get root => $_getSZ(1);
  @$pb.TagNumber(2)
  set root($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoot() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoot() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
