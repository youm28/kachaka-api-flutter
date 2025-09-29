//
//  Generated code. Do not modify.
//  source: kachaka-api.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'kachaka-api.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'kachaka-api.pbenum.dart';

/// Common messages
class Metadata extends $pb.GeneratedMessage {
  factory Metadata({
    $fixnum.Int64? cursor,
  }) {
    final result = create();
    if (cursor != null) result.cursor = cursor;
    return result;
  }

  Metadata._();

  factory Metadata.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Metadata.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Metadata', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'cursor', $pb.PbFieldType.OSF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Metadata clone() => Metadata()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Metadata copyWith(void Function(Metadata) updates) => super.copyWith((message) => updates(message as Metadata)) as Metadata;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Metadata create() => Metadata._();
  @$core.override
  Metadata createEmptyInstance() => create();
  static $pb.PbList<Metadata> createRepeated() => $pb.PbList<Metadata>();
  @$core.pragma('dart2js:noInline')
  static Metadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Metadata>(create);
  static Metadata? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get cursor => $_getI64(0);
  @$pb.TagNumber(1)
  set cursor($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCursor() => $_has(0);
  @$pb.TagNumber(1)
  void clearCursor() => $_clearField(1);
}

class Result extends $pb.GeneratedMessage {
  factory Result({
    $core.bool? success,
    $core.int? errorCode,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (errorCode != null) result.errorCode = errorCode;
    return result;
  }

  Result._();

  factory Result.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Result.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Result', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'errorCode', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Result clone() => Result()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Result copyWith(void Function(Result) updates) => super.copyWith((message) => updates(message as Result)) as Result;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Result create() => Result._();
  @$core.override
  Result createEmptyInstance() => create();
  static $pb.PbList<Result> createRepeated() => $pb.PbList<Result>();
  @$core.pragma('dart2js:noInline')
  static Result getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Result>(create);
  static Result? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);

  @$pb.TagNumber(3)
  $core.int get errorCode => $_getIZ(1);
  @$pb.TagNumber(3)
  set errorCode($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(3)
  $core.bool hasErrorCode() => $_has(1);
  @$pb.TagNumber(3)
  void clearErrorCode() => $_clearField(3);
}

class Error extends $pb.GeneratedMessage {
  factory Error({
    $core.int? errorCode,
  }) {
    final result = create();
    if (errorCode != null) result.errorCode = errorCode;
    return result;
  }

  Error._();

  factory Error.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Error.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Error', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'errorCode', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Error clone() => Error()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Error copyWith(void Function(Error) updates) => super.copyWith((message) => updates(message as Error)) as Error;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Error create() => Error._();
  @$core.override
  Error createEmptyInstance() => create();
  static $pb.PbList<Error> createRepeated() => $pb.PbList<Error>();
  @$core.pragma('dart2js:noInline')
  static Error getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Error>(create);
  static Error? _defaultInstance;

  @$pb.TagNumber(2)
  $core.int get errorCode => $_getIZ(0);
  @$pb.TagNumber(2)
  set errorCode($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(2)
  $core.bool hasErrorCode() => $_has(0);
  @$pb.TagNumber(2)
  void clearErrorCode() => $_clearField(2);
}

class RosHeader extends $pb.GeneratedMessage {
  factory RosHeader({
    $fixnum.Int64? stampNsec,
    $core.String? frameId,
  }) {
    final result = create();
    if (stampNsec != null) result.stampNsec = stampNsec;
    if (frameId != null) result.frameId = frameId;
    return result;
  }

  RosHeader._();

  factory RosHeader.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory RosHeader.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RosHeader', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'stampNsec')
    ..aOS(2, _omitFieldNames ? '' : 'frameId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RosHeader clone() => RosHeader()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RosHeader copyWith(void Function(RosHeader) updates) => super.copyWith((message) => updates(message as RosHeader)) as RosHeader;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RosHeader create() => RosHeader._();
  @$core.override
  RosHeader createEmptyInstance() => create();
  static $pb.PbList<RosHeader> createRepeated() => $pb.PbList<RosHeader>();
  @$core.pragma('dart2js:noInline')
  static RosHeader getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RosHeader>(create);
  static RosHeader? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get stampNsec => $_getI64(0);
  @$pb.TagNumber(1)
  set stampNsec($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStampNsec() => $_has(0);
  @$pb.TagNumber(1)
  void clearStampNsec() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get frameId => $_getSZ(1);
  @$pb.TagNumber(2)
  set frameId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFrameId() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrameId() => $_clearField(2);
}

class Pose extends $pb.GeneratedMessage {
  factory Pose({
    $core.double? x,
    $core.double? y,
    $core.double? theta,
  }) {
    final result = create();
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    if (theta != null) result.theta = theta;
    return result;
  }

  Pose._();

  factory Pose.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Pose.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Pose', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'y', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'theta', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pose clone() => Pose()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pose copyWith(void Function(Pose) updates) => super.copyWith((message) => updates(message as Pose)) as Pose;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Pose create() => Pose._();
  @$core.override
  Pose createEmptyInstance() => create();
  static $pb.PbList<Pose> createRepeated() => $pb.PbList<Pose>();
  @$core.pragma('dart2js:noInline')
  static Pose getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pose>(create);
  static Pose? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get theta => $_getN(2);
  @$pb.TagNumber(3)
  set theta($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTheta() => $_has(2);
  @$pb.TagNumber(3)
  void clearTheta() => $_clearField(3);
}

class Vector3 extends $pb.GeneratedMessage {
  factory Vector3({
    $core.double? x,
    $core.double? y,
    $core.double? z,
  }) {
    final result = create();
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    if (z != null) result.z = z;
    return result;
  }

  Vector3._();

  factory Vector3.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Vector3.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Vector3', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'y', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'z', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Vector3 clone() => Vector3()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Vector3 copyWith(void Function(Vector3) updates) => super.copyWith((message) => updates(message as Vector3)) as Vector3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Vector3 create() => Vector3._();
  @$core.override
  Vector3 createEmptyInstance() => create();
  static $pb.PbList<Vector3> createRepeated() => $pb.PbList<Vector3>();
  @$core.pragma('dart2js:noInline')
  static Vector3 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Vector3>(create);
  static Vector3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get z => $_getN(2);
  @$pb.TagNumber(3)
  set z($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasZ() => $_has(2);
  @$pb.TagNumber(3)
  void clearZ() => $_clearField(3);
}

class Quaternion extends $pb.GeneratedMessage {
  factory Quaternion({
    $core.double? x,
    $core.double? y,
    $core.double? z,
    $core.double? w,
  }) {
    final result = create();
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    if (z != null) result.z = z;
    if (w != null) result.w = w;
    return result;
  }

  Quaternion._();

  factory Quaternion.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Quaternion.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Quaternion', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'y', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'z', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'w', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Quaternion clone() => Quaternion()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Quaternion copyWith(void Function(Quaternion) updates) => super.copyWith((message) => updates(message as Quaternion)) as Quaternion;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Quaternion create() => Quaternion._();
  @$core.override
  Quaternion createEmptyInstance() => create();
  static $pb.PbList<Quaternion> createRepeated() => $pb.PbList<Quaternion>();
  @$core.pragma('dart2js:noInline')
  static Quaternion getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Quaternion>(create);
  static Quaternion? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get z => $_getN(2);
  @$pb.TagNumber(3)
  set z($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasZ() => $_has(2);
  @$pb.TagNumber(3)
  void clearZ() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get w => $_getN(3);
  @$pb.TagNumber(4)
  set w($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasW() => $_has(3);
  @$pb.TagNumber(4)
  void clearW() => $_clearField(4);
}

class Pose3d extends $pb.GeneratedMessage {
  factory Pose3d({
    Vector3? position,
    Quaternion? orientation,
  }) {
    final result = create();
    if (position != null) result.position = position;
    if (orientation != null) result.orientation = orientation;
    return result;
  }

  Pose3d._();

  factory Pose3d.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Pose3d.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Pose3d', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Vector3>(1, _omitFieldNames ? '' : 'position', subBuilder: Vector3.create)
    ..aOM<Quaternion>(2, _omitFieldNames ? '' : 'orientation', subBuilder: Quaternion.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pose3d clone() => Pose3d()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pose3d copyWith(void Function(Pose3d) updates) => super.copyWith((message) => updates(message as Pose3d)) as Pose3d;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Pose3d create() => Pose3d._();
  @$core.override
  Pose3d createEmptyInstance() => create();
  static $pb.PbList<Pose3d> createRepeated() => $pb.PbList<Pose3d>();
  @$core.pragma('dart2js:noInline')
  static Pose3d getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pose3d>(create);
  static Pose3d? _defaultInstance;

  @$pb.TagNumber(1)
  Vector3 get position => $_getN(0);
  @$pb.TagNumber(1)
  set position(Vector3 value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPosition() => $_has(0);
  @$pb.TagNumber(1)
  void clearPosition() => $_clearField(1);
  @$pb.TagNumber(1)
  Vector3 ensurePosition() => $_ensure(0);

  @$pb.TagNumber(2)
  Quaternion get orientation => $_getN(1);
  @$pb.TagNumber(2)
  set orientation(Quaternion value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOrientation() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrientation() => $_clearField(2);
  @$pb.TagNumber(2)
  Quaternion ensureOrientation() => $_ensure(1);
}

class Twist extends $pb.GeneratedMessage {
  factory Twist({
    Vector3? linear,
    Vector3? angular,
  }) {
    final result = create();
    if (linear != null) result.linear = linear;
    if (angular != null) result.angular = angular;
    return result;
  }

  Twist._();

  factory Twist.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Twist.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Twist', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Vector3>(1, _omitFieldNames ? '' : 'linear', subBuilder: Vector3.create)
    ..aOM<Vector3>(2, _omitFieldNames ? '' : 'angular', subBuilder: Vector3.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Twist clone() => Twist()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Twist copyWith(void Function(Twist) updates) => super.copyWith((message) => updates(message as Twist)) as Twist;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Twist create() => Twist._();
  @$core.override
  Twist createEmptyInstance() => create();
  static $pb.PbList<Twist> createRepeated() => $pb.PbList<Twist>();
  @$core.pragma('dart2js:noInline')
  static Twist getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Twist>(create);
  static Twist? _defaultInstance;

  @$pb.TagNumber(1)
  Vector3 get linear => $_getN(0);
  @$pb.TagNumber(1)
  set linear(Vector3 value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasLinear() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinear() => $_clearField(1);
  @$pb.TagNumber(1)
  Vector3 ensureLinear() => $_ensure(0);

  @$pb.TagNumber(2)
  Vector3 get angular => $_getN(1);
  @$pb.TagNumber(2)
  set angular(Vector3 value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAngular() => $_has(1);
  @$pb.TagNumber(2)
  void clearAngular() => $_clearField(2);
  @$pb.TagNumber(2)
  Vector3 ensureAngular() => $_ensure(1);
}

class Pose3dWithCovariance extends $pb.GeneratedMessage {
  factory Pose3dWithCovariance({
    Pose3d? pose,
    $core.Iterable<$core.double>? covariance,
  }) {
    final result = create();
    if (pose != null) result.pose = pose;
    if (covariance != null) result.covariance.addAll(covariance);
    return result;
  }

  Pose3dWithCovariance._();

  factory Pose3dWithCovariance.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Pose3dWithCovariance.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Pose3dWithCovariance', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Pose3d>(1, _omitFieldNames ? '' : 'pose', subBuilder: Pose3d.create)
    ..p<$core.double>(2, _omitFieldNames ? '' : 'covariance', $pb.PbFieldType.KD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pose3dWithCovariance clone() => Pose3dWithCovariance()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pose3dWithCovariance copyWith(void Function(Pose3dWithCovariance) updates) => super.copyWith((message) => updates(message as Pose3dWithCovariance)) as Pose3dWithCovariance;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Pose3dWithCovariance create() => Pose3dWithCovariance._();
  @$core.override
  Pose3dWithCovariance createEmptyInstance() => create();
  static $pb.PbList<Pose3dWithCovariance> createRepeated() => $pb.PbList<Pose3dWithCovariance>();
  @$core.pragma('dart2js:noInline')
  static Pose3dWithCovariance getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pose3dWithCovariance>(create);
  static Pose3dWithCovariance? _defaultInstance;

  @$pb.TagNumber(1)
  Pose3d get pose => $_getN(0);
  @$pb.TagNumber(1)
  set pose(Pose3d value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPose() => $_has(0);
  @$pb.TagNumber(1)
  void clearPose() => $_clearField(1);
  @$pb.TagNumber(1)
  Pose3d ensurePose() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<$core.double> get covariance => $_getList(1);
}

class TwistWithCovariance extends $pb.GeneratedMessage {
  factory TwistWithCovariance({
    Twist? twist,
    $core.Iterable<$core.double>? covariance,
  }) {
    final result = create();
    if (twist != null) result.twist = twist;
    if (covariance != null) result.covariance.addAll(covariance);
    return result;
  }

  TwistWithCovariance._();

  factory TwistWithCovariance.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory TwistWithCovariance.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TwistWithCovariance', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Twist>(1, _omitFieldNames ? '' : 'twist', subBuilder: Twist.create)
    ..p<$core.double>(2, _omitFieldNames ? '' : 'covariance', $pb.PbFieldType.KD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TwistWithCovariance clone() => TwistWithCovariance()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TwistWithCovariance copyWith(void Function(TwistWithCovariance) updates) => super.copyWith((message) => updates(message as TwistWithCovariance)) as TwistWithCovariance;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TwistWithCovariance create() => TwistWithCovariance._();
  @$core.override
  TwistWithCovariance createEmptyInstance() => create();
  static $pb.PbList<TwistWithCovariance> createRepeated() => $pb.PbList<TwistWithCovariance>();
  @$core.pragma('dart2js:noInline')
  static TwistWithCovariance getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TwistWithCovariance>(create);
  static TwistWithCovariance? _defaultInstance;

  @$pb.TagNumber(1)
  Twist get twist => $_getN(0);
  @$pb.TagNumber(1)
  set twist(Twist value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTwist() => $_has(0);
  @$pb.TagNumber(1)
  void clearTwist() => $_clearField(1);
  @$pb.TagNumber(1)
  Twist ensureTwist() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<$core.double> get covariance => $_getList(1);
}

class Map_ extends $pb.GeneratedMessage {
  factory Map_({
    $core.List<$core.int>? data,
    $core.String? name,
    $core.double? resolution,
    $core.int? width,
    $core.int? height,
    Pose? origin,
  }) {
    final result = create();
    if (data != null) result.data = data;
    if (name != null) result.name = name;
    if (resolution != null) result.resolution = resolution;
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    if (origin != null) result.origin = origin;
    return result;
  }

  Map_._();

  factory Map_.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Map_.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Map', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'resolution', $pb.PbFieldType.OD)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'width', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'height', $pb.PbFieldType.O3)
    ..aOM<Pose>(6, _omitFieldNames ? '' : 'origin', subBuilder: Pose.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Map_ clone() => Map_()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Map_ copyWith(void Function(Map_) updates) => super.copyWith((message) => updates(message as Map_)) as Map_;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Map_ create() => Map_._();
  @$core.override
  Map_ createEmptyInstance() => create();
  static $pb.PbList<Map_> createRepeated() => $pb.PbList<Map_>();
  @$core.pragma('dart2js:noInline')
  static Map_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Map_>(create);
  static Map_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get resolution => $_getN(2);
  @$pb.TagNumber(3)
  set resolution($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasResolution() => $_has(2);
  @$pb.TagNumber(3)
  void clearResolution() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get width => $_getIZ(3);
  @$pb.TagNumber(4)
  set width($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasWidth() => $_has(3);
  @$pb.TagNumber(4)
  void clearWidth() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get height => $_getIZ(4);
  @$pb.TagNumber(5)
  set height($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasHeight() => $_has(4);
  @$pb.TagNumber(5)
  void clearHeight() => $_clearField(5);

  @$pb.TagNumber(6)
  Pose get origin => $_getN(5);
  @$pb.TagNumber(6)
  set origin(Pose value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasOrigin() => $_has(5);
  @$pb.TagNumber(6)
  void clearOrigin() => $_clearField(6);
  @$pb.TagNumber(6)
  Pose ensureOrigin() => $_ensure(5);
}

class Location extends $pb.GeneratedMessage {
  factory Location({
    $core.String? id,
    $core.String? name,
    Pose? pose,
    LocationType? type,
    $core.bool? undockShelfAligningToWall,
    $core.bool? undockShelfAvoidingObstacles,
    $core.bool? ignoreVoiceRecognition,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (pose != null) result.pose = pose;
    if (type != null) result.type = type;
    if (undockShelfAligningToWall != null) result.undockShelfAligningToWall = undockShelfAligningToWall;
    if (undockShelfAvoidingObstacles != null) result.undockShelfAvoidingObstacles = undockShelfAvoidingObstacles;
    if (ignoreVoiceRecognition != null) result.ignoreVoiceRecognition = ignoreVoiceRecognition;
    return result;
  }

  Location._();

  factory Location.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Location.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Location', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<Pose>(3, _omitFieldNames ? '' : 'pose', subBuilder: Pose.create)
    ..e<LocationType>(4, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: LocationType.LOCATION_TYPE_UNSPECIFIED, valueOf: LocationType.valueOf, enumValues: LocationType.values)
    ..aOB(5, _omitFieldNames ? '' : 'undockShelfAligningToWall')
    ..aOB(6, _omitFieldNames ? '' : 'undockShelfAvoidingObstacles')
    ..aOB(7, _omitFieldNames ? '' : 'ignoreVoiceRecognition')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Location clone() => Location()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Location copyWith(void Function(Location) updates) => super.copyWith((message) => updates(message as Location)) as Location;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Location create() => Location._();
  @$core.override
  Location createEmptyInstance() => create();
  static $pb.PbList<Location> createRepeated() => $pb.PbList<Location>();
  @$core.pragma('dart2js:noInline')
  static Location getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Location>(create);
  static Location? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  Pose get pose => $_getN(2);
  @$pb.TagNumber(3)
  set pose(Pose value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasPose() => $_has(2);
  @$pb.TagNumber(3)
  void clearPose() => $_clearField(3);
  @$pb.TagNumber(3)
  Pose ensurePose() => $_ensure(2);

  @$pb.TagNumber(4)
  LocationType get type => $_getN(3);
  @$pb.TagNumber(4)
  set type(LocationType value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get undockShelfAligningToWall => $_getBF(4);
  @$pb.TagNumber(5)
  set undockShelfAligningToWall($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasUndockShelfAligningToWall() => $_has(4);
  @$pb.TagNumber(5)
  void clearUndockShelfAligningToWall() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get undockShelfAvoidingObstacles => $_getBF(5);
  @$pb.TagNumber(6)
  set undockShelfAvoidingObstacles($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasUndockShelfAvoidingObstacles() => $_has(5);
  @$pb.TagNumber(6)
  void clearUndockShelfAvoidingObstacles() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get ignoreVoiceRecognition => $_getBF(6);
  @$pb.TagNumber(7)
  set ignoreVoiceRecognition($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasIgnoreVoiceRecognition() => $_has(6);
  @$pb.TagNumber(7)
  void clearIgnoreVoiceRecognition() => $_clearField(7);
}

class ShelfSize extends $pb.GeneratedMessage {
  factory ShelfSize({
    $core.double? width,
    $core.double? depth,
    $core.double? height,
  }) {
    final result = create();
    if (width != null) result.width = width;
    if (depth != null) result.depth = depth;
    if (height != null) result.height = height;
    return result;
  }

  ShelfSize._();

  factory ShelfSize.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ShelfSize.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShelfSize', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'width', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'depth', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'height', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShelfSize clone() => ShelfSize()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShelfSize copyWith(void Function(ShelfSize) updates) => super.copyWith((message) => updates(message as ShelfSize)) as ShelfSize;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShelfSize create() => ShelfSize._();
  @$core.override
  ShelfSize createEmptyInstance() => create();
  static $pb.PbList<ShelfSize> createRepeated() => $pb.PbList<ShelfSize>();
  @$core.pragma('dart2js:noInline')
  static ShelfSize getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShelfSize>(create);
  static ShelfSize? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get width => $_getN(0);
  @$pb.TagNumber(1)
  set width($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWidth() => $_has(0);
  @$pb.TagNumber(1)
  void clearWidth() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get depth => $_getN(1);
  @$pb.TagNumber(2)
  set depth($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDepth() => $_has(1);
  @$pb.TagNumber(2)
  void clearDepth() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get height => $_getN(2);
  @$pb.TagNumber(3)
  set height($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeight() => $_clearField(3);
}

class RecognizableName extends $pb.GeneratedMessage {
  factory RecognizableName({
    $core.String? name,
    $core.bool? deletable,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (deletable != null) result.deletable = deletable;
    return result;
  }

  RecognizableName._();

  factory RecognizableName.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory RecognizableName.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RecognizableName', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOB(2, _omitFieldNames ? '' : 'deletable')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecognizableName clone() => RecognizableName()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecognizableName copyWith(void Function(RecognizableName) updates) => super.copyWith((message) => updates(message as RecognizableName)) as RecognizableName;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecognizableName create() => RecognizableName._();
  @$core.override
  RecognizableName createEmptyInstance() => create();
  static $pb.PbList<RecognizableName> createRepeated() => $pb.PbList<RecognizableName>();
  @$core.pragma('dart2js:noInline')
  static RecognizableName getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecognizableName>(create);
  static RecognizableName? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get deletable => $_getBF(1);
  @$pb.TagNumber(2)
  set deletable($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDeletable() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeletable() => $_clearField(2);
}

class Shelf extends $pb.GeneratedMessage {
  factory Shelf({
    $core.String? id,
    $core.String? name,
    Pose? pose,
    ShelfSize? size,
    ShelfAppearance? appearance,
    $core.Iterable<RecognizableName>? recognizableNames,
    $core.String? homeLocationId,
    ShelfSpeedMode? speedMode,
    $core.bool? ignoreVoiceRecognition,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (pose != null) result.pose = pose;
    if (size != null) result.size = size;
    if (appearance != null) result.appearance = appearance;
    if (recognizableNames != null) result.recognizableNames.addAll(recognizableNames);
    if (homeLocationId != null) result.homeLocationId = homeLocationId;
    if (speedMode != null) result.speedMode = speedMode;
    if (ignoreVoiceRecognition != null) result.ignoreVoiceRecognition = ignoreVoiceRecognition;
    return result;
  }

  Shelf._();

  factory Shelf.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Shelf.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Shelf', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<Pose>(3, _omitFieldNames ? '' : 'pose', subBuilder: Pose.create)
    ..aOM<ShelfSize>(4, _omitFieldNames ? '' : 'size', subBuilder: ShelfSize.create)
    ..e<ShelfAppearance>(5, _omitFieldNames ? '' : 'appearance', $pb.PbFieldType.OE, defaultOrMaker: ShelfAppearance.SHELF_APPEARANCE_UNSPECIFIED, valueOf: ShelfAppearance.valueOf, enumValues: ShelfAppearance.values)
    ..pc<RecognizableName>(7, _omitFieldNames ? '' : 'recognizableNames', $pb.PbFieldType.PM, subBuilder: RecognizableName.create)
    ..aOS(8, _omitFieldNames ? '' : 'homeLocationId')
    ..e<ShelfSpeedMode>(9, _omitFieldNames ? '' : 'speedMode', $pb.PbFieldType.OE, defaultOrMaker: ShelfSpeedMode.SHELF_SPEED_MODE_UNSPECIFIED, valueOf: ShelfSpeedMode.valueOf, enumValues: ShelfSpeedMode.values)
    ..aOB(10, _omitFieldNames ? '' : 'ignoreVoiceRecognition')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Shelf clone() => Shelf()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Shelf copyWith(void Function(Shelf) updates) => super.copyWith((message) => updates(message as Shelf)) as Shelf;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Shelf create() => Shelf._();
  @$core.override
  Shelf createEmptyInstance() => create();
  static $pb.PbList<Shelf> createRepeated() => $pb.PbList<Shelf>();
  @$core.pragma('dart2js:noInline')
  static Shelf getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Shelf>(create);
  static Shelf? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  Pose get pose => $_getN(2);
  @$pb.TagNumber(3)
  set pose(Pose value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasPose() => $_has(2);
  @$pb.TagNumber(3)
  void clearPose() => $_clearField(3);
  @$pb.TagNumber(3)
  Pose ensurePose() => $_ensure(2);

  @$pb.TagNumber(4)
  ShelfSize get size => $_getN(3);
  @$pb.TagNumber(4)
  set size(ShelfSize value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearSize() => $_clearField(4);
  @$pb.TagNumber(4)
  ShelfSize ensureSize() => $_ensure(3);

  @$pb.TagNumber(5)
  ShelfAppearance get appearance => $_getN(4);
  @$pb.TagNumber(5)
  set appearance(ShelfAppearance value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasAppearance() => $_has(4);
  @$pb.TagNumber(5)
  void clearAppearance() => $_clearField(5);

  @$pb.TagNumber(7)
  $pb.PbList<RecognizableName> get recognizableNames => $_getList(5);

  @$pb.TagNumber(8)
  $core.String get homeLocationId => $_getSZ(6);
  @$pb.TagNumber(8)
  set homeLocationId($core.String value) => $_setString(6, value);
  @$pb.TagNumber(8)
  $core.bool hasHomeLocationId() => $_has(6);
  @$pb.TagNumber(8)
  void clearHomeLocationId() => $_clearField(8);

  @$pb.TagNumber(9)
  ShelfSpeedMode get speedMode => $_getN(7);
  @$pb.TagNumber(9)
  set speedMode(ShelfSpeedMode value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasSpeedMode() => $_has(7);
  @$pb.TagNumber(9)
  void clearSpeedMode() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.bool get ignoreVoiceRecognition => $_getBF(8);
  @$pb.TagNumber(10)
  set ignoreVoiceRecognition($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(10)
  $core.bool hasIgnoreVoiceRecognition() => $_has(8);
  @$pb.TagNumber(10)
  void clearIgnoreVoiceRecognition() => $_clearField(10);
}

class RosImu extends $pb.GeneratedMessage {
  factory RosImu({
    RosHeader? header,
    Quaternion? orientation,
    $core.Iterable<$core.double>? orientationCovariance,
    Vector3? angularVelocity,
    $core.Iterable<$core.double>? angularVelocityCovariance,
    Vector3? linearAcceleration,
    $core.Iterable<$core.double>? linearAccelerationCovariance,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (orientation != null) result.orientation = orientation;
    if (orientationCovariance != null) result.orientationCovariance.addAll(orientationCovariance);
    if (angularVelocity != null) result.angularVelocity = angularVelocity;
    if (angularVelocityCovariance != null) result.angularVelocityCovariance.addAll(angularVelocityCovariance);
    if (linearAcceleration != null) result.linearAcceleration = linearAcceleration;
    if (linearAccelerationCovariance != null) result.linearAccelerationCovariance.addAll(linearAccelerationCovariance);
    return result;
  }

  RosImu._();

  factory RosImu.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory RosImu.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RosImu', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<RosHeader>(1, _omitFieldNames ? '' : 'header', subBuilder: RosHeader.create)
    ..aOM<Quaternion>(2, _omitFieldNames ? '' : 'orientation', subBuilder: Quaternion.create)
    ..p<$core.double>(3, _omitFieldNames ? '' : 'orientationCovariance', $pb.PbFieldType.KD)
    ..aOM<Vector3>(4, _omitFieldNames ? '' : 'angularVelocity', subBuilder: Vector3.create)
    ..p<$core.double>(5, _omitFieldNames ? '' : 'angularVelocityCovariance', $pb.PbFieldType.KD)
    ..aOM<Vector3>(6, _omitFieldNames ? '' : 'linearAcceleration', subBuilder: Vector3.create)
    ..p<$core.double>(7, _omitFieldNames ? '' : 'linearAccelerationCovariance', $pb.PbFieldType.KD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RosImu clone() => RosImu()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RosImu copyWith(void Function(RosImu) updates) => super.copyWith((message) => updates(message as RosImu)) as RosImu;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RosImu create() => RosImu._();
  @$core.override
  RosImu createEmptyInstance() => create();
  static $pb.PbList<RosImu> createRepeated() => $pb.PbList<RosImu>();
  @$core.pragma('dart2js:noInline')
  static RosImu getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RosImu>(create);
  static RosImu? _defaultInstance;

  @$pb.TagNumber(1)
  RosHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(RosHeader value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => $_clearField(1);
  @$pb.TagNumber(1)
  RosHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  Quaternion get orientation => $_getN(1);
  @$pb.TagNumber(2)
  set orientation(Quaternion value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOrientation() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrientation() => $_clearField(2);
  @$pb.TagNumber(2)
  Quaternion ensureOrientation() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbList<$core.double> get orientationCovariance => $_getList(2);

  @$pb.TagNumber(4)
  Vector3 get angularVelocity => $_getN(3);
  @$pb.TagNumber(4)
  set angularVelocity(Vector3 value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasAngularVelocity() => $_has(3);
  @$pb.TagNumber(4)
  void clearAngularVelocity() => $_clearField(4);
  @$pb.TagNumber(4)
  Vector3 ensureAngularVelocity() => $_ensure(3);

  @$pb.TagNumber(5)
  $pb.PbList<$core.double> get angularVelocityCovariance => $_getList(4);

  @$pb.TagNumber(6)
  Vector3 get linearAcceleration => $_getN(5);
  @$pb.TagNumber(6)
  set linearAcceleration(Vector3 value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasLinearAcceleration() => $_has(5);
  @$pb.TagNumber(6)
  void clearLinearAcceleration() => $_clearField(6);
  @$pb.TagNumber(6)
  Vector3 ensureLinearAcceleration() => $_ensure(5);

  @$pb.TagNumber(7)
  $pb.PbList<$core.double> get linearAccelerationCovariance => $_getList(6);
}

class RosOdometry extends $pb.GeneratedMessage {
  factory RosOdometry({
    RosHeader? header,
    $core.String? childFrameId,
    Pose3dWithCovariance? pose,
    TwistWithCovariance? twist,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (childFrameId != null) result.childFrameId = childFrameId;
    if (pose != null) result.pose = pose;
    if (twist != null) result.twist = twist;
    return result;
  }

  RosOdometry._();

  factory RosOdometry.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory RosOdometry.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RosOdometry', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<RosHeader>(1, _omitFieldNames ? '' : 'header', subBuilder: RosHeader.create)
    ..aOS(2, _omitFieldNames ? '' : 'childFrameId')
    ..aOM<Pose3dWithCovariance>(3, _omitFieldNames ? '' : 'pose', subBuilder: Pose3dWithCovariance.create)
    ..aOM<TwistWithCovariance>(4, _omitFieldNames ? '' : 'twist', subBuilder: TwistWithCovariance.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RosOdometry clone() => RosOdometry()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RosOdometry copyWith(void Function(RosOdometry) updates) => super.copyWith((message) => updates(message as RosOdometry)) as RosOdometry;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RosOdometry create() => RosOdometry._();
  @$core.override
  RosOdometry createEmptyInstance() => create();
  static $pb.PbList<RosOdometry> createRepeated() => $pb.PbList<RosOdometry>();
  @$core.pragma('dart2js:noInline')
  static RosOdometry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RosOdometry>(create);
  static RosOdometry? _defaultInstance;

  @$pb.TagNumber(1)
  RosHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(RosHeader value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => $_clearField(1);
  @$pb.TagNumber(1)
  RosHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get childFrameId => $_getSZ(1);
  @$pb.TagNumber(2)
  set childFrameId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasChildFrameId() => $_has(1);
  @$pb.TagNumber(2)
  void clearChildFrameId() => $_clearField(2);

  @$pb.TagNumber(3)
  Pose3dWithCovariance get pose => $_getN(2);
  @$pb.TagNumber(3)
  set pose(Pose3dWithCovariance value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasPose() => $_has(2);
  @$pb.TagNumber(3)
  void clearPose() => $_clearField(3);
  @$pb.TagNumber(3)
  Pose3dWithCovariance ensurePose() => $_ensure(2);

  @$pb.TagNumber(4)
  TwistWithCovariance get twist => $_getN(3);
  @$pb.TagNumber(4)
  set twist(TwistWithCovariance value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTwist() => $_has(3);
  @$pb.TagNumber(4)
  void clearTwist() => $_clearField(4);
  @$pb.TagNumber(4)
  TwistWithCovariance ensureTwist() => $_ensure(3);
}

class RosLaserScan extends $pb.GeneratedMessage {
  factory RosLaserScan({
    RosHeader? header,
    $core.double? angleMin,
    $core.double? angleMax,
    $core.double? angleIncrement,
    $core.double? timeIncrement,
    $core.double? scanTime,
    $core.double? rangeMin,
    $core.double? rangeMax,
    $core.Iterable<$core.double>? ranges,
    $core.Iterable<$core.double>? intensities,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (angleMin != null) result.angleMin = angleMin;
    if (angleMax != null) result.angleMax = angleMax;
    if (angleIncrement != null) result.angleIncrement = angleIncrement;
    if (timeIncrement != null) result.timeIncrement = timeIncrement;
    if (scanTime != null) result.scanTime = scanTime;
    if (rangeMin != null) result.rangeMin = rangeMin;
    if (rangeMax != null) result.rangeMax = rangeMax;
    if (ranges != null) result.ranges.addAll(ranges);
    if (intensities != null) result.intensities.addAll(intensities);
    return result;
  }

  RosLaserScan._();

  factory RosLaserScan.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory RosLaserScan.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RosLaserScan', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<RosHeader>(1, _omitFieldNames ? '' : 'header', subBuilder: RosHeader.create)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'angleMin', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'angleMax', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'angleIncrement', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'timeIncrement', $pb.PbFieldType.OD)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'scanTime', $pb.PbFieldType.OD)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'rangeMin', $pb.PbFieldType.OD)
    ..a<$core.double>(8, _omitFieldNames ? '' : 'rangeMax', $pb.PbFieldType.OD)
    ..p<$core.double>(9, _omitFieldNames ? '' : 'ranges', $pb.PbFieldType.KD)
    ..p<$core.double>(10, _omitFieldNames ? '' : 'intensities', $pb.PbFieldType.KD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RosLaserScan clone() => RosLaserScan()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RosLaserScan copyWith(void Function(RosLaserScan) updates) => super.copyWith((message) => updates(message as RosLaserScan)) as RosLaserScan;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RosLaserScan create() => RosLaserScan._();
  @$core.override
  RosLaserScan createEmptyInstance() => create();
  static $pb.PbList<RosLaserScan> createRepeated() => $pb.PbList<RosLaserScan>();
  @$core.pragma('dart2js:noInline')
  static RosLaserScan getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RosLaserScan>(create);
  static RosLaserScan? _defaultInstance;

  @$pb.TagNumber(1)
  RosHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(RosHeader value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => $_clearField(1);
  @$pb.TagNumber(1)
  RosHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get angleMin => $_getN(1);
  @$pb.TagNumber(2)
  set angleMin($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAngleMin() => $_has(1);
  @$pb.TagNumber(2)
  void clearAngleMin() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get angleMax => $_getN(2);
  @$pb.TagNumber(3)
  set angleMax($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAngleMax() => $_has(2);
  @$pb.TagNumber(3)
  void clearAngleMax() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get angleIncrement => $_getN(3);
  @$pb.TagNumber(4)
  set angleIncrement($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAngleIncrement() => $_has(3);
  @$pb.TagNumber(4)
  void clearAngleIncrement() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get timeIncrement => $_getN(4);
  @$pb.TagNumber(5)
  set timeIncrement($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTimeIncrement() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimeIncrement() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get scanTime => $_getN(5);
  @$pb.TagNumber(6)
  set scanTime($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasScanTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearScanTime() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get rangeMin => $_getN(6);
  @$pb.TagNumber(7)
  set rangeMin($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasRangeMin() => $_has(6);
  @$pb.TagNumber(7)
  void clearRangeMin() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get rangeMax => $_getN(7);
  @$pb.TagNumber(8)
  set rangeMax($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasRangeMax() => $_has(7);
  @$pb.TagNumber(8)
  void clearRangeMax() => $_clearField(8);

  @$pb.TagNumber(9)
  $pb.PbList<$core.double> get ranges => $_getList(8);

  @$pb.TagNumber(10)
  $pb.PbList<$core.double> get intensities => $_getList(9);
}

class RegionOfInterest extends $pb.GeneratedMessage {
  factory RegionOfInterest({
    $core.int? xOffset,
    $core.int? yOffset,
    $core.int? height,
    $core.int? width,
    $core.bool? doRectify,
  }) {
    final result = create();
    if (xOffset != null) result.xOffset = xOffset;
    if (yOffset != null) result.yOffset = yOffset;
    if (height != null) result.height = height;
    if (width != null) result.width = width;
    if (doRectify != null) result.doRectify = doRectify;
    return result;
  }

  RegionOfInterest._();

  factory RegionOfInterest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory RegionOfInterest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegionOfInterest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'xOffset', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'yOffset', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'height', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'width', $pb.PbFieldType.OU3)
    ..aOB(5, _omitFieldNames ? '' : 'doRectify')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegionOfInterest clone() => RegionOfInterest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegionOfInterest copyWith(void Function(RegionOfInterest) updates) => super.copyWith((message) => updates(message as RegionOfInterest)) as RegionOfInterest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegionOfInterest create() => RegionOfInterest._();
  @$core.override
  RegionOfInterest createEmptyInstance() => create();
  static $pb.PbList<RegionOfInterest> createRepeated() => $pb.PbList<RegionOfInterest>();
  @$core.pragma('dart2js:noInline')
  static RegionOfInterest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegionOfInterest>(create);
  static RegionOfInterest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get xOffset => $_getIZ(0);
  @$pb.TagNumber(1)
  set xOffset($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasXOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearXOffset() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get yOffset => $_getIZ(1);
  @$pb.TagNumber(2)
  set yOffset($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasYOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearYOffset() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get height => $_getIZ(2);
  @$pb.TagNumber(3)
  set height($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeight() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get width => $_getIZ(3);
  @$pb.TagNumber(4)
  set width($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasWidth() => $_has(3);
  @$pb.TagNumber(4)
  void clearWidth() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get doRectify => $_getBF(4);
  @$pb.TagNumber(5)
  set doRectify($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDoRectify() => $_has(4);
  @$pb.TagNumber(5)
  void clearDoRectify() => $_clearField(5);
}

class RosCameraInfo extends $pb.GeneratedMessage {
  factory RosCameraInfo({
    RosHeader? header,
    $core.int? height,
    $core.int? width,
    $core.String? distortionModel,
    $core.Iterable<$core.double>? d,
    $core.Iterable<$core.double>? k,
    $core.Iterable<$core.double>? r,
    $core.Iterable<$core.double>? p,
    $core.int? binningX,
    $core.int? binningY,
    RegionOfInterest? roi,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (height != null) result.height = height;
    if (width != null) result.width = width;
    if (distortionModel != null) result.distortionModel = distortionModel;
    if (d != null) result.d.addAll(d);
    if (k != null) result.k.addAll(k);
    if (r != null) result.r.addAll(r);
    if (p != null) result.p.addAll(p);
    if (binningX != null) result.binningX = binningX;
    if (binningY != null) result.binningY = binningY;
    if (roi != null) result.roi = roi;
    return result;
  }

  RosCameraInfo._();

  factory RosCameraInfo.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory RosCameraInfo.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RosCameraInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<RosHeader>(1, _omitFieldNames ? '' : 'header', subBuilder: RosHeader.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'height', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'width', $pb.PbFieldType.OU3)
    ..aOS(4, _omitFieldNames ? '' : 'distortionModel')
    ..p<$core.double>(5, _omitFieldNames ? '' : 'D', $pb.PbFieldType.KD, protoName: 'D')
    ..p<$core.double>(6, _omitFieldNames ? '' : 'K', $pb.PbFieldType.KD, protoName: 'K')
    ..p<$core.double>(7, _omitFieldNames ? '' : 'R', $pb.PbFieldType.KD, protoName: 'R')
    ..p<$core.double>(8, _omitFieldNames ? '' : 'P', $pb.PbFieldType.KD, protoName: 'P')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'binningX', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'binningY', $pb.PbFieldType.OU3)
    ..aOM<RegionOfInterest>(11, _omitFieldNames ? '' : 'roi', subBuilder: RegionOfInterest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RosCameraInfo clone() => RosCameraInfo()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RosCameraInfo copyWith(void Function(RosCameraInfo) updates) => super.copyWith((message) => updates(message as RosCameraInfo)) as RosCameraInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RosCameraInfo create() => RosCameraInfo._();
  @$core.override
  RosCameraInfo createEmptyInstance() => create();
  static $pb.PbList<RosCameraInfo> createRepeated() => $pb.PbList<RosCameraInfo>();
  @$core.pragma('dart2js:noInline')
  static RosCameraInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RosCameraInfo>(create);
  static RosCameraInfo? _defaultInstance;

  @$pb.TagNumber(1)
  RosHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(RosHeader value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => $_clearField(1);
  @$pb.TagNumber(1)
  RosHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get height => $_getIZ(1);
  @$pb.TagNumber(2)
  set height($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeight() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get width => $_getIZ(2);
  @$pb.TagNumber(3)
  set width($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasWidth() => $_has(2);
  @$pb.TagNumber(3)
  void clearWidth() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get distortionModel => $_getSZ(3);
  @$pb.TagNumber(4)
  set distortionModel($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDistortionModel() => $_has(3);
  @$pb.TagNumber(4)
  void clearDistortionModel() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$core.double> get d => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<$core.double> get k => $_getList(5);

  @$pb.TagNumber(7)
  $pb.PbList<$core.double> get r => $_getList(6);

  @$pb.TagNumber(8)
  $pb.PbList<$core.double> get p => $_getList(7);

  @$pb.TagNumber(9)
  $core.int get binningX => $_getIZ(8);
  @$pb.TagNumber(9)
  set binningX($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasBinningX() => $_has(8);
  @$pb.TagNumber(9)
  void clearBinningX() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get binningY => $_getIZ(9);
  @$pb.TagNumber(10)
  set binningY($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasBinningY() => $_has(9);
  @$pb.TagNumber(10)
  void clearBinningY() => $_clearField(10);

  @$pb.TagNumber(11)
  RegionOfInterest get roi => $_getN(10);
  @$pb.TagNumber(11)
  set roi(RegionOfInterest value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasRoi() => $_has(10);
  @$pb.TagNumber(11)
  void clearRoi() => $_clearField(11);
  @$pb.TagNumber(11)
  RegionOfInterest ensureRoi() => $_ensure(10);
}

class RosImage extends $pb.GeneratedMessage {
  factory RosImage({
    RosHeader? header,
    $core.int? height,
    $core.int? width,
    $core.String? encoding,
    $core.bool? isBigendian,
    $core.int? step,
    $core.List<$core.int>? data,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (height != null) result.height = height;
    if (width != null) result.width = width;
    if (encoding != null) result.encoding = encoding;
    if (isBigendian != null) result.isBigendian = isBigendian;
    if (step != null) result.step = step;
    if (data != null) result.data = data;
    return result;
  }

  RosImage._();

  factory RosImage.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory RosImage.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RosImage', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<RosHeader>(1, _omitFieldNames ? '' : 'header', subBuilder: RosHeader.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'height', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'width', $pb.PbFieldType.OU3)
    ..aOS(4, _omitFieldNames ? '' : 'encoding')
    ..aOB(5, _omitFieldNames ? '' : 'isBigendian')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'step', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(7, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RosImage clone() => RosImage()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RosImage copyWith(void Function(RosImage) updates) => super.copyWith((message) => updates(message as RosImage)) as RosImage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RosImage create() => RosImage._();
  @$core.override
  RosImage createEmptyInstance() => create();
  static $pb.PbList<RosImage> createRepeated() => $pb.PbList<RosImage>();
  @$core.pragma('dart2js:noInline')
  static RosImage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RosImage>(create);
  static RosImage? _defaultInstance;

  @$pb.TagNumber(1)
  RosHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(RosHeader value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => $_clearField(1);
  @$pb.TagNumber(1)
  RosHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get height => $_getIZ(1);
  @$pb.TagNumber(2)
  set height($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeight() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get width => $_getIZ(2);
  @$pb.TagNumber(3)
  set width($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasWidth() => $_has(2);
  @$pb.TagNumber(3)
  void clearWidth() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get encoding => $_getSZ(3);
  @$pb.TagNumber(4)
  set encoding($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasEncoding() => $_has(3);
  @$pb.TagNumber(4)
  void clearEncoding() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isBigendian => $_getBF(4);
  @$pb.TagNumber(5)
  set isBigendian($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIsBigendian() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsBigendian() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get step => $_getIZ(5);
  @$pb.TagNumber(6)
  set step($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasStep() => $_has(5);
  @$pb.TagNumber(6)
  void clearStep() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get data => $_getN(6);
  @$pb.TagNumber(7)
  set data($core.List<$core.int> value) => $_setBytes(6, value);
  @$pb.TagNumber(7)
  $core.bool hasData() => $_has(6);
  @$pb.TagNumber(7)
  void clearData() => $_clearField(7);
}

class RosTransformStamped extends $pb.GeneratedMessage {
  factory RosTransformStamped({
    RosHeader? header,
    $core.String? childFrameId,
    Vector3? translation,
    Quaternion? rotation,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (childFrameId != null) result.childFrameId = childFrameId;
    if (translation != null) result.translation = translation;
    if (rotation != null) result.rotation = rotation;
    return result;
  }

  RosTransformStamped._();

  factory RosTransformStamped.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory RosTransformStamped.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RosTransformStamped', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<RosHeader>(1, _omitFieldNames ? '' : 'header', subBuilder: RosHeader.create)
    ..aOS(2, _omitFieldNames ? '' : 'childFrameId')
    ..aOM<Vector3>(3, _omitFieldNames ? '' : 'translation', subBuilder: Vector3.create)
    ..aOM<Quaternion>(4, _omitFieldNames ? '' : 'rotation', subBuilder: Quaternion.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RosTransformStamped clone() => RosTransformStamped()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RosTransformStamped copyWith(void Function(RosTransformStamped) updates) => super.copyWith((message) => updates(message as RosTransformStamped)) as RosTransformStamped;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RosTransformStamped create() => RosTransformStamped._();
  @$core.override
  RosTransformStamped createEmptyInstance() => create();
  static $pb.PbList<RosTransformStamped> createRepeated() => $pb.PbList<RosTransformStamped>();
  @$core.pragma('dart2js:noInline')
  static RosTransformStamped getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RosTransformStamped>(create);
  static RosTransformStamped? _defaultInstance;

  @$pb.TagNumber(1)
  RosHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(RosHeader value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => $_clearField(1);
  @$pb.TagNumber(1)
  RosHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get childFrameId => $_getSZ(1);
  @$pb.TagNumber(2)
  set childFrameId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasChildFrameId() => $_has(1);
  @$pb.TagNumber(2)
  void clearChildFrameId() => $_clearField(2);

  @$pb.TagNumber(3)
  Vector3 get translation => $_getN(2);
  @$pb.TagNumber(3)
  set translation(Vector3 value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTranslation() => $_has(2);
  @$pb.TagNumber(3)
  void clearTranslation() => $_clearField(3);
  @$pb.TagNumber(3)
  Vector3 ensureTranslation() => $_ensure(2);

  @$pb.TagNumber(4)
  Quaternion get rotation => $_getN(3);
  @$pb.TagNumber(4)
  set rotation(Quaternion value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasRotation() => $_has(3);
  @$pb.TagNumber(4)
  void clearRotation() => $_clearField(4);
  @$pb.TagNumber(4)
  Quaternion ensureRotation() => $_ensure(3);
}

class RosCompressedImage extends $pb.GeneratedMessage {
  factory RosCompressedImage({
    RosHeader? header,
    $core.String? format,
    $core.List<$core.int>? data,
  }) {
    final result = create();
    if (header != null) result.header = header;
    if (format != null) result.format = format;
    if (data != null) result.data = data;
    return result;
  }

  RosCompressedImage._();

  factory RosCompressedImage.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory RosCompressedImage.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RosCompressedImage', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<RosHeader>(1, _omitFieldNames ? '' : 'header', subBuilder: RosHeader.create)
    ..aOS(2, _omitFieldNames ? '' : 'format')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RosCompressedImage clone() => RosCompressedImage()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RosCompressedImage copyWith(void Function(RosCompressedImage) updates) => super.copyWith((message) => updates(message as RosCompressedImage)) as RosCompressedImage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RosCompressedImage create() => RosCompressedImage._();
  @$core.override
  RosCompressedImage createEmptyInstance() => create();
  static $pb.PbList<RosCompressedImage> createRepeated() => $pb.PbList<RosCompressedImage>();
  @$core.pragma('dart2js:noInline')
  static RosCompressedImage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RosCompressedImage>(create);
  static RosCompressedImage? _defaultInstance;

  @$pb.TagNumber(1)
  RosHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(RosHeader value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => $_clearField(1);
  @$pb.TagNumber(1)
  RosHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get format => $_getSZ(1);
  @$pb.TagNumber(2)
  set format($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFormat() => $_has(1);
  @$pb.TagNumber(2)
  void clearFormat() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get data => $_getN(2);
  @$pb.TagNumber(3)
  set data($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => $_clearField(3);
}

class ObjectDetection extends $pb.GeneratedMessage {
  factory ObjectDetection({
    $core.int? label,
    RegionOfInterest? roi,
    $core.double? score,
    $core.double? distanceMedian,
  }) {
    final result = create();
    if (label != null) result.label = label;
    if (roi != null) result.roi = roi;
    if (score != null) result.score = score;
    if (distanceMedian != null) result.distanceMedian = distanceMedian;
    return result;
  }

  ObjectDetection._();

  factory ObjectDetection.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ObjectDetection.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ObjectDetection', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'label', $pb.PbFieldType.OU3)
    ..aOM<RegionOfInterest>(2, _omitFieldNames ? '' : 'roi', subBuilder: RegionOfInterest.create)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'score', $pb.PbFieldType.OF)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'distanceMedian', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ObjectDetection clone() => ObjectDetection()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ObjectDetection copyWith(void Function(ObjectDetection) updates) => super.copyWith((message) => updates(message as ObjectDetection)) as ObjectDetection;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ObjectDetection create() => ObjectDetection._();
  @$core.override
  ObjectDetection createEmptyInstance() => create();
  static $pb.PbList<ObjectDetection> createRepeated() => $pb.PbList<ObjectDetection>();
  @$core.pragma('dart2js:noInline')
  static ObjectDetection getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ObjectDetection>(create);
  static ObjectDetection? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get label => $_getIZ(0);
  @$pb.TagNumber(1)
  set label($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLabel() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabel() => $_clearField(1);

  @$pb.TagNumber(2)
  RegionOfInterest get roi => $_getN(1);
  @$pb.TagNumber(2)
  set roi(RegionOfInterest value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRoi() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoi() => $_clearField(2);
  @$pb.TagNumber(2)
  RegionOfInterest ensureRoi() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.double get score => $_getN(2);
  @$pb.TagNumber(3)
  set score($core.double value) => $_setFloat(2, value);
  @$pb.TagNumber(3)
  $core.bool hasScore() => $_has(2);
  @$pb.TagNumber(3)
  void clearScore() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get distanceMedian => $_getN(3);
  @$pb.TagNumber(4)
  set distanceMedian($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDistanceMedian() => $_has(3);
  @$pb.TagNumber(4)
  void clearDistanceMedian() => $_clearField(4);
}

class ObjectDetectionFeatures extends $pb.GeneratedMessage {
  factory ObjectDetectionFeatures({
    $core.String? name,
    $core.Iterable<$core.int>? shape,
    $core.Iterable<$core.double>? data,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (shape != null) result.shape.addAll(shape);
    if (data != null) result.data.addAll(data);
    return result;
  }

  ObjectDetectionFeatures._();

  factory ObjectDetectionFeatures.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ObjectDetectionFeatures.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ObjectDetectionFeatures', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..p<$core.int>(2, _omitFieldNames ? '' : 'shape', $pb.PbFieldType.KU3)
    ..p<$core.double>(3, _omitFieldNames ? '' : 'data', $pb.PbFieldType.KF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ObjectDetectionFeatures clone() => ObjectDetectionFeatures()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ObjectDetectionFeatures copyWith(void Function(ObjectDetectionFeatures) updates) => super.copyWith((message) => updates(message as ObjectDetectionFeatures)) as ObjectDetectionFeatures;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ObjectDetectionFeatures create() => ObjectDetectionFeatures._();
  @$core.override
  ObjectDetectionFeatures createEmptyInstance() => create();
  static $pb.PbList<ObjectDetectionFeatures> createRepeated() => $pb.PbList<ObjectDetectionFeatures>();
  @$core.pragma('dart2js:noInline')
  static ObjectDetectionFeatures getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ObjectDetectionFeatures>(create);
  static ObjectDetectionFeatures? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.int> get shape => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$core.double> get data => $_getList(2);
}

enum Command_Command {
  moveShelfCommand, 
  returnShelfCommand, 
  undockShelfCommand, 
  moveToLocationCommand, 
  returnHomeCommand, 
  dockShelfCommand, 
  speakCommand, 
  moveToPoseCommand, 
  lockCommand, 
  moveForwardCommand, 
  rotateInPlaceCommand, 
  dockAnyShelfWithRegistrationCommand, 
  localizeCommand, 
  notSet
}

/// Commands
class Command extends $pb.GeneratedMessage {
  factory Command({
    MoveShelfCommand? moveShelfCommand,
    ReturnShelfCommand? returnShelfCommand,
    UndockShelfCommand? undockShelfCommand,
    MoveToLocationCommand? moveToLocationCommand,
    ReturnHomeCommand? returnHomeCommand,
    DockShelfCommand? dockShelfCommand,
    SpeakCommand? speakCommand,
    MoveToPoseCommand? moveToPoseCommand,
    LockCommand? lockCommand,
    MoveForwardCommand? moveForwardCommand,
    RotateInPlaceCommand? rotateInPlaceCommand,
    DockAnyShelfWithRegistrationCommand? dockAnyShelfWithRegistrationCommand,
    LocalizeCommand? localizeCommand,
  }) {
    final result = create();
    if (moveShelfCommand != null) result.moveShelfCommand = moveShelfCommand;
    if (returnShelfCommand != null) result.returnShelfCommand = returnShelfCommand;
    if (undockShelfCommand != null) result.undockShelfCommand = undockShelfCommand;
    if (moveToLocationCommand != null) result.moveToLocationCommand = moveToLocationCommand;
    if (returnHomeCommand != null) result.returnHomeCommand = returnHomeCommand;
    if (dockShelfCommand != null) result.dockShelfCommand = dockShelfCommand;
    if (speakCommand != null) result.speakCommand = speakCommand;
    if (moveToPoseCommand != null) result.moveToPoseCommand = moveToPoseCommand;
    if (lockCommand != null) result.lockCommand = lockCommand;
    if (moveForwardCommand != null) result.moveForwardCommand = moveForwardCommand;
    if (rotateInPlaceCommand != null) result.rotateInPlaceCommand = rotateInPlaceCommand;
    if (dockAnyShelfWithRegistrationCommand != null) result.dockAnyShelfWithRegistrationCommand = dockAnyShelfWithRegistrationCommand;
    if (localizeCommand != null) result.localizeCommand = localizeCommand;
    return result;
  }

  Command._();

  factory Command.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Command.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Command_Command> _Command_CommandByTag = {
    1 : Command_Command.moveShelfCommand,
    2 : Command_Command.returnShelfCommand,
    5 : Command_Command.undockShelfCommand,
    7 : Command_Command.moveToLocationCommand,
    8 : Command_Command.returnHomeCommand,
    9 : Command_Command.dockShelfCommand,
    12 : Command_Command.speakCommand,
    13 : Command_Command.moveToPoseCommand,
    15 : Command_Command.lockCommand,
    16 : Command_Command.moveForwardCommand,
    17 : Command_Command.rotateInPlaceCommand,
    18 : Command_Command.dockAnyShelfWithRegistrationCommand,
    19 : Command_Command.localizeCommand,
    0 : Command_Command.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Command', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..oo(0, [1, 2, 5, 7, 8, 9, 12, 13, 15, 16, 17, 18, 19])
    ..aOM<MoveShelfCommand>(1, _omitFieldNames ? '' : 'moveShelfCommand', subBuilder: MoveShelfCommand.create)
    ..aOM<ReturnShelfCommand>(2, _omitFieldNames ? '' : 'returnShelfCommand', subBuilder: ReturnShelfCommand.create)
    ..aOM<UndockShelfCommand>(5, _omitFieldNames ? '' : 'undockShelfCommand', subBuilder: UndockShelfCommand.create)
    ..aOM<MoveToLocationCommand>(7, _omitFieldNames ? '' : 'moveToLocationCommand', subBuilder: MoveToLocationCommand.create)
    ..aOM<ReturnHomeCommand>(8, _omitFieldNames ? '' : 'returnHomeCommand', subBuilder: ReturnHomeCommand.create)
    ..aOM<DockShelfCommand>(9, _omitFieldNames ? '' : 'dockShelfCommand', subBuilder: DockShelfCommand.create)
    ..aOM<SpeakCommand>(12, _omitFieldNames ? '' : 'speakCommand', subBuilder: SpeakCommand.create)
    ..aOM<MoveToPoseCommand>(13, _omitFieldNames ? '' : 'moveToPoseCommand', subBuilder: MoveToPoseCommand.create)
    ..aOM<LockCommand>(15, _omitFieldNames ? '' : 'lockCommand', subBuilder: LockCommand.create)
    ..aOM<MoveForwardCommand>(16, _omitFieldNames ? '' : 'moveForwardCommand', subBuilder: MoveForwardCommand.create)
    ..aOM<RotateInPlaceCommand>(17, _omitFieldNames ? '' : 'rotateInPlaceCommand', subBuilder: RotateInPlaceCommand.create)
    ..aOM<DockAnyShelfWithRegistrationCommand>(18, _omitFieldNames ? '' : 'dockAnyShelfWithRegistrationCommand', subBuilder: DockAnyShelfWithRegistrationCommand.create)
    ..aOM<LocalizeCommand>(19, _omitFieldNames ? '' : 'localizeCommand', subBuilder: LocalizeCommand.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Command clone() => Command()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Command copyWith(void Function(Command) updates) => super.copyWith((message) => updates(message as Command)) as Command;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Command create() => Command._();
  @$core.override
  Command createEmptyInstance() => create();
  static $pb.PbList<Command> createRepeated() => $pb.PbList<Command>();
  @$core.pragma('dart2js:noInline')
  static Command getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Command>(create);
  static Command? _defaultInstance;

  Command_Command whichCommand() => _Command_CommandByTag[$_whichOneof(0)]!;
  void clearCommand() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  MoveShelfCommand get moveShelfCommand => $_getN(0);
  @$pb.TagNumber(1)
  set moveShelfCommand(MoveShelfCommand value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMoveShelfCommand() => $_has(0);
  @$pb.TagNumber(1)
  void clearMoveShelfCommand() => $_clearField(1);
  @$pb.TagNumber(1)
  MoveShelfCommand ensureMoveShelfCommand() => $_ensure(0);

  @$pb.TagNumber(2)
  ReturnShelfCommand get returnShelfCommand => $_getN(1);
  @$pb.TagNumber(2)
  set returnShelfCommand(ReturnShelfCommand value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasReturnShelfCommand() => $_has(1);
  @$pb.TagNumber(2)
  void clearReturnShelfCommand() => $_clearField(2);
  @$pb.TagNumber(2)
  ReturnShelfCommand ensureReturnShelfCommand() => $_ensure(1);

  @$pb.TagNumber(5)
  UndockShelfCommand get undockShelfCommand => $_getN(2);
  @$pb.TagNumber(5)
  set undockShelfCommand(UndockShelfCommand value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasUndockShelfCommand() => $_has(2);
  @$pb.TagNumber(5)
  void clearUndockShelfCommand() => $_clearField(5);
  @$pb.TagNumber(5)
  UndockShelfCommand ensureUndockShelfCommand() => $_ensure(2);

  @$pb.TagNumber(7)
  MoveToLocationCommand get moveToLocationCommand => $_getN(3);
  @$pb.TagNumber(7)
  set moveToLocationCommand(MoveToLocationCommand value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasMoveToLocationCommand() => $_has(3);
  @$pb.TagNumber(7)
  void clearMoveToLocationCommand() => $_clearField(7);
  @$pb.TagNumber(7)
  MoveToLocationCommand ensureMoveToLocationCommand() => $_ensure(3);

  @$pb.TagNumber(8)
  ReturnHomeCommand get returnHomeCommand => $_getN(4);
  @$pb.TagNumber(8)
  set returnHomeCommand(ReturnHomeCommand value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasReturnHomeCommand() => $_has(4);
  @$pb.TagNumber(8)
  void clearReturnHomeCommand() => $_clearField(8);
  @$pb.TagNumber(8)
  ReturnHomeCommand ensureReturnHomeCommand() => $_ensure(4);

  @$pb.TagNumber(9)
  DockShelfCommand get dockShelfCommand => $_getN(5);
  @$pb.TagNumber(9)
  set dockShelfCommand(DockShelfCommand value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasDockShelfCommand() => $_has(5);
  @$pb.TagNumber(9)
  void clearDockShelfCommand() => $_clearField(9);
  @$pb.TagNumber(9)
  DockShelfCommand ensureDockShelfCommand() => $_ensure(5);

  @$pb.TagNumber(12)
  SpeakCommand get speakCommand => $_getN(6);
  @$pb.TagNumber(12)
  set speakCommand(SpeakCommand value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasSpeakCommand() => $_has(6);
  @$pb.TagNumber(12)
  void clearSpeakCommand() => $_clearField(12);
  @$pb.TagNumber(12)
  SpeakCommand ensureSpeakCommand() => $_ensure(6);

  @$pb.TagNumber(13)
  MoveToPoseCommand get moveToPoseCommand => $_getN(7);
  @$pb.TagNumber(13)
  set moveToPoseCommand(MoveToPoseCommand value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasMoveToPoseCommand() => $_has(7);
  @$pb.TagNumber(13)
  void clearMoveToPoseCommand() => $_clearField(13);
  @$pb.TagNumber(13)
  MoveToPoseCommand ensureMoveToPoseCommand() => $_ensure(7);

  @$pb.TagNumber(15)
  LockCommand get lockCommand => $_getN(8);
  @$pb.TagNumber(15)
  set lockCommand(LockCommand value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasLockCommand() => $_has(8);
  @$pb.TagNumber(15)
  void clearLockCommand() => $_clearField(15);
  @$pb.TagNumber(15)
  LockCommand ensureLockCommand() => $_ensure(8);

  @$pb.TagNumber(16)
  MoveForwardCommand get moveForwardCommand => $_getN(9);
  @$pb.TagNumber(16)
  set moveForwardCommand(MoveForwardCommand value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasMoveForwardCommand() => $_has(9);
  @$pb.TagNumber(16)
  void clearMoveForwardCommand() => $_clearField(16);
  @$pb.TagNumber(16)
  MoveForwardCommand ensureMoveForwardCommand() => $_ensure(9);

  @$pb.TagNumber(17)
  RotateInPlaceCommand get rotateInPlaceCommand => $_getN(10);
  @$pb.TagNumber(17)
  set rotateInPlaceCommand(RotateInPlaceCommand value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasRotateInPlaceCommand() => $_has(10);
  @$pb.TagNumber(17)
  void clearRotateInPlaceCommand() => $_clearField(17);
  @$pb.TagNumber(17)
  RotateInPlaceCommand ensureRotateInPlaceCommand() => $_ensure(10);

  /// DockAnyShelfWithRegistrationCommand is available only in Kachaka Pro.
  @$pb.TagNumber(18)
  DockAnyShelfWithRegistrationCommand get dockAnyShelfWithRegistrationCommand => $_getN(11);
  @$pb.TagNumber(18)
  set dockAnyShelfWithRegistrationCommand(DockAnyShelfWithRegistrationCommand value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasDockAnyShelfWithRegistrationCommand() => $_has(11);
  @$pb.TagNumber(18)
  void clearDockAnyShelfWithRegistrationCommand() => $_clearField(18);
  @$pb.TagNumber(18)
  DockAnyShelfWithRegistrationCommand ensureDockAnyShelfWithRegistrationCommand() => $_ensure(11);

  @$pb.TagNumber(19)
  LocalizeCommand get localizeCommand => $_getN(12);
  @$pb.TagNumber(19)
  set localizeCommand(LocalizeCommand value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasLocalizeCommand() => $_has(12);
  @$pb.TagNumber(19)
  void clearLocalizeCommand() => $_clearField(19);
  @$pb.TagNumber(19)
  LocalizeCommand ensureLocalizeCommand() => $_ensure(12);
}

class MoveShelfCommand extends $pb.GeneratedMessage {
  factory MoveShelfCommand({
    $core.String? targetShelfId,
    $core.String? destinationLocationId,
    $core.bool? undockOnDestination,
  }) {
    final result = create();
    if (targetShelfId != null) result.targetShelfId = targetShelfId;
    if (destinationLocationId != null) result.destinationLocationId = destinationLocationId;
    if (undockOnDestination != null) result.undockOnDestination = undockOnDestination;
    return result;
  }

  MoveShelfCommand._();

  factory MoveShelfCommand.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory MoveShelfCommand.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MoveShelfCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'targetShelfId')
    ..aOS(2, _omitFieldNames ? '' : 'destinationLocationId')
    ..aOB(3, _omitFieldNames ? '' : 'undockOnDestination')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MoveShelfCommand clone() => MoveShelfCommand()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MoveShelfCommand copyWith(void Function(MoveShelfCommand) updates) => super.copyWith((message) => updates(message as MoveShelfCommand)) as MoveShelfCommand;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MoveShelfCommand create() => MoveShelfCommand._();
  @$core.override
  MoveShelfCommand createEmptyInstance() => create();
  static $pb.PbList<MoveShelfCommand> createRepeated() => $pb.PbList<MoveShelfCommand>();
  @$core.pragma('dart2js:noInline')
  static MoveShelfCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoveShelfCommand>(create);
  static MoveShelfCommand? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get targetShelfId => $_getSZ(0);
  @$pb.TagNumber(1)
  set targetShelfId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTargetShelfId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetShelfId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get destinationLocationId => $_getSZ(1);
  @$pb.TagNumber(2)
  set destinationLocationId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDestinationLocationId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDestinationLocationId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get undockOnDestination => $_getBF(2);
  @$pb.TagNumber(3)
  set undockOnDestination($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUndockOnDestination() => $_has(2);
  @$pb.TagNumber(3)
  void clearUndockOnDestination() => $_clearField(3);
}

class ReturnShelfCommand extends $pb.GeneratedMessage {
  factory ReturnShelfCommand({
    $core.String? targetShelfId,
  }) {
    final result = create();
    if (targetShelfId != null) result.targetShelfId = targetShelfId;
    return result;
  }

  ReturnShelfCommand._();

  factory ReturnShelfCommand.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ReturnShelfCommand.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReturnShelfCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'targetShelfId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReturnShelfCommand clone() => ReturnShelfCommand()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReturnShelfCommand copyWith(void Function(ReturnShelfCommand) updates) => super.copyWith((message) => updates(message as ReturnShelfCommand)) as ReturnShelfCommand;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReturnShelfCommand create() => ReturnShelfCommand._();
  @$core.override
  ReturnShelfCommand createEmptyInstance() => create();
  static $pb.PbList<ReturnShelfCommand> createRepeated() => $pb.PbList<ReturnShelfCommand>();
  @$core.pragma('dart2js:noInline')
  static ReturnShelfCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReturnShelfCommand>(create);
  static ReturnShelfCommand? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get targetShelfId => $_getSZ(0);
  @$pb.TagNumber(1)
  set targetShelfId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTargetShelfId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetShelfId() => $_clearField(1);
}

class UndockShelfCommand extends $pb.GeneratedMessage {
  factory UndockShelfCommand({
    $core.String? targetShelfId,
  }) {
    final result = create();
    if (targetShelfId != null) result.targetShelfId = targetShelfId;
    return result;
  }

  UndockShelfCommand._();

  factory UndockShelfCommand.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory UndockShelfCommand.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UndockShelfCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'targetShelfId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UndockShelfCommand clone() => UndockShelfCommand()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UndockShelfCommand copyWith(void Function(UndockShelfCommand) updates) => super.copyWith((message) => updates(message as UndockShelfCommand)) as UndockShelfCommand;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UndockShelfCommand create() => UndockShelfCommand._();
  @$core.override
  UndockShelfCommand createEmptyInstance() => create();
  static $pb.PbList<UndockShelfCommand> createRepeated() => $pb.PbList<UndockShelfCommand>();
  @$core.pragma('dart2js:noInline')
  static UndockShelfCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UndockShelfCommand>(create);
  static UndockShelfCommand? _defaultInstance;

  /// target_shelf_id can remain unset at the time of the request. It is filled
  /// in when retrieving the status or result of the issued command to identify
  /// which shelf was undocked. See GetLastCommandResultResponse for reference.
  @$pb.TagNumber(1)
  $core.String get targetShelfId => $_getSZ(0);
  @$pb.TagNumber(1)
  set targetShelfId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTargetShelfId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetShelfId() => $_clearField(1);
}

class MoveToLocationCommand extends $pb.GeneratedMessage {
  factory MoveToLocationCommand({
    $core.String? targetLocationId,
  }) {
    final result = create();
    if (targetLocationId != null) result.targetLocationId = targetLocationId;
    return result;
  }

  MoveToLocationCommand._();

  factory MoveToLocationCommand.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory MoveToLocationCommand.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MoveToLocationCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'targetLocationId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MoveToLocationCommand clone() => MoveToLocationCommand()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MoveToLocationCommand copyWith(void Function(MoveToLocationCommand) updates) => super.copyWith((message) => updates(message as MoveToLocationCommand)) as MoveToLocationCommand;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MoveToLocationCommand create() => MoveToLocationCommand._();
  @$core.override
  MoveToLocationCommand createEmptyInstance() => create();
  static $pb.PbList<MoveToLocationCommand> createRepeated() => $pb.PbList<MoveToLocationCommand>();
  @$core.pragma('dart2js:noInline')
  static MoveToLocationCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoveToLocationCommand>(create);
  static MoveToLocationCommand? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get targetLocationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set targetLocationId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTargetLocationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetLocationId() => $_clearField(1);
}

class ReturnHomeCommand extends $pb.GeneratedMessage {
  factory ReturnHomeCommand() => create();

  ReturnHomeCommand._();

  factory ReturnHomeCommand.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ReturnHomeCommand.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReturnHomeCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReturnHomeCommand clone() => ReturnHomeCommand()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReturnHomeCommand copyWith(void Function(ReturnHomeCommand) updates) => super.copyWith((message) => updates(message as ReturnHomeCommand)) as ReturnHomeCommand;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReturnHomeCommand create() => ReturnHomeCommand._();
  @$core.override
  ReturnHomeCommand createEmptyInstance() => create();
  static $pb.PbList<ReturnHomeCommand> createRepeated() => $pb.PbList<ReturnHomeCommand>();
  @$core.pragma('dart2js:noInline')
  static ReturnHomeCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReturnHomeCommand>(create);
  static ReturnHomeCommand? _defaultInstance;
}

class DockShelfCommand extends $pb.GeneratedMessage {
  factory DockShelfCommand() => create();

  DockShelfCommand._();

  factory DockShelfCommand.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory DockShelfCommand.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DockShelfCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DockShelfCommand clone() => DockShelfCommand()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DockShelfCommand copyWith(void Function(DockShelfCommand) updates) => super.copyWith((message) => updates(message as DockShelfCommand)) as DockShelfCommand;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DockShelfCommand create() => DockShelfCommand._();
  @$core.override
  DockShelfCommand createEmptyInstance() => create();
  static $pb.PbList<DockShelfCommand> createRepeated() => $pb.PbList<DockShelfCommand>();
  @$core.pragma('dart2js:noInline')
  static DockShelfCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DockShelfCommand>(create);
  static DockShelfCommand? _defaultInstance;
}

class SpeakCommand extends $pb.GeneratedMessage {
  factory SpeakCommand({
    $core.String? text,
  }) {
    final result = create();
    if (text != null) result.text = text;
    return result;
  }

  SpeakCommand._();

  factory SpeakCommand.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SpeakCommand.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SpeakCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpeakCommand clone() => SpeakCommand()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpeakCommand copyWith(void Function(SpeakCommand) updates) => super.copyWith((message) => updates(message as SpeakCommand)) as SpeakCommand;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpeakCommand create() => SpeakCommand._();
  @$core.override
  SpeakCommand createEmptyInstance() => create();
  static $pb.PbList<SpeakCommand> createRepeated() => $pb.PbList<SpeakCommand>();
  @$core.pragma('dart2js:noInline')
  static SpeakCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpeakCommand>(create);
  static SpeakCommand? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);
}

class MoveToPoseCommand extends $pb.GeneratedMessage {
  factory MoveToPoseCommand({
    $core.double? x,
    $core.double? y,
    $core.double? yaw,
  }) {
    final result = create();
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    if (yaw != null) result.yaw = yaw;
    return result;
  }

  MoveToPoseCommand._();

  factory MoveToPoseCommand.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory MoveToPoseCommand.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MoveToPoseCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'y', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'yaw', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MoveToPoseCommand clone() => MoveToPoseCommand()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MoveToPoseCommand copyWith(void Function(MoveToPoseCommand) updates) => super.copyWith((message) => updates(message as MoveToPoseCommand)) as MoveToPoseCommand;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MoveToPoseCommand create() => MoveToPoseCommand._();
  @$core.override
  MoveToPoseCommand createEmptyInstance() => create();
  static $pb.PbList<MoveToPoseCommand> createRepeated() => $pb.PbList<MoveToPoseCommand>();
  @$core.pragma('dart2js:noInline')
  static MoveToPoseCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoveToPoseCommand>(create);
  static MoveToPoseCommand? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get yaw => $_getN(2);
  @$pb.TagNumber(3)
  set yaw($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasYaw() => $_has(2);
  @$pb.TagNumber(3)
  void clearYaw() => $_clearField(3);
}

class LockCommand extends $pb.GeneratedMessage {
  factory LockCommand({
    $core.double? durationSec,
  }) {
    final result = create();
    if (durationSec != null) result.durationSec = durationSec;
    return result;
  }

  LockCommand._();

  factory LockCommand.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LockCommand.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LockCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'durationSec', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LockCommand clone() => LockCommand()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LockCommand copyWith(void Function(LockCommand) updates) => super.copyWith((message) => updates(message as LockCommand)) as LockCommand;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LockCommand create() => LockCommand._();
  @$core.override
  LockCommand createEmptyInstance() => create();
  static $pb.PbList<LockCommand> createRepeated() => $pb.PbList<LockCommand>();
  @$core.pragma('dart2js:noInline')
  static LockCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LockCommand>(create);
  static LockCommand? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get durationSec => $_getN(0);
  @$pb.TagNumber(1)
  set durationSec($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDurationSec() => $_has(0);
  @$pb.TagNumber(1)
  void clearDurationSec() => $_clearField(1);
}

class MoveForwardCommand extends $pb.GeneratedMessage {
  factory MoveForwardCommand({
    $core.double? distanceMeter,
    $core.double? speed,
  }) {
    final result = create();
    if (distanceMeter != null) result.distanceMeter = distanceMeter;
    if (speed != null) result.speed = speed;
    return result;
  }

  MoveForwardCommand._();

  factory MoveForwardCommand.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory MoveForwardCommand.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MoveForwardCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'distanceMeter', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'speed', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MoveForwardCommand clone() => MoveForwardCommand()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MoveForwardCommand copyWith(void Function(MoveForwardCommand) updates) => super.copyWith((message) => updates(message as MoveForwardCommand)) as MoveForwardCommand;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MoveForwardCommand create() => MoveForwardCommand._();
  @$core.override
  MoveForwardCommand createEmptyInstance() => create();
  static $pb.PbList<MoveForwardCommand> createRepeated() => $pb.PbList<MoveForwardCommand>();
  @$core.pragma('dart2js:noInline')
  static MoveForwardCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoveForwardCommand>(create);
  static MoveForwardCommand? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get distanceMeter => $_getN(0);
  @$pb.TagNumber(1)
  set distanceMeter($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDistanceMeter() => $_has(0);
  @$pb.TagNumber(1)
  void clearDistanceMeter() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get speed => $_getN(1);
  @$pb.TagNumber(2)
  set speed($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSpeed() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpeed() => $_clearField(2);
}

class RotateInPlaceCommand extends $pb.GeneratedMessage {
  factory RotateInPlaceCommand({
    $core.double? angleRadian,
  }) {
    final result = create();
    if (angleRadian != null) result.angleRadian = angleRadian;
    return result;
  }

  RotateInPlaceCommand._();

  factory RotateInPlaceCommand.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory RotateInPlaceCommand.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RotateInPlaceCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'angleRadian', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RotateInPlaceCommand clone() => RotateInPlaceCommand()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RotateInPlaceCommand copyWith(void Function(RotateInPlaceCommand) updates) => super.copyWith((message) => updates(message as RotateInPlaceCommand)) as RotateInPlaceCommand;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RotateInPlaceCommand create() => RotateInPlaceCommand._();
  @$core.override
  RotateInPlaceCommand createEmptyInstance() => create();
  static $pb.PbList<RotateInPlaceCommand> createRepeated() => $pb.PbList<RotateInPlaceCommand>();
  @$core.pragma('dart2js:noInline')
  static RotateInPlaceCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RotateInPlaceCommand>(create);
  static RotateInPlaceCommand? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get angleRadian => $_getN(0);
  @$pb.TagNumber(1)
  set angleRadian($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAngleRadian() => $_has(0);
  @$pb.TagNumber(1)
  void clearAngleRadian() => $_clearField(1);
}

class DockAnyShelfWithRegistrationCommand extends $pb.GeneratedMessage {
  factory DockAnyShelfWithRegistrationCommand({
    $core.String? targetLocationId,
    $core.bool? dockForward,
  }) {
    final result = create();
    if (targetLocationId != null) result.targetLocationId = targetLocationId;
    if (dockForward != null) result.dockForward = dockForward;
    return result;
  }

  DockAnyShelfWithRegistrationCommand._();

  factory DockAnyShelfWithRegistrationCommand.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory DockAnyShelfWithRegistrationCommand.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DockAnyShelfWithRegistrationCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'targetLocationId')
    ..aOB(2, _omitFieldNames ? '' : 'dockForward')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DockAnyShelfWithRegistrationCommand clone() => DockAnyShelfWithRegistrationCommand()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DockAnyShelfWithRegistrationCommand copyWith(void Function(DockAnyShelfWithRegistrationCommand) updates) => super.copyWith((message) => updates(message as DockAnyShelfWithRegistrationCommand)) as DockAnyShelfWithRegistrationCommand;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DockAnyShelfWithRegistrationCommand create() => DockAnyShelfWithRegistrationCommand._();
  @$core.override
  DockAnyShelfWithRegistrationCommand createEmptyInstance() => create();
  static $pb.PbList<DockAnyShelfWithRegistrationCommand> createRepeated() => $pb.PbList<DockAnyShelfWithRegistrationCommand>();
  @$core.pragma('dart2js:noInline')
  static DockAnyShelfWithRegistrationCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DockAnyShelfWithRegistrationCommand>(create);
  static DockAnyShelfWithRegistrationCommand? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get targetLocationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set targetLocationId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTargetLocationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetLocationId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get dockForward => $_getBF(1);
  @$pb.TagNumber(2)
  set dockForward($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDockForward() => $_has(1);
  @$pb.TagNumber(2)
  void clearDockForward() => $_clearField(2);
}

class LocalizeCommand extends $pb.GeneratedMessage {
  factory LocalizeCommand() => create();

  LocalizeCommand._();

  factory LocalizeCommand.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LocalizeCommand.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LocalizeCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LocalizeCommand clone() => LocalizeCommand()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LocalizeCommand copyWith(void Function(LocalizeCommand) updates) => super.copyWith((message) => updates(message as LocalizeCommand)) as LocalizeCommand;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LocalizeCommand create() => LocalizeCommand._();
  @$core.override
  LocalizeCommand createEmptyInstance() => create();
  static $pb.PbList<LocalizeCommand> createRepeated() => $pb.PbList<LocalizeCommand>();
  @$core.pragma('dart2js:noInline')
  static LocalizeCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocalizeCommand>(create);
  static LocalizeCommand? _defaultInstance;
}

/// Requests and Responses
class EmptyRequest extends $pb.GeneratedMessage {
  factory EmptyRequest() => create();

  EmptyRequest._();

  factory EmptyRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory EmptyRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmptyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EmptyRequest clone() => EmptyRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EmptyRequest copyWith(void Function(EmptyRequest) updates) => super.copyWith((message) => updates(message as EmptyRequest)) as EmptyRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EmptyRequest create() => EmptyRequest._();
  @$core.override
  EmptyRequest createEmptyInstance() => create();
  static $pb.PbList<EmptyRequest> createRepeated() => $pb.PbList<EmptyRequest>();
  @$core.pragma('dart2js:noInline')
  static EmptyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyRequest>(create);
  static EmptyRequest? _defaultInstance;
}

class GetRequest extends $pb.GeneratedMessage {
  factory GetRequest({
    Metadata? metadata,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    return result;
  }

  GetRequest._();

  factory GetRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRequest clone() => GetRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRequest copyWith(void Function(GetRequest) updates) => super.copyWith((message) => updates(message as GetRequest)) as GetRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRequest create() => GetRequest._();
  @$core.override
  GetRequest createEmptyInstance() => create();
  static $pb.PbList<GetRequest> createRepeated() => $pb.PbList<GetRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRequest>(create);
  static GetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);
}

class GetRobotSerialNumberResponse extends $pb.GeneratedMessage {
  factory GetRobotSerialNumberResponse({
    Metadata? metadata,
    $core.String? serialNumber,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (serialNumber != null) result.serialNumber = serialNumber;
    return result;
  }

  GetRobotSerialNumberResponse._();

  factory GetRobotSerialNumberResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetRobotSerialNumberResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRobotSerialNumberResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOS(2, _omitFieldNames ? '' : 'serialNumber')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRobotSerialNumberResponse clone() => GetRobotSerialNumberResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRobotSerialNumberResponse copyWith(void Function(GetRobotSerialNumberResponse) updates) => super.copyWith((message) => updates(message as GetRobotSerialNumberResponse)) as GetRobotSerialNumberResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRobotSerialNumberResponse create() => GetRobotSerialNumberResponse._();
  @$core.override
  GetRobotSerialNumberResponse createEmptyInstance() => create();
  static $pb.PbList<GetRobotSerialNumberResponse> createRepeated() => $pb.PbList<GetRobotSerialNumberResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRobotSerialNumberResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRobotSerialNumberResponse>(create);
  static GetRobotSerialNumberResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get serialNumber => $_getSZ(1);
  @$pb.TagNumber(2)
  set serialNumber($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSerialNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearSerialNumber() => $_clearField(2);
}

class GetRobotVersionResponse extends $pb.GeneratedMessage {
  factory GetRobotVersionResponse({
    Metadata? metadata,
    $core.String? version,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (version != null) result.version = version;
    return result;
  }

  GetRobotVersionResponse._();

  factory GetRobotVersionResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetRobotVersionResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRobotVersionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRobotVersionResponse clone() => GetRobotVersionResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRobotVersionResponse copyWith(void Function(GetRobotVersionResponse) updates) => super.copyWith((message) => updates(message as GetRobotVersionResponse)) as GetRobotVersionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRobotVersionResponse create() => GetRobotVersionResponse._();
  @$core.override
  GetRobotVersionResponse createEmptyInstance() => create();
  static $pb.PbList<GetRobotVersionResponse> createRepeated() => $pb.PbList<GetRobotVersionResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRobotVersionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRobotVersionResponse>(create);
  static GetRobotVersionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => $_clearField(2);
}

class GetRobotPoseResponse extends $pb.GeneratedMessage {
  factory GetRobotPoseResponse({
    Metadata? metadata,
    Pose? pose,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (pose != null) result.pose = pose;
    return result;
  }

  GetRobotPoseResponse._();

  factory GetRobotPoseResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetRobotPoseResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRobotPoseResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOM<Pose>(2, _omitFieldNames ? '' : 'pose', subBuilder: Pose.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRobotPoseResponse clone() => GetRobotPoseResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRobotPoseResponse copyWith(void Function(GetRobotPoseResponse) updates) => super.copyWith((message) => updates(message as GetRobotPoseResponse)) as GetRobotPoseResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRobotPoseResponse create() => GetRobotPoseResponse._();
  @$core.override
  GetRobotPoseResponse createEmptyInstance() => create();
  static $pb.PbList<GetRobotPoseResponse> createRepeated() => $pb.PbList<GetRobotPoseResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRobotPoseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRobotPoseResponse>(create);
  static GetRobotPoseResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  Pose get pose => $_getN(1);
  @$pb.TagNumber(2)
  set pose(Pose value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPose() => $_has(1);
  @$pb.TagNumber(2)
  void clearPose() => $_clearField(2);
  @$pb.TagNumber(2)
  Pose ensurePose() => $_ensure(1);
}

class SetRobotPoseRequest extends $pb.GeneratedMessage {
  factory SetRobotPoseRequest({
    Pose? pose,
  }) {
    final result = create();
    if (pose != null) result.pose = pose;
    return result;
  }

  SetRobotPoseRequest._();

  factory SetRobotPoseRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SetRobotPoseRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetRobotPoseRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Pose>(1, _omitFieldNames ? '' : 'pose', subBuilder: Pose.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetRobotPoseRequest clone() => SetRobotPoseRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetRobotPoseRequest copyWith(void Function(SetRobotPoseRequest) updates) => super.copyWith((message) => updates(message as SetRobotPoseRequest)) as SetRobotPoseRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetRobotPoseRequest create() => SetRobotPoseRequest._();
  @$core.override
  SetRobotPoseRequest createEmptyInstance() => create();
  static $pb.PbList<SetRobotPoseRequest> createRepeated() => $pb.PbList<SetRobotPoseRequest>();
  @$core.pragma('dart2js:noInline')
  static SetRobotPoseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetRobotPoseRequest>(create);
  static SetRobotPoseRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Pose get pose => $_getN(0);
  @$pb.TagNumber(1)
  set pose(Pose value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPose() => $_has(0);
  @$pb.TagNumber(1)
  void clearPose() => $_clearField(1);
  @$pb.TagNumber(1)
  Pose ensurePose() => $_ensure(0);
}

class SetRobotPoseResponse extends $pb.GeneratedMessage {
  factory SetRobotPoseResponse({
    Result? result,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    return result$;
  }

  SetRobotPoseResponse._();

  factory SetRobotPoseResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SetRobotPoseResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetRobotPoseResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Result>(1, _omitFieldNames ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetRobotPoseResponse clone() => SetRobotPoseResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetRobotPoseResponse copyWith(void Function(SetRobotPoseResponse) updates) => super.copyWith((message) => updates(message as SetRobotPoseResponse)) as SetRobotPoseResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetRobotPoseResponse create() => SetRobotPoseResponse._();
  @$core.override
  SetRobotPoseResponse createEmptyInstance() => create();
  static $pb.PbList<SetRobotPoseResponse> createRepeated() => $pb.PbList<SetRobotPoseResponse>();
  @$core.pragma('dart2js:noInline')
  static SetRobotPoseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetRobotPoseResponse>(create);
  static SetRobotPoseResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

class GetBatteryInfoResponse extends $pb.GeneratedMessage {
  factory GetBatteryInfoResponse({
    Metadata? metadata,
    $core.double? remainingPercentage,
    PowerSupplyStatus? powerSupplyStatus,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (remainingPercentage != null) result.remainingPercentage = remainingPercentage;
    if (powerSupplyStatus != null) result.powerSupplyStatus = powerSupplyStatus;
    return result;
  }

  GetBatteryInfoResponse._();

  factory GetBatteryInfoResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetBatteryInfoResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBatteryInfoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'remainingPercentage', $pb.PbFieldType.OD)
    ..e<PowerSupplyStatus>(3, _omitFieldNames ? '' : 'powerSupplyStatus', $pb.PbFieldType.OE, defaultOrMaker: PowerSupplyStatus.POWER_SUPPLY_STATUS_UNSPECIFIED, valueOf: PowerSupplyStatus.valueOf, enumValues: PowerSupplyStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetBatteryInfoResponse clone() => GetBatteryInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetBatteryInfoResponse copyWith(void Function(GetBatteryInfoResponse) updates) => super.copyWith((message) => updates(message as GetBatteryInfoResponse)) as GetBatteryInfoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBatteryInfoResponse create() => GetBatteryInfoResponse._();
  @$core.override
  GetBatteryInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetBatteryInfoResponse> createRepeated() => $pb.PbList<GetBatteryInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetBatteryInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBatteryInfoResponse>(create);
  static GetBatteryInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get remainingPercentage => $_getN(1);
  @$pb.TagNumber(2)
  set remainingPercentage($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRemainingPercentage() => $_has(1);
  @$pb.TagNumber(2)
  void clearRemainingPercentage() => $_clearField(2);

  @$pb.TagNumber(3)
  PowerSupplyStatus get powerSupplyStatus => $_getN(2);
  @$pb.TagNumber(3)
  set powerSupplyStatus(PowerSupplyStatus value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasPowerSupplyStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearPowerSupplyStatus() => $_clearField(3);
}

class GetRobotErrorCodeJsonResponse extends $pb.GeneratedMessage {
  factory GetRobotErrorCodeJsonResponse({
    $core.String? json,
    Result? result,
  }) {
    final result$ = create();
    if (json != null) result$.json = json;
    if (result != null) result$.result = result;
    return result$;
  }

  GetRobotErrorCodeJsonResponse._();

  factory GetRobotErrorCodeJsonResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetRobotErrorCodeJsonResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRobotErrorCodeJsonResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'json')
    ..aOM<Result>(2, _omitFieldNames ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRobotErrorCodeJsonResponse clone() => GetRobotErrorCodeJsonResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRobotErrorCodeJsonResponse copyWith(void Function(GetRobotErrorCodeJsonResponse) updates) => super.copyWith((message) => updates(message as GetRobotErrorCodeJsonResponse)) as GetRobotErrorCodeJsonResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRobotErrorCodeJsonResponse create() => GetRobotErrorCodeJsonResponse._();
  @$core.override
  GetRobotErrorCodeJsonResponse createEmptyInstance() => create();
  static $pb.PbList<GetRobotErrorCodeJsonResponse> createRepeated() => $pb.PbList<GetRobotErrorCodeJsonResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRobotErrorCodeJsonResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRobotErrorCodeJsonResponse>(create);
  static GetRobotErrorCodeJsonResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get json => $_getSZ(0);
  @$pb.TagNumber(1)
  set json($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasJson() => $_has(0);
  @$pb.TagNumber(1)
  void clearJson() => $_clearField(1);

  @$pb.TagNumber(2)
  Result get result => $_getN(1);
  @$pb.TagNumber(2)
  set result(Result value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearResult() => $_clearField(2);
  @$pb.TagNumber(2)
  Result ensureResult() => $_ensure(1);
}

class GetErrorResponse extends $pb.GeneratedMessage {
  factory GetErrorResponse({
    Metadata? metadata,
    $core.Iterable<$core.int>? errorCodes,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (errorCodes != null) result.errorCodes.addAll(errorCodes);
    return result;
  }

  GetErrorResponse._();

  factory GetErrorResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetErrorResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetErrorResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..p<$core.int>(2, _omitFieldNames ? '' : 'errorCodes', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetErrorResponse clone() => GetErrorResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetErrorResponse copyWith(void Function(GetErrorResponse) updates) => super.copyWith((message) => updates(message as GetErrorResponse)) as GetErrorResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetErrorResponse create() => GetErrorResponse._();
  @$core.override
  GetErrorResponse createEmptyInstance() => create();
  static $pb.PbList<GetErrorResponse> createRepeated() => $pb.PbList<GetErrorResponse>();
  @$core.pragma('dart2js:noInline')
  static GetErrorResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetErrorResponse>(create);
  static GetErrorResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<$core.int> get errorCodes => $_getList(1);
}

class GetPngMapResponse extends $pb.GeneratedMessage {
  factory GetPngMapResponse({
    Metadata? metadata,
    Map_? map,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (map != null) result.map = map;
    return result;
  }

  GetPngMapResponse._();

  factory GetPngMapResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetPngMapResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPngMapResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOM<Map_>(2, _omitFieldNames ? '' : 'map', subBuilder: Map_.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPngMapResponse clone() => GetPngMapResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPngMapResponse copyWith(void Function(GetPngMapResponse) updates) => super.copyWith((message) => updates(message as GetPngMapResponse)) as GetPngMapResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPngMapResponse create() => GetPngMapResponse._();
  @$core.override
  GetPngMapResponse createEmptyInstance() => create();
  static $pb.PbList<GetPngMapResponse> createRepeated() => $pb.PbList<GetPngMapResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPngMapResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPngMapResponse>(create);
  static GetPngMapResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  Map_ get map => $_getN(1);
  @$pb.TagNumber(2)
  set map(Map_ value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMap() => $_has(1);
  @$pb.TagNumber(2)
  void clearMap() => $_clearField(2);
  @$pb.TagNumber(2)
  Map_ ensureMap() => $_ensure(1);
}

class GetObjectDetectionResponse extends $pb.GeneratedMessage {
  factory GetObjectDetectionResponse({
    Metadata? metadata,
    RosHeader? header,
    $core.Iterable<ObjectDetection>? objects,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (header != null) result.header = header;
    if (objects != null) result.objects.addAll(objects);
    return result;
  }

  GetObjectDetectionResponse._();

  factory GetObjectDetectionResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetObjectDetectionResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetObjectDetectionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOM<RosHeader>(2, _omitFieldNames ? '' : 'header', subBuilder: RosHeader.create)
    ..pc<ObjectDetection>(3, _omitFieldNames ? '' : 'objects', $pb.PbFieldType.PM, subBuilder: ObjectDetection.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetObjectDetectionResponse clone() => GetObjectDetectionResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetObjectDetectionResponse copyWith(void Function(GetObjectDetectionResponse) updates) => super.copyWith((message) => updates(message as GetObjectDetectionResponse)) as GetObjectDetectionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetObjectDetectionResponse create() => GetObjectDetectionResponse._();
  @$core.override
  GetObjectDetectionResponse createEmptyInstance() => create();
  static $pb.PbList<GetObjectDetectionResponse> createRepeated() => $pb.PbList<GetObjectDetectionResponse>();
  @$core.pragma('dart2js:noInline')
  static GetObjectDetectionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetObjectDetectionResponse>(create);
  static GetObjectDetectionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  RosHeader get header => $_getN(1);
  @$pb.TagNumber(2)
  set header(RosHeader value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasHeader() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeader() => $_clearField(2);
  @$pb.TagNumber(2)
  RosHeader ensureHeader() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbList<ObjectDetection> get objects => $_getList(2);
}

class GetObjectDetectionFeaturesResponse extends $pb.GeneratedMessage {
  factory GetObjectDetectionFeaturesResponse({
    Metadata? metadata,
    RosHeader? header,
    $core.Iterable<ObjectDetectionFeatures>? features,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (header != null) result.header = header;
    if (features != null) result.features.addAll(features);
    return result;
  }

  GetObjectDetectionFeaturesResponse._();

  factory GetObjectDetectionFeaturesResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetObjectDetectionFeaturesResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetObjectDetectionFeaturesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOM<RosHeader>(2, _omitFieldNames ? '' : 'header', subBuilder: RosHeader.create)
    ..pc<ObjectDetectionFeatures>(3, _omitFieldNames ? '' : 'features', $pb.PbFieldType.PM, subBuilder: ObjectDetectionFeatures.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetObjectDetectionFeaturesResponse clone() => GetObjectDetectionFeaturesResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetObjectDetectionFeaturesResponse copyWith(void Function(GetObjectDetectionFeaturesResponse) updates) => super.copyWith((message) => updates(message as GetObjectDetectionFeaturesResponse)) as GetObjectDetectionFeaturesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetObjectDetectionFeaturesResponse create() => GetObjectDetectionFeaturesResponse._();
  @$core.override
  GetObjectDetectionFeaturesResponse createEmptyInstance() => create();
  static $pb.PbList<GetObjectDetectionFeaturesResponse> createRepeated() => $pb.PbList<GetObjectDetectionFeaturesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetObjectDetectionFeaturesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetObjectDetectionFeaturesResponse>(create);
  static GetObjectDetectionFeaturesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  RosHeader get header => $_getN(1);
  @$pb.TagNumber(2)
  set header(RosHeader value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasHeader() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeader() => $_clearField(2);
  @$pb.TagNumber(2)
  RosHeader ensureHeader() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbList<ObjectDetectionFeatures> get features => $_getList(2);
}

class GetRosImuResponse extends $pb.GeneratedMessage {
  factory GetRosImuResponse({
    Metadata? metadata,
    RosImu? imu,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (imu != null) result.imu = imu;
    return result;
  }

  GetRosImuResponse._();

  factory GetRosImuResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetRosImuResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRosImuResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOM<RosImu>(2, _omitFieldNames ? '' : 'imu', subBuilder: RosImu.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRosImuResponse clone() => GetRosImuResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRosImuResponse copyWith(void Function(GetRosImuResponse) updates) => super.copyWith((message) => updates(message as GetRosImuResponse)) as GetRosImuResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRosImuResponse create() => GetRosImuResponse._();
  @$core.override
  GetRosImuResponse createEmptyInstance() => create();
  static $pb.PbList<GetRosImuResponse> createRepeated() => $pb.PbList<GetRosImuResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRosImuResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRosImuResponse>(create);
  static GetRosImuResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  RosImu get imu => $_getN(1);
  @$pb.TagNumber(2)
  set imu(RosImu value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasImu() => $_has(1);
  @$pb.TagNumber(2)
  void clearImu() => $_clearField(2);
  @$pb.TagNumber(2)
  RosImu ensureImu() => $_ensure(1);
}

class GetRosOdometryResponse extends $pb.GeneratedMessage {
  factory GetRosOdometryResponse({
    Metadata? metadata,
    RosOdometry? odometry,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (odometry != null) result.odometry = odometry;
    return result;
  }

  GetRosOdometryResponse._();

  factory GetRosOdometryResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetRosOdometryResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRosOdometryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOM<RosOdometry>(2, _omitFieldNames ? '' : 'odometry', subBuilder: RosOdometry.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRosOdometryResponse clone() => GetRosOdometryResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRosOdometryResponse copyWith(void Function(GetRosOdometryResponse) updates) => super.copyWith((message) => updates(message as GetRosOdometryResponse)) as GetRosOdometryResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRosOdometryResponse create() => GetRosOdometryResponse._();
  @$core.override
  GetRosOdometryResponse createEmptyInstance() => create();
  static $pb.PbList<GetRosOdometryResponse> createRepeated() => $pb.PbList<GetRosOdometryResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRosOdometryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRosOdometryResponse>(create);
  static GetRosOdometryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  RosOdometry get odometry => $_getN(1);
  @$pb.TagNumber(2)
  set odometry(RosOdometry value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOdometry() => $_has(1);
  @$pb.TagNumber(2)
  void clearOdometry() => $_clearField(2);
  @$pb.TagNumber(2)
  RosOdometry ensureOdometry() => $_ensure(1);
}

class GetRosWheelOdometryResponse extends $pb.GeneratedMessage {
  factory GetRosWheelOdometryResponse({
    Metadata? metadata,
    RosOdometry? odometry,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (odometry != null) result.odometry = odometry;
    return result;
  }

  GetRosWheelOdometryResponse._();

  factory GetRosWheelOdometryResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetRosWheelOdometryResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRosWheelOdometryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOM<RosOdometry>(2, _omitFieldNames ? '' : 'odometry', subBuilder: RosOdometry.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRosWheelOdometryResponse clone() => GetRosWheelOdometryResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRosWheelOdometryResponse copyWith(void Function(GetRosWheelOdometryResponse) updates) => super.copyWith((message) => updates(message as GetRosWheelOdometryResponse)) as GetRosWheelOdometryResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRosWheelOdometryResponse create() => GetRosWheelOdometryResponse._();
  @$core.override
  GetRosWheelOdometryResponse createEmptyInstance() => create();
  static $pb.PbList<GetRosWheelOdometryResponse> createRepeated() => $pb.PbList<GetRosWheelOdometryResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRosWheelOdometryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRosWheelOdometryResponse>(create);
  static GetRosWheelOdometryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  RosOdometry get odometry => $_getN(1);
  @$pb.TagNumber(2)
  set odometry(RosOdometry value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOdometry() => $_has(1);
  @$pb.TagNumber(2)
  void clearOdometry() => $_clearField(2);
  @$pb.TagNumber(2)
  RosOdometry ensureOdometry() => $_ensure(1);
}

class GetRosLaserScanResponse extends $pb.GeneratedMessage {
  factory GetRosLaserScanResponse({
    Metadata? metadata,
    RosLaserScan? scan,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (scan != null) result.scan = scan;
    return result;
  }

  GetRosLaserScanResponse._();

  factory GetRosLaserScanResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetRosLaserScanResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRosLaserScanResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOM<RosLaserScan>(2, _omitFieldNames ? '' : 'scan', subBuilder: RosLaserScan.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRosLaserScanResponse clone() => GetRosLaserScanResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRosLaserScanResponse copyWith(void Function(GetRosLaserScanResponse) updates) => super.copyWith((message) => updates(message as GetRosLaserScanResponse)) as GetRosLaserScanResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRosLaserScanResponse create() => GetRosLaserScanResponse._();
  @$core.override
  GetRosLaserScanResponse createEmptyInstance() => create();
  static $pb.PbList<GetRosLaserScanResponse> createRepeated() => $pb.PbList<GetRosLaserScanResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRosLaserScanResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRosLaserScanResponse>(create);
  static GetRosLaserScanResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  RosLaserScan get scan => $_getN(1);
  @$pb.TagNumber(2)
  set scan(RosLaserScan value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasScan() => $_has(1);
  @$pb.TagNumber(2)
  void clearScan() => $_clearField(2);
  @$pb.TagNumber(2)
  RosLaserScan ensureScan() => $_ensure(1);
}

class GetFrontCameraRosCameraInfoResponse extends $pb.GeneratedMessage {
  factory GetFrontCameraRosCameraInfoResponse({
    Metadata? metadata,
    RosCameraInfo? cameraInfo,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (cameraInfo != null) result.cameraInfo = cameraInfo;
    return result;
  }

  GetFrontCameraRosCameraInfoResponse._();

  factory GetFrontCameraRosCameraInfoResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetFrontCameraRosCameraInfoResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetFrontCameraRosCameraInfoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOM<RosCameraInfo>(2, _omitFieldNames ? '' : 'cameraInfo', subBuilder: RosCameraInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFrontCameraRosCameraInfoResponse clone() => GetFrontCameraRosCameraInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFrontCameraRosCameraInfoResponse copyWith(void Function(GetFrontCameraRosCameraInfoResponse) updates) => super.copyWith((message) => updates(message as GetFrontCameraRosCameraInfoResponse)) as GetFrontCameraRosCameraInfoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFrontCameraRosCameraInfoResponse create() => GetFrontCameraRosCameraInfoResponse._();
  @$core.override
  GetFrontCameraRosCameraInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetFrontCameraRosCameraInfoResponse> createRepeated() => $pb.PbList<GetFrontCameraRosCameraInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetFrontCameraRosCameraInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFrontCameraRosCameraInfoResponse>(create);
  static GetFrontCameraRosCameraInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  RosCameraInfo get cameraInfo => $_getN(1);
  @$pb.TagNumber(2)
  set cameraInfo(RosCameraInfo value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCameraInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearCameraInfo() => $_clearField(2);
  @$pb.TagNumber(2)
  RosCameraInfo ensureCameraInfo() => $_ensure(1);
}

class GetFrontCameraRosImageResponse extends $pb.GeneratedMessage {
  factory GetFrontCameraRosImageResponse({
    Metadata? metadata,
    RosImage? image,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (image != null) result.image = image;
    return result;
  }

  GetFrontCameraRosImageResponse._();

  factory GetFrontCameraRosImageResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetFrontCameraRosImageResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetFrontCameraRosImageResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOM<RosImage>(2, _omitFieldNames ? '' : 'image', subBuilder: RosImage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFrontCameraRosImageResponse clone() => GetFrontCameraRosImageResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFrontCameraRosImageResponse copyWith(void Function(GetFrontCameraRosImageResponse) updates) => super.copyWith((message) => updates(message as GetFrontCameraRosImageResponse)) as GetFrontCameraRosImageResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFrontCameraRosImageResponse create() => GetFrontCameraRosImageResponse._();
  @$core.override
  GetFrontCameraRosImageResponse createEmptyInstance() => create();
  static $pb.PbList<GetFrontCameraRosImageResponse> createRepeated() => $pb.PbList<GetFrontCameraRosImageResponse>();
  @$core.pragma('dart2js:noInline')
  static GetFrontCameraRosImageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFrontCameraRosImageResponse>(create);
  static GetFrontCameraRosImageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  RosImage get image => $_getN(1);
  @$pb.TagNumber(2)
  set image(RosImage value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasImage() => $_has(1);
  @$pb.TagNumber(2)
  void clearImage() => $_clearField(2);
  @$pb.TagNumber(2)
  RosImage ensureImage() => $_ensure(1);
}

class GetFrontCameraRosCompressedImageResponse extends $pb.GeneratedMessage {
  factory GetFrontCameraRosCompressedImageResponse({
    Metadata? metadata,
    RosCompressedImage? image,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (image != null) result.image = image;
    return result;
  }

  GetFrontCameraRosCompressedImageResponse._();

  factory GetFrontCameraRosCompressedImageResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetFrontCameraRosCompressedImageResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetFrontCameraRosCompressedImageResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOM<RosCompressedImage>(2, _omitFieldNames ? '' : 'image', subBuilder: RosCompressedImage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFrontCameraRosCompressedImageResponse clone() => GetFrontCameraRosCompressedImageResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFrontCameraRosCompressedImageResponse copyWith(void Function(GetFrontCameraRosCompressedImageResponse) updates) => super.copyWith((message) => updates(message as GetFrontCameraRosCompressedImageResponse)) as GetFrontCameraRosCompressedImageResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFrontCameraRosCompressedImageResponse create() => GetFrontCameraRosCompressedImageResponse._();
  @$core.override
  GetFrontCameraRosCompressedImageResponse createEmptyInstance() => create();
  static $pb.PbList<GetFrontCameraRosCompressedImageResponse> createRepeated() => $pb.PbList<GetFrontCameraRosCompressedImageResponse>();
  @$core.pragma('dart2js:noInline')
  static GetFrontCameraRosCompressedImageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFrontCameraRosCompressedImageResponse>(create);
  static GetFrontCameraRosCompressedImageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  RosCompressedImage get image => $_getN(1);
  @$pb.TagNumber(2)
  set image(RosCompressedImage value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasImage() => $_has(1);
  @$pb.TagNumber(2)
  void clearImage() => $_clearField(2);
  @$pb.TagNumber(2)
  RosCompressedImage ensureImage() => $_ensure(1);
}

class GetBackCameraRosCameraInfoResponse extends $pb.GeneratedMessage {
  factory GetBackCameraRosCameraInfoResponse({
    Metadata? metadata,
    RosCameraInfo? cameraInfo,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (cameraInfo != null) result.cameraInfo = cameraInfo;
    return result;
  }

  GetBackCameraRosCameraInfoResponse._();

  factory GetBackCameraRosCameraInfoResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetBackCameraRosCameraInfoResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBackCameraRosCameraInfoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOM<RosCameraInfo>(2, _omitFieldNames ? '' : 'cameraInfo', subBuilder: RosCameraInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetBackCameraRosCameraInfoResponse clone() => GetBackCameraRosCameraInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetBackCameraRosCameraInfoResponse copyWith(void Function(GetBackCameraRosCameraInfoResponse) updates) => super.copyWith((message) => updates(message as GetBackCameraRosCameraInfoResponse)) as GetBackCameraRosCameraInfoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBackCameraRosCameraInfoResponse create() => GetBackCameraRosCameraInfoResponse._();
  @$core.override
  GetBackCameraRosCameraInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetBackCameraRosCameraInfoResponse> createRepeated() => $pb.PbList<GetBackCameraRosCameraInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetBackCameraRosCameraInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBackCameraRosCameraInfoResponse>(create);
  static GetBackCameraRosCameraInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  RosCameraInfo get cameraInfo => $_getN(1);
  @$pb.TagNumber(2)
  set cameraInfo(RosCameraInfo value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCameraInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearCameraInfo() => $_clearField(2);
  @$pb.TagNumber(2)
  RosCameraInfo ensureCameraInfo() => $_ensure(1);
}

class GetBackCameraRosImageResponse extends $pb.GeneratedMessage {
  factory GetBackCameraRosImageResponse({
    Metadata? metadata,
    RosImage? image,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (image != null) result.image = image;
    return result;
  }

  GetBackCameraRosImageResponse._();

  factory GetBackCameraRosImageResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetBackCameraRosImageResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBackCameraRosImageResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOM<RosImage>(2, _omitFieldNames ? '' : 'image', subBuilder: RosImage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetBackCameraRosImageResponse clone() => GetBackCameraRosImageResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetBackCameraRosImageResponse copyWith(void Function(GetBackCameraRosImageResponse) updates) => super.copyWith((message) => updates(message as GetBackCameraRosImageResponse)) as GetBackCameraRosImageResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBackCameraRosImageResponse create() => GetBackCameraRosImageResponse._();
  @$core.override
  GetBackCameraRosImageResponse createEmptyInstance() => create();
  static $pb.PbList<GetBackCameraRosImageResponse> createRepeated() => $pb.PbList<GetBackCameraRosImageResponse>();
  @$core.pragma('dart2js:noInline')
  static GetBackCameraRosImageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBackCameraRosImageResponse>(create);
  static GetBackCameraRosImageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  RosImage get image => $_getN(1);
  @$pb.TagNumber(2)
  set image(RosImage value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasImage() => $_has(1);
  @$pb.TagNumber(2)
  void clearImage() => $_clearField(2);
  @$pb.TagNumber(2)
  RosImage ensureImage() => $_ensure(1);
}

class GetBackCameraRosCompressedImageResponse extends $pb.GeneratedMessage {
  factory GetBackCameraRosCompressedImageResponse({
    Metadata? metadata,
    RosCompressedImage? image,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (image != null) result.image = image;
    return result;
  }

  GetBackCameraRosCompressedImageResponse._();

  factory GetBackCameraRosCompressedImageResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetBackCameraRosCompressedImageResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBackCameraRosCompressedImageResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOM<RosCompressedImage>(2, _omitFieldNames ? '' : 'image', subBuilder: RosCompressedImage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetBackCameraRosCompressedImageResponse clone() => GetBackCameraRosCompressedImageResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetBackCameraRosCompressedImageResponse copyWith(void Function(GetBackCameraRosCompressedImageResponse) updates) => super.copyWith((message) => updates(message as GetBackCameraRosCompressedImageResponse)) as GetBackCameraRosCompressedImageResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBackCameraRosCompressedImageResponse create() => GetBackCameraRosCompressedImageResponse._();
  @$core.override
  GetBackCameraRosCompressedImageResponse createEmptyInstance() => create();
  static $pb.PbList<GetBackCameraRosCompressedImageResponse> createRepeated() => $pb.PbList<GetBackCameraRosCompressedImageResponse>();
  @$core.pragma('dart2js:noInline')
  static GetBackCameraRosCompressedImageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBackCameraRosCompressedImageResponse>(create);
  static GetBackCameraRosCompressedImageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  RosCompressedImage get image => $_getN(1);
  @$pb.TagNumber(2)
  set image(RosCompressedImage value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasImage() => $_has(1);
  @$pb.TagNumber(2)
  void clearImage() => $_clearField(2);
  @$pb.TagNumber(2)
  RosCompressedImage ensureImage() => $_ensure(1);
}

class GetTofCameraRosCameraInfoResponse extends $pb.GeneratedMessage {
  factory GetTofCameraRosCameraInfoResponse({
    Metadata? metadata,
    RosCameraInfo? cameraInfo,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (cameraInfo != null) result.cameraInfo = cameraInfo;
    return result;
  }

  GetTofCameraRosCameraInfoResponse._();

  factory GetTofCameraRosCameraInfoResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetTofCameraRosCameraInfoResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTofCameraRosCameraInfoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOM<RosCameraInfo>(2, _omitFieldNames ? '' : 'cameraInfo', subBuilder: RosCameraInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTofCameraRosCameraInfoResponse clone() => GetTofCameraRosCameraInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTofCameraRosCameraInfoResponse copyWith(void Function(GetTofCameraRosCameraInfoResponse) updates) => super.copyWith((message) => updates(message as GetTofCameraRosCameraInfoResponse)) as GetTofCameraRosCameraInfoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTofCameraRosCameraInfoResponse create() => GetTofCameraRosCameraInfoResponse._();
  @$core.override
  GetTofCameraRosCameraInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetTofCameraRosCameraInfoResponse> createRepeated() => $pb.PbList<GetTofCameraRosCameraInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTofCameraRosCameraInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTofCameraRosCameraInfoResponse>(create);
  static GetTofCameraRosCameraInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  RosCameraInfo get cameraInfo => $_getN(1);
  @$pb.TagNumber(2)
  set cameraInfo(RosCameraInfo value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCameraInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearCameraInfo() => $_clearField(2);
  @$pb.TagNumber(2)
  RosCameraInfo ensureCameraInfo() => $_ensure(1);
}

class GetTofCameraRosImageResponse extends $pb.GeneratedMessage {
  factory GetTofCameraRosImageResponse({
    Metadata? metadata,
    RosImage? image,
    $core.bool? isAvailable,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (image != null) result.image = image;
    if (isAvailable != null) result.isAvailable = isAvailable;
    return result;
  }

  GetTofCameraRosImageResponse._();

  factory GetTofCameraRosImageResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetTofCameraRosImageResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTofCameraRosImageResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOM<RosImage>(2, _omitFieldNames ? '' : 'image', subBuilder: RosImage.create)
    ..aOB(3, _omitFieldNames ? '' : 'isAvailable')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTofCameraRosImageResponse clone() => GetTofCameraRosImageResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTofCameraRosImageResponse copyWith(void Function(GetTofCameraRosImageResponse) updates) => super.copyWith((message) => updates(message as GetTofCameraRosImageResponse)) as GetTofCameraRosImageResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTofCameraRosImageResponse create() => GetTofCameraRosImageResponse._();
  @$core.override
  GetTofCameraRosImageResponse createEmptyInstance() => create();
  static $pb.PbList<GetTofCameraRosImageResponse> createRepeated() => $pb.PbList<GetTofCameraRosImageResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTofCameraRosImageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTofCameraRosImageResponse>(create);
  static GetTofCameraRosImageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  RosImage get image => $_getN(1);
  @$pb.TagNumber(2)
  set image(RosImage value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasImage() => $_has(1);
  @$pb.TagNumber(2)
  void clearImage() => $_clearField(2);
  @$pb.TagNumber(2)
  RosImage ensureImage() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get isAvailable => $_getBF(2);
  @$pb.TagNumber(3)
  set isAvailable($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsAvailable() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsAvailable() => $_clearField(3);
}

class GetTofCameraRosCompressedImageResponse extends $pb.GeneratedMessage {
  factory GetTofCameraRosCompressedImageResponse({
    Metadata? metadata,
    RosCompressedImage? image,
    $core.bool? isAvailable,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (image != null) result.image = image;
    if (isAvailable != null) result.isAvailable = isAvailable;
    return result;
  }

  GetTofCameraRosCompressedImageResponse._();

  factory GetTofCameraRosCompressedImageResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetTofCameraRosCompressedImageResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTofCameraRosCompressedImageResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOM<RosCompressedImage>(2, _omitFieldNames ? '' : 'image', subBuilder: RosCompressedImage.create)
    ..aOB(3, _omitFieldNames ? '' : 'isAvailable')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTofCameraRosCompressedImageResponse clone() => GetTofCameraRosCompressedImageResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTofCameraRosCompressedImageResponse copyWith(void Function(GetTofCameraRosCompressedImageResponse) updates) => super.copyWith((message) => updates(message as GetTofCameraRosCompressedImageResponse)) as GetTofCameraRosCompressedImageResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTofCameraRosCompressedImageResponse create() => GetTofCameraRosCompressedImageResponse._();
  @$core.override
  GetTofCameraRosCompressedImageResponse createEmptyInstance() => create();
  static $pb.PbList<GetTofCameraRosCompressedImageResponse> createRepeated() => $pb.PbList<GetTofCameraRosCompressedImageResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTofCameraRosCompressedImageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTofCameraRosCompressedImageResponse>(create);
  static GetTofCameraRosCompressedImageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  RosCompressedImage get image => $_getN(1);
  @$pb.TagNumber(2)
  set image(RosCompressedImage value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasImage() => $_has(1);
  @$pb.TagNumber(2)
  void clearImage() => $_clearField(2);
  @$pb.TagNumber(2)
  RosCompressedImage ensureImage() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get isAvailable => $_getBF(2);
  @$pb.TagNumber(3)
  set isAvailable($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsAvailable() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsAvailable() => $_clearField(3);
}

class IsReadyResponse extends $pb.GeneratedMessage {
  factory IsReadyResponse({
    $core.bool? ready,
  }) {
    final result = create();
    if (ready != null) result.ready = ready;
    return result;
  }

  IsReadyResponse._();

  factory IsReadyResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory IsReadyResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IsReadyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ready')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IsReadyResponse clone() => IsReadyResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IsReadyResponse copyWith(void Function(IsReadyResponse) updates) => super.copyWith((message) => updates(message as IsReadyResponse)) as IsReadyResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IsReadyResponse create() => IsReadyResponse._();
  @$core.override
  IsReadyResponse createEmptyInstance() => create();
  static $pb.PbList<IsReadyResponse> createRepeated() => $pb.PbList<IsReadyResponse>();
  @$core.pragma('dart2js:noInline')
  static IsReadyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsReadyResponse>(create);
  static IsReadyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ready => $_getBF(0);
  @$pb.TagNumber(1)
  set ready($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasReady() => $_has(0);
  @$pb.TagNumber(1)
  void clearReady() => $_clearField(1);
}

class LockOnEnd extends $pb.GeneratedMessage {
  factory LockOnEnd({
    $core.double? durationSec,
  }) {
    final result = create();
    if (durationSec != null) result.durationSec = durationSec;
    return result;
  }

  LockOnEnd._();

  factory LockOnEnd.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LockOnEnd.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LockOnEnd', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'durationSec', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LockOnEnd clone() => LockOnEnd()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LockOnEnd copyWith(void Function(LockOnEnd) updates) => super.copyWith((message) => updates(message as LockOnEnd)) as LockOnEnd;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LockOnEnd create() => LockOnEnd._();
  @$core.override
  LockOnEnd createEmptyInstance() => create();
  static $pb.PbList<LockOnEnd> createRepeated() => $pb.PbList<LockOnEnd>();
  @$core.pragma('dart2js:noInline')
  static LockOnEnd getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LockOnEnd>(create);
  static LockOnEnd? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get durationSec => $_getN(0);
  @$pb.TagNumber(1)
  set durationSec($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDurationSec() => $_has(0);
  @$pb.TagNumber(1)
  void clearDurationSec() => $_clearField(1);
}

class StartCommandRequest extends $pb.GeneratedMessage {
  factory StartCommandRequest({
    Command? command,
    $core.bool? cancelAll,
    $core.String? ttsOnSuccess,
    $core.String? title,
    $core.bool? deferrable,
    LockOnEnd? lockOnEnd,
  }) {
    final result = create();
    if (command != null) result.command = command;
    if (cancelAll != null) result.cancelAll = cancelAll;
    if (ttsOnSuccess != null) result.ttsOnSuccess = ttsOnSuccess;
    if (title != null) result.title = title;
    if (deferrable != null) result.deferrable = deferrable;
    if (lockOnEnd != null) result.lockOnEnd = lockOnEnd;
    return result;
  }

  StartCommandRequest._();

  factory StartCommandRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory StartCommandRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StartCommandRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Command>(1, _omitFieldNames ? '' : 'command', subBuilder: Command.create)
    ..aOB(2, _omitFieldNames ? '' : 'cancelAll')
    ..aOS(3, _omitFieldNames ? '' : 'ttsOnSuccess')
    ..aOS(4, _omitFieldNames ? '' : 'title')
    ..aOB(5, _omitFieldNames ? '' : 'deferrable')
    ..aOM<LockOnEnd>(6, _omitFieldNames ? '' : 'lockOnEnd', subBuilder: LockOnEnd.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StartCommandRequest clone() => StartCommandRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StartCommandRequest copyWith(void Function(StartCommandRequest) updates) => super.copyWith((message) => updates(message as StartCommandRequest)) as StartCommandRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StartCommandRequest create() => StartCommandRequest._();
  @$core.override
  StartCommandRequest createEmptyInstance() => create();
  static $pb.PbList<StartCommandRequest> createRepeated() => $pb.PbList<StartCommandRequest>();
  @$core.pragma('dart2js:noInline')
  static StartCommandRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartCommandRequest>(create);
  static StartCommandRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Command get command => $_getN(0);
  @$pb.TagNumber(1)
  set command(Command value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCommand() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommand() => $_clearField(1);
  @$pb.TagNumber(1)
  Command ensureCommand() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get cancelAll => $_getBF(1);
  @$pb.TagNumber(2)
  set cancelAll($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCancelAll() => $_has(1);
  @$pb.TagNumber(2)
  void clearCancelAll() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get ttsOnSuccess => $_getSZ(2);
  @$pb.TagNumber(3)
  set ttsOnSuccess($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTtsOnSuccess() => $_has(2);
  @$pb.TagNumber(3)
  void clearTtsOnSuccess() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(4)
  set title($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTitle() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get deferrable => $_getBF(4);
  @$pb.TagNumber(5)
  set deferrable($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDeferrable() => $_has(4);
  @$pb.TagNumber(5)
  void clearDeferrable() => $_clearField(5);

  @$pb.TagNumber(6)
  LockOnEnd get lockOnEnd => $_getN(5);
  @$pb.TagNumber(6)
  set lockOnEnd(LockOnEnd value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasLockOnEnd() => $_has(5);
  @$pb.TagNumber(6)
  void clearLockOnEnd() => $_clearField(6);
  @$pb.TagNumber(6)
  LockOnEnd ensureLockOnEnd() => $_ensure(5);
}

class StartCommandResponse extends $pb.GeneratedMessage {
  factory StartCommandResponse({
    Result? result,
    $core.String? commandId,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    if (commandId != null) result$.commandId = commandId;
    return result$;
  }

  StartCommandResponse._();

  factory StartCommandResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory StartCommandResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StartCommandResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Result>(1, _omitFieldNames ? '' : 'result', subBuilder: Result.create)
    ..aOS(2, _omitFieldNames ? '' : 'commandId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StartCommandResponse clone() => StartCommandResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StartCommandResponse copyWith(void Function(StartCommandResponse) updates) => super.copyWith((message) => updates(message as StartCommandResponse)) as StartCommandResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StartCommandResponse create() => StartCommandResponse._();
  @$core.override
  StartCommandResponse createEmptyInstance() => create();
  static $pb.PbList<StartCommandResponse> createRepeated() => $pb.PbList<StartCommandResponse>();
  @$core.pragma('dart2js:noInline')
  static StartCommandResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartCommandResponse>(create);
  static StartCommandResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get commandId => $_getSZ(1);
  @$pb.TagNumber(2)
  set commandId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCommandId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommandId() => $_clearField(2);
}

class CancelCommandResponse extends $pb.GeneratedMessage {
  factory CancelCommandResponse({
    Result? result,
    Command? command,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    if (command != null) result$.command = command;
    return result$;
  }

  CancelCommandResponse._();

  factory CancelCommandResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory CancelCommandResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CancelCommandResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Result>(1, _omitFieldNames ? '' : 'result', subBuilder: Result.create)
    ..aOM<Command>(2, _omitFieldNames ? '' : 'command', subBuilder: Command.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CancelCommandResponse clone() => CancelCommandResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CancelCommandResponse copyWith(void Function(CancelCommandResponse) updates) => super.copyWith((message) => updates(message as CancelCommandResponse)) as CancelCommandResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CancelCommandResponse create() => CancelCommandResponse._();
  @$core.override
  CancelCommandResponse createEmptyInstance() => create();
  static $pb.PbList<CancelCommandResponse> createRepeated() => $pb.PbList<CancelCommandResponse>();
  @$core.pragma('dart2js:noInline')
  static CancelCommandResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelCommandResponse>(create);
  static CancelCommandResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  Command get command => $_getN(1);
  @$pb.TagNumber(2)
  set command(Command value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCommand() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommand() => $_clearField(2);
  @$pb.TagNumber(2)
  Command ensureCommand() => $_ensure(1);
}

class GetCommandStateResponse extends $pb.GeneratedMessage {
  factory GetCommandStateResponse({
    Metadata? metadata,
    CommandState? state,
    Command? command,
    $core.String? commandId,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (state != null) result.state = state;
    if (command != null) result.command = command;
    if (commandId != null) result.commandId = commandId;
    return result;
  }

  GetCommandStateResponse._();

  factory GetCommandStateResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetCommandStateResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCommandStateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..e<CommandState>(2, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: CommandState.COMMAND_STATE_UNSPECIFIED, valueOf: CommandState.valueOf, enumValues: CommandState.values)
    ..aOM<Command>(3, _omitFieldNames ? '' : 'command', subBuilder: Command.create)
    ..aOS(4, _omitFieldNames ? '' : 'commandId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetCommandStateResponse clone() => GetCommandStateResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetCommandStateResponse copyWith(void Function(GetCommandStateResponse) updates) => super.copyWith((message) => updates(message as GetCommandStateResponse)) as GetCommandStateResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCommandStateResponse create() => GetCommandStateResponse._();
  @$core.override
  GetCommandStateResponse createEmptyInstance() => create();
  static $pb.PbList<GetCommandStateResponse> createRepeated() => $pb.PbList<GetCommandStateResponse>();
  @$core.pragma('dart2js:noInline')
  static GetCommandStateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCommandStateResponse>(create);
  static GetCommandStateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  CommandState get state => $_getN(1);
  @$pb.TagNumber(2)
  set state(CommandState value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => $_clearField(2);

  @$pb.TagNumber(3)
  Command get command => $_getN(2);
  @$pb.TagNumber(3)
  set command(Command value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCommand() => $_has(2);
  @$pb.TagNumber(3)
  void clearCommand() => $_clearField(3);
  @$pb.TagNumber(3)
  Command ensureCommand() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get commandId => $_getSZ(3);
  @$pb.TagNumber(4)
  set commandId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCommandId() => $_has(3);
  @$pb.TagNumber(4)
  void clearCommandId() => $_clearField(4);
}

class GetLastCommandResultResponse extends $pb.GeneratedMessage {
  factory GetLastCommandResultResponse({
    Metadata? metadata,
    Result? result,
    Command? command,
    $core.String? commandId,
  }) {
    final result$ = create();
    if (metadata != null) result$.metadata = metadata;
    if (result != null) result$.result = result;
    if (command != null) result$.command = command;
    if (commandId != null) result$.commandId = commandId;
    return result$;
  }

  GetLastCommandResultResponse._();

  factory GetLastCommandResultResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetLastCommandResultResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetLastCommandResultResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOM<Result>(2, _omitFieldNames ? '' : 'result', subBuilder: Result.create)
    ..aOM<Command>(3, _omitFieldNames ? '' : 'command', subBuilder: Command.create)
    ..aOS(4, _omitFieldNames ? '' : 'commandId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetLastCommandResultResponse clone() => GetLastCommandResultResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetLastCommandResultResponse copyWith(void Function(GetLastCommandResultResponse) updates) => super.copyWith((message) => updates(message as GetLastCommandResultResponse)) as GetLastCommandResultResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetLastCommandResultResponse create() => GetLastCommandResultResponse._();
  @$core.override
  GetLastCommandResultResponse createEmptyInstance() => create();
  static $pb.PbList<GetLastCommandResultResponse> createRepeated() => $pb.PbList<GetLastCommandResultResponse>();
  @$core.pragma('dart2js:noInline')
  static GetLastCommandResultResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLastCommandResultResponse>(create);
  static GetLastCommandResultResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  Result get result => $_getN(1);
  @$pb.TagNumber(2)
  set result(Result value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearResult() => $_clearField(2);
  @$pb.TagNumber(2)
  Result ensureResult() => $_ensure(1);

  @$pb.TagNumber(3)
  Command get command => $_getN(2);
  @$pb.TagNumber(3)
  set command(Command value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCommand() => $_has(2);
  @$pb.TagNumber(3)
  void clearCommand() => $_clearField(3);
  @$pb.TagNumber(3)
  Command ensureCommand() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get commandId => $_getSZ(3);
  @$pb.TagNumber(4)
  set commandId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCommandId() => $_has(3);
  @$pb.TagNumber(4)
  void clearCommandId() => $_clearField(4);
}

class ProceedResponse extends $pb.GeneratedMessage {
  factory ProceedResponse({
    Result? result,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    return result$;
  }

  ProceedResponse._();

  factory ProceedResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ProceedResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProceedResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Result>(1, _omitFieldNames ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProceedResponse clone() => ProceedResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProceedResponse copyWith(void Function(ProceedResponse) updates) => super.copyWith((message) => updates(message as ProceedResponse)) as ProceedResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProceedResponse create() => ProceedResponse._();
  @$core.override
  ProceedResponse createEmptyInstance() => create();
  static $pb.PbList<ProceedResponse> createRepeated() => $pb.PbList<ProceedResponse>();
  @$core.pragma('dart2js:noInline')
  static ProceedResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProceedResponse>(create);
  static ProceedResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

class GetLocationsResponse extends $pb.GeneratedMessage {
  factory GetLocationsResponse({
    Metadata? metadata,
    $core.Iterable<Location>? locations,
    $core.String? defaultLocationId,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (locations != null) result.locations.addAll(locations);
    if (defaultLocationId != null) result.defaultLocationId = defaultLocationId;
    return result;
  }

  GetLocationsResponse._();

  factory GetLocationsResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetLocationsResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetLocationsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..pc<Location>(2, _omitFieldNames ? '' : 'locations', $pb.PbFieldType.PM, subBuilder: Location.create)
    ..aOS(3, _omitFieldNames ? '' : 'defaultLocationId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetLocationsResponse clone() => GetLocationsResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetLocationsResponse copyWith(void Function(GetLocationsResponse) updates) => super.copyWith((message) => updates(message as GetLocationsResponse)) as GetLocationsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetLocationsResponse create() => GetLocationsResponse._();
  @$core.override
  GetLocationsResponse createEmptyInstance() => create();
  static $pb.PbList<GetLocationsResponse> createRepeated() => $pb.PbList<GetLocationsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetLocationsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLocationsResponse>(create);
  static GetLocationsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<Location> get locations => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get defaultLocationId => $_getSZ(2);
  @$pb.TagNumber(3)
  set defaultLocationId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDefaultLocationId() => $_has(2);
  @$pb.TagNumber(3)
  void clearDefaultLocationId() => $_clearField(3);
}

class GetShelvesResponse extends $pb.GeneratedMessage {
  factory GetShelvesResponse({
    Metadata? metadata,
    $core.Iterable<Shelf>? shelves,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (shelves != null) result.shelves.addAll(shelves);
    return result;
  }

  GetShelvesResponse._();

  factory GetShelvesResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetShelvesResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetShelvesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..pc<Shelf>(2, _omitFieldNames ? '' : 'shelves', $pb.PbFieldType.PM, subBuilder: Shelf.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetShelvesResponse clone() => GetShelvesResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetShelvesResponse copyWith(void Function(GetShelvesResponse) updates) => super.copyWith((message) => updates(message as GetShelvesResponse)) as GetShelvesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetShelvesResponse create() => GetShelvesResponse._();
  @$core.override
  GetShelvesResponse createEmptyInstance() => create();
  static $pb.PbList<GetShelvesResponse> createRepeated() => $pb.PbList<GetShelvesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetShelvesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetShelvesResponse>(create);
  static GetShelvesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<Shelf> get shelves => $_getList(1);
}

class GetMovingShelfIdResponse extends $pb.GeneratedMessage {
  factory GetMovingShelfIdResponse({
    Metadata? metadata,
    $core.String? shelfId,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (shelfId != null) result.shelfId = shelfId;
    return result;
  }

  GetMovingShelfIdResponse._();

  factory GetMovingShelfIdResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetMovingShelfIdResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMovingShelfIdResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOS(2, _omitFieldNames ? '' : 'shelfId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMovingShelfIdResponse clone() => GetMovingShelfIdResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMovingShelfIdResponse copyWith(void Function(GetMovingShelfIdResponse) updates) => super.copyWith((message) => updates(message as GetMovingShelfIdResponse)) as GetMovingShelfIdResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMovingShelfIdResponse create() => GetMovingShelfIdResponse._();
  @$core.override
  GetMovingShelfIdResponse createEmptyInstance() => create();
  static $pb.PbList<GetMovingShelfIdResponse> createRepeated() => $pb.PbList<GetMovingShelfIdResponse>();
  @$core.pragma('dart2js:noInline')
  static GetMovingShelfIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMovingShelfIdResponse>(create);
  static GetMovingShelfIdResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get shelfId => $_getSZ(1);
  @$pb.TagNumber(2)
  set shelfId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasShelfId() => $_has(1);
  @$pb.TagNumber(2)
  void clearShelfId() => $_clearField(2);
}

class ResetShelfPoseRequest extends $pb.GeneratedMessage {
  factory ResetShelfPoseRequest({
    $core.String? shelfId,
  }) {
    final result = create();
    if (shelfId != null) result.shelfId = shelfId;
    return result;
  }

  ResetShelfPoseRequest._();

  factory ResetShelfPoseRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ResetShelfPoseRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResetShelfPoseRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'shelfId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResetShelfPoseRequest clone() => ResetShelfPoseRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResetShelfPoseRequest copyWith(void Function(ResetShelfPoseRequest) updates) => super.copyWith((message) => updates(message as ResetShelfPoseRequest)) as ResetShelfPoseRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResetShelfPoseRequest create() => ResetShelfPoseRequest._();
  @$core.override
  ResetShelfPoseRequest createEmptyInstance() => create();
  static $pb.PbList<ResetShelfPoseRequest> createRepeated() => $pb.PbList<ResetShelfPoseRequest>();
  @$core.pragma('dart2js:noInline')
  static ResetShelfPoseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResetShelfPoseRequest>(create);
  static ResetShelfPoseRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get shelfId => $_getSZ(0);
  @$pb.TagNumber(1)
  set shelfId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasShelfId() => $_has(0);
  @$pb.TagNumber(1)
  void clearShelfId() => $_clearField(1);
}

class ResetShelfPoseResponse extends $pb.GeneratedMessage {
  factory ResetShelfPoseResponse({
    Result? result,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    return result$;
  }

  ResetShelfPoseResponse._();

  factory ResetShelfPoseResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ResetShelfPoseResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResetShelfPoseResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Result>(1, _omitFieldNames ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResetShelfPoseResponse clone() => ResetShelfPoseResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResetShelfPoseResponse copyWith(void Function(ResetShelfPoseResponse) updates) => super.copyWith((message) => updates(message as ResetShelfPoseResponse)) as ResetShelfPoseResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResetShelfPoseResponse create() => ResetShelfPoseResponse._();
  @$core.override
  ResetShelfPoseResponse createEmptyInstance() => create();
  static $pb.PbList<ResetShelfPoseResponse> createRepeated() => $pb.PbList<ResetShelfPoseResponse>();
  @$core.pragma('dart2js:noInline')
  static ResetShelfPoseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResetShelfPoseResponse>(create);
  static ResetShelfPoseResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

class SetAutoHomingEnabledRequest extends $pb.GeneratedMessage {
  factory SetAutoHomingEnabledRequest({
    $core.bool? enable,
  }) {
    final result = create();
    if (enable != null) result.enable = enable;
    return result;
  }

  SetAutoHomingEnabledRequest._();

  factory SetAutoHomingEnabledRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SetAutoHomingEnabledRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetAutoHomingEnabledRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enable')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetAutoHomingEnabledRequest clone() => SetAutoHomingEnabledRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetAutoHomingEnabledRequest copyWith(void Function(SetAutoHomingEnabledRequest) updates) => super.copyWith((message) => updates(message as SetAutoHomingEnabledRequest)) as SetAutoHomingEnabledRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetAutoHomingEnabledRequest create() => SetAutoHomingEnabledRequest._();
  @$core.override
  SetAutoHomingEnabledRequest createEmptyInstance() => create();
  static $pb.PbList<SetAutoHomingEnabledRequest> createRepeated() => $pb.PbList<SetAutoHomingEnabledRequest>();
  @$core.pragma('dart2js:noInline')
  static SetAutoHomingEnabledRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetAutoHomingEnabledRequest>(create);
  static SetAutoHomingEnabledRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enable => $_getBF(0);
  @$pb.TagNumber(1)
  set enable($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEnable() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnable() => $_clearField(1);
}

class SetAutoHomingEnabledResponse extends $pb.GeneratedMessage {
  factory SetAutoHomingEnabledResponse({
    Result? result,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    return result$;
  }

  SetAutoHomingEnabledResponse._();

  factory SetAutoHomingEnabledResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SetAutoHomingEnabledResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetAutoHomingEnabledResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Result>(1, _omitFieldNames ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetAutoHomingEnabledResponse clone() => SetAutoHomingEnabledResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetAutoHomingEnabledResponse copyWith(void Function(SetAutoHomingEnabledResponse) updates) => super.copyWith((message) => updates(message as SetAutoHomingEnabledResponse)) as SetAutoHomingEnabledResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetAutoHomingEnabledResponse create() => SetAutoHomingEnabledResponse._();
  @$core.override
  SetAutoHomingEnabledResponse createEmptyInstance() => create();
  static $pb.PbList<SetAutoHomingEnabledResponse> createRepeated() => $pb.PbList<SetAutoHomingEnabledResponse>();
  @$core.pragma('dart2js:noInline')
  static SetAutoHomingEnabledResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetAutoHomingEnabledResponse>(create);
  static SetAutoHomingEnabledResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

class GetAutoHomingEnabledResponse extends $pb.GeneratedMessage {
  factory GetAutoHomingEnabledResponse({
    Metadata? metadata,
    $core.bool? enabled,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (enabled != null) result.enabled = enabled;
    return result;
  }

  GetAutoHomingEnabledResponse._();

  factory GetAutoHomingEnabledResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetAutoHomingEnabledResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAutoHomingEnabledResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOB(2, _omitFieldNames ? '' : 'enabled')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAutoHomingEnabledResponse clone() => GetAutoHomingEnabledResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAutoHomingEnabledResponse copyWith(void Function(GetAutoHomingEnabledResponse) updates) => super.copyWith((message) => updates(message as GetAutoHomingEnabledResponse)) as GetAutoHomingEnabledResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAutoHomingEnabledResponse create() => GetAutoHomingEnabledResponse._();
  @$core.override
  GetAutoHomingEnabledResponse createEmptyInstance() => create();
  static $pb.PbList<GetAutoHomingEnabledResponse> createRepeated() => $pb.PbList<GetAutoHomingEnabledResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAutoHomingEnabledResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAutoHomingEnabledResponse>(create);
  static GetAutoHomingEnabledResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get enabled => $_getBF(1);
  @$pb.TagNumber(2)
  set enabled($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEnabled() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnabled() => $_clearField(2);
}

class SetManualControlEnabledRequest extends $pb.GeneratedMessage {
  factory SetManualControlEnabledRequest({
    $core.bool? enable,
    $core.bool? useShelfRegistration,
  }) {
    final result = create();
    if (enable != null) result.enable = enable;
    if (useShelfRegistration != null) result.useShelfRegistration = useShelfRegistration;
    return result;
  }

  SetManualControlEnabledRequest._();

  factory SetManualControlEnabledRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SetManualControlEnabledRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetManualControlEnabledRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enable')
    ..aOB(2, _omitFieldNames ? '' : 'useShelfRegistration')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetManualControlEnabledRequest clone() => SetManualControlEnabledRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetManualControlEnabledRequest copyWith(void Function(SetManualControlEnabledRequest) updates) => super.copyWith((message) => updates(message as SetManualControlEnabledRequest)) as SetManualControlEnabledRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetManualControlEnabledRequest create() => SetManualControlEnabledRequest._();
  @$core.override
  SetManualControlEnabledRequest createEmptyInstance() => create();
  static $pb.PbList<SetManualControlEnabledRequest> createRepeated() => $pb.PbList<SetManualControlEnabledRequest>();
  @$core.pragma('dart2js:noInline')
  static SetManualControlEnabledRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetManualControlEnabledRequest>(create);
  static SetManualControlEnabledRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enable => $_getBF(0);
  @$pb.TagNumber(1)
  set enable($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEnable() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnable() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get useShelfRegistration => $_getBF(1);
  @$pb.TagNumber(2)
  set useShelfRegistration($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUseShelfRegistration() => $_has(1);
  @$pb.TagNumber(2)
  void clearUseShelfRegistration() => $_clearField(2);
}

class SetManualControlEnabledResponse extends $pb.GeneratedMessage {
  factory SetManualControlEnabledResponse({
    Result? result,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    return result$;
  }

  SetManualControlEnabledResponse._();

  factory SetManualControlEnabledResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SetManualControlEnabledResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetManualControlEnabledResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Result>(1, _omitFieldNames ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetManualControlEnabledResponse clone() => SetManualControlEnabledResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetManualControlEnabledResponse copyWith(void Function(SetManualControlEnabledResponse) updates) => super.copyWith((message) => updates(message as SetManualControlEnabledResponse)) as SetManualControlEnabledResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetManualControlEnabledResponse create() => SetManualControlEnabledResponse._();
  @$core.override
  SetManualControlEnabledResponse createEmptyInstance() => create();
  static $pb.PbList<SetManualControlEnabledResponse> createRepeated() => $pb.PbList<SetManualControlEnabledResponse>();
  @$core.pragma('dart2js:noInline')
  static SetManualControlEnabledResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetManualControlEnabledResponse>(create);
  static SetManualControlEnabledResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

class GetManualControlEnabledResponse extends $pb.GeneratedMessage {
  factory GetManualControlEnabledResponse({
    Metadata? metadata,
    $core.bool? enabled,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (enabled != null) result.enabled = enabled;
    return result;
  }

  GetManualControlEnabledResponse._();

  factory GetManualControlEnabledResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetManualControlEnabledResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetManualControlEnabledResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOB(2, _omitFieldNames ? '' : 'enabled')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetManualControlEnabledResponse clone() => GetManualControlEnabledResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetManualControlEnabledResponse copyWith(void Function(GetManualControlEnabledResponse) updates) => super.copyWith((message) => updates(message as GetManualControlEnabledResponse)) as GetManualControlEnabledResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetManualControlEnabledResponse create() => GetManualControlEnabledResponse._();
  @$core.override
  GetManualControlEnabledResponse createEmptyInstance() => create();
  static $pb.PbList<GetManualControlEnabledResponse> createRepeated() => $pb.PbList<GetManualControlEnabledResponse>();
  @$core.pragma('dart2js:noInline')
  static GetManualControlEnabledResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetManualControlEnabledResponse>(create);
  static GetManualControlEnabledResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get enabled => $_getBF(1);
  @$pb.TagNumber(2)
  set enabled($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEnabled() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnabled() => $_clearField(2);
}

class SetFrontTorchIntensityRequest extends $pb.GeneratedMessage {
  factory SetFrontTorchIntensityRequest({
    $core.int? intensity,
  }) {
    final result = create();
    if (intensity != null) result.intensity = intensity;
    return result;
  }

  SetFrontTorchIntensityRequest._();

  factory SetFrontTorchIntensityRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SetFrontTorchIntensityRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetFrontTorchIntensityRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'intensity', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetFrontTorchIntensityRequest clone() => SetFrontTorchIntensityRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetFrontTorchIntensityRequest copyWith(void Function(SetFrontTorchIntensityRequest) updates) => super.copyWith((message) => updates(message as SetFrontTorchIntensityRequest)) as SetFrontTorchIntensityRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetFrontTorchIntensityRequest create() => SetFrontTorchIntensityRequest._();
  @$core.override
  SetFrontTorchIntensityRequest createEmptyInstance() => create();
  static $pb.PbList<SetFrontTorchIntensityRequest> createRepeated() => $pb.PbList<SetFrontTorchIntensityRequest>();
  @$core.pragma('dart2js:noInline')
  static SetFrontTorchIntensityRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetFrontTorchIntensityRequest>(create);
  static SetFrontTorchIntensityRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get intensity => $_getIZ(0);
  @$pb.TagNumber(1)
  set intensity($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIntensity() => $_has(0);
  @$pb.TagNumber(1)
  void clearIntensity() => $_clearField(1);
}

class SetFrontTorchIntensityResponse extends $pb.GeneratedMessage {
  factory SetFrontTorchIntensityResponse({
    Result? result,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    return result$;
  }

  SetFrontTorchIntensityResponse._();

  factory SetFrontTorchIntensityResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SetFrontTorchIntensityResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetFrontTorchIntensityResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Result>(1, _omitFieldNames ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetFrontTorchIntensityResponse clone() => SetFrontTorchIntensityResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetFrontTorchIntensityResponse copyWith(void Function(SetFrontTorchIntensityResponse) updates) => super.copyWith((message) => updates(message as SetFrontTorchIntensityResponse)) as SetFrontTorchIntensityResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetFrontTorchIntensityResponse create() => SetFrontTorchIntensityResponse._();
  @$core.override
  SetFrontTorchIntensityResponse createEmptyInstance() => create();
  static $pb.PbList<SetFrontTorchIntensityResponse> createRepeated() => $pb.PbList<SetFrontTorchIntensityResponse>();
  @$core.pragma('dart2js:noInline')
  static SetFrontTorchIntensityResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetFrontTorchIntensityResponse>(create);
  static SetFrontTorchIntensityResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

class SetBackTorchIntensityRequest extends $pb.GeneratedMessage {
  factory SetBackTorchIntensityRequest({
    $core.int? intensity,
  }) {
    final result = create();
    if (intensity != null) result.intensity = intensity;
    return result;
  }

  SetBackTorchIntensityRequest._();

  factory SetBackTorchIntensityRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SetBackTorchIntensityRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetBackTorchIntensityRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'intensity', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetBackTorchIntensityRequest clone() => SetBackTorchIntensityRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetBackTorchIntensityRequest copyWith(void Function(SetBackTorchIntensityRequest) updates) => super.copyWith((message) => updates(message as SetBackTorchIntensityRequest)) as SetBackTorchIntensityRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetBackTorchIntensityRequest create() => SetBackTorchIntensityRequest._();
  @$core.override
  SetBackTorchIntensityRequest createEmptyInstance() => create();
  static $pb.PbList<SetBackTorchIntensityRequest> createRepeated() => $pb.PbList<SetBackTorchIntensityRequest>();
  @$core.pragma('dart2js:noInline')
  static SetBackTorchIntensityRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetBackTorchIntensityRequest>(create);
  static SetBackTorchIntensityRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get intensity => $_getIZ(0);
  @$pb.TagNumber(1)
  set intensity($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIntensity() => $_has(0);
  @$pb.TagNumber(1)
  void clearIntensity() => $_clearField(1);
}

class SetBackTorchIntensityResponse extends $pb.GeneratedMessage {
  factory SetBackTorchIntensityResponse({
    Result? result,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    return result$;
  }

  SetBackTorchIntensityResponse._();

  factory SetBackTorchIntensityResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SetBackTorchIntensityResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetBackTorchIntensityResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Result>(1, _omitFieldNames ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetBackTorchIntensityResponse clone() => SetBackTorchIntensityResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetBackTorchIntensityResponse copyWith(void Function(SetBackTorchIntensityResponse) updates) => super.copyWith((message) => updates(message as SetBackTorchIntensityResponse)) as SetBackTorchIntensityResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetBackTorchIntensityResponse create() => SetBackTorchIntensityResponse._();
  @$core.override
  SetBackTorchIntensityResponse createEmptyInstance() => create();
  static $pb.PbList<SetBackTorchIntensityResponse> createRepeated() => $pb.PbList<SetBackTorchIntensityResponse>();
  @$core.pragma('dart2js:noInline')
  static SetBackTorchIntensityResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetBackTorchIntensityResponse>(create);
  static SetBackTorchIntensityResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

class SetRobotVelocityRequest extends $pb.GeneratedMessage {
  factory SetRobotVelocityRequest({
    $core.double? linear,
    $core.double? angular,
  }) {
    final result = create();
    if (linear != null) result.linear = linear;
    if (angular != null) result.angular = angular;
    return result;
  }

  SetRobotVelocityRequest._();

  factory SetRobotVelocityRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SetRobotVelocityRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetRobotVelocityRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'linear', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'angular', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetRobotVelocityRequest clone() => SetRobotVelocityRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetRobotVelocityRequest copyWith(void Function(SetRobotVelocityRequest) updates) => super.copyWith((message) => updates(message as SetRobotVelocityRequest)) as SetRobotVelocityRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetRobotVelocityRequest create() => SetRobotVelocityRequest._();
  @$core.override
  SetRobotVelocityRequest createEmptyInstance() => create();
  static $pb.PbList<SetRobotVelocityRequest> createRepeated() => $pb.PbList<SetRobotVelocityRequest>();
  @$core.pragma('dart2js:noInline')
  static SetRobotVelocityRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetRobotVelocityRequest>(create);
  static SetRobotVelocityRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get linear => $_getN(0);
  @$pb.TagNumber(1)
  set linear($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLinear() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinear() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get angular => $_getN(1);
  @$pb.TagNumber(2)
  set angular($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAngular() => $_has(1);
  @$pb.TagNumber(2)
  void clearAngular() => $_clearField(2);
}

class SetRobotVelocityResponse extends $pb.GeneratedMessage {
  factory SetRobotVelocityResponse({
    Result? result,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    return result$;
  }

  SetRobotVelocityResponse._();

  factory SetRobotVelocityResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SetRobotVelocityResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetRobotVelocityResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Result>(1, _omitFieldNames ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetRobotVelocityResponse clone() => SetRobotVelocityResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetRobotVelocityResponse copyWith(void Function(SetRobotVelocityResponse) updates) => super.copyWith((message) => updates(message as SetRobotVelocityResponse)) as SetRobotVelocityResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetRobotVelocityResponse create() => SetRobotVelocityResponse._();
  @$core.override
  SetRobotVelocityResponse createEmptyInstance() => create();
  static $pb.PbList<SetRobotVelocityResponse> createRepeated() => $pb.PbList<SetRobotVelocityResponse>();
  @$core.pragma('dart2js:noInline')
  static SetRobotVelocityResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetRobotVelocityResponse>(create);
  static SetRobotVelocityResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

class ActivateLaserScanRequest extends $pb.GeneratedMessage {
  factory ActivateLaserScanRequest({
    $core.double? durationSec,
  }) {
    final result = create();
    if (durationSec != null) result.durationSec = durationSec;
    return result;
  }

  ActivateLaserScanRequest._();

  factory ActivateLaserScanRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ActivateLaserScanRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ActivateLaserScanRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'durationSec', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActivateLaserScanRequest clone() => ActivateLaserScanRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActivateLaserScanRequest copyWith(void Function(ActivateLaserScanRequest) updates) => super.copyWith((message) => updates(message as ActivateLaserScanRequest)) as ActivateLaserScanRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActivateLaserScanRequest create() => ActivateLaserScanRequest._();
  @$core.override
  ActivateLaserScanRequest createEmptyInstance() => create();
  static $pb.PbList<ActivateLaserScanRequest> createRepeated() => $pb.PbList<ActivateLaserScanRequest>();
  @$core.pragma('dart2js:noInline')
  static ActivateLaserScanRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActivateLaserScanRequest>(create);
  static ActivateLaserScanRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get durationSec => $_getN(0);
  @$pb.TagNumber(1)
  set durationSec($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDurationSec() => $_has(0);
  @$pb.TagNumber(1)
  void clearDurationSec() => $_clearField(1);
}

class ActivateLaserScanResponse extends $pb.GeneratedMessage {
  factory ActivateLaserScanResponse({
    Result? result,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    return result$;
  }

  ActivateLaserScanResponse._();

  factory ActivateLaserScanResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ActivateLaserScanResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ActivateLaserScanResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Result>(1, _omitFieldNames ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActivateLaserScanResponse clone() => ActivateLaserScanResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActivateLaserScanResponse copyWith(void Function(ActivateLaserScanResponse) updates) => super.copyWith((message) => updates(message as ActivateLaserScanResponse)) as ActivateLaserScanResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActivateLaserScanResponse create() => ActivateLaserScanResponse._();
  @$core.override
  ActivateLaserScanResponse createEmptyInstance() => create();
  static $pb.PbList<ActivateLaserScanResponse> createRepeated() => $pb.PbList<ActivateLaserScanResponse>();
  @$core.pragma('dart2js:noInline')
  static ActivateLaserScanResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActivateLaserScanResponse>(create);
  static ActivateLaserScanResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

class GetStaticTransformResponse extends $pb.GeneratedMessage {
  factory GetStaticTransformResponse({
    Metadata? metadata,
    $core.Iterable<RosTransformStamped>? transforms,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (transforms != null) result.transforms.addAll(transforms);
    return result;
  }

  GetStaticTransformResponse._();

  factory GetStaticTransformResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetStaticTransformResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetStaticTransformResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..pc<RosTransformStamped>(2, _omitFieldNames ? '' : 'transforms', $pb.PbFieldType.PM, subBuilder: RosTransformStamped.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetStaticTransformResponse clone() => GetStaticTransformResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetStaticTransformResponse copyWith(void Function(GetStaticTransformResponse) updates) => super.copyWith((message) => updates(message as GetStaticTransformResponse)) as GetStaticTransformResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetStaticTransformResponse create() => GetStaticTransformResponse._();
  @$core.override
  GetStaticTransformResponse createEmptyInstance() => create();
  static $pb.PbList<GetStaticTransformResponse> createRepeated() => $pb.PbList<GetStaticTransformResponse>();
  @$core.pragma('dart2js:noInline')
  static GetStaticTransformResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStaticTransformResponse>(create);
  static GetStaticTransformResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<RosTransformStamped> get transforms => $_getList(1);
}

class GetDynamicTransformResponse extends $pb.GeneratedMessage {
  factory GetDynamicTransformResponse({
    $core.Iterable<RosTransformStamped>? transforms,
  }) {
    final result = create();
    if (transforms != null) result.transforms.addAll(transforms);
    return result;
  }

  GetDynamicTransformResponse._();

  factory GetDynamicTransformResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetDynamicTransformResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDynamicTransformResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..pc<RosTransformStamped>(1, _omitFieldNames ? '' : 'transforms', $pb.PbFieldType.PM, subBuilder: RosTransformStamped.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetDynamicTransformResponse clone() => GetDynamicTransformResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetDynamicTransformResponse copyWith(void Function(GetDynamicTransformResponse) updates) => super.copyWith((message) => updates(message as GetDynamicTransformResponse)) as GetDynamicTransformResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDynamicTransformResponse create() => GetDynamicTransformResponse._();
  @$core.override
  GetDynamicTransformResponse createEmptyInstance() => create();
  static $pb.PbList<GetDynamicTransformResponse> createRepeated() => $pb.PbList<GetDynamicTransformResponse>();
  @$core.pragma('dart2js:noInline')
  static GetDynamicTransformResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDynamicTransformResponse>(create);
  static GetDynamicTransformResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<RosTransformStamped> get transforms => $_getList(0);
}

/// Map
class MapListEntry extends $pb.GeneratedMessage {
  factory MapListEntry({
    $core.String? name,
    $core.String? id,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (id != null) result.id = id;
    return result;
  }

  MapListEntry._();

  factory MapListEntry.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory MapListEntry.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MapListEntry', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapListEntry clone() => MapListEntry()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapListEntry copyWith(void Function(MapListEntry) updates) => super.copyWith((message) => updates(message as MapListEntry)) as MapListEntry;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapListEntry create() => MapListEntry._();
  @$core.override
  MapListEntry createEmptyInstance() => create();
  static $pb.PbList<MapListEntry> createRepeated() => $pb.PbList<MapListEntry>();
  @$core.pragma('dart2js:noInline')
  static MapListEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapListEntry>(create);
  static MapListEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);
}

class GetMapListResponse extends $pb.GeneratedMessage {
  factory GetMapListResponse({
    Metadata? metadata,
    $core.Iterable<MapListEntry>? mapListEntries,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (mapListEntries != null) result.mapListEntries.addAll(mapListEntries);
    return result;
  }

  GetMapListResponse._();

  factory GetMapListResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetMapListResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMapListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..pc<MapListEntry>(2, _omitFieldNames ? '' : 'mapListEntries', $pb.PbFieldType.PM, subBuilder: MapListEntry.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapListResponse clone() => GetMapListResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapListResponse copyWith(void Function(GetMapListResponse) updates) => super.copyWith((message) => updates(message as GetMapListResponse)) as GetMapListResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMapListResponse create() => GetMapListResponse._();
  @$core.override
  GetMapListResponse createEmptyInstance() => create();
  static $pb.PbList<GetMapListResponse> createRepeated() => $pb.PbList<GetMapListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetMapListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMapListResponse>(create);
  static GetMapListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<MapListEntry> get mapListEntries => $_getList(1);
}

class GetCurrentMapIdResponse extends $pb.GeneratedMessage {
  factory GetCurrentMapIdResponse({
    Metadata? metadata,
    $core.String? id,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (id != null) result.id = id;
    return result;
  }

  GetCurrentMapIdResponse._();

  factory GetCurrentMapIdResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetCurrentMapIdResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCurrentMapIdResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..aOS(2, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetCurrentMapIdResponse clone() => GetCurrentMapIdResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetCurrentMapIdResponse copyWith(void Function(GetCurrentMapIdResponse) updates) => super.copyWith((message) => updates(message as GetCurrentMapIdResponse)) as GetCurrentMapIdResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCurrentMapIdResponse create() => GetCurrentMapIdResponse._();
  @$core.override
  GetCurrentMapIdResponse createEmptyInstance() => create();
  static $pb.PbList<GetCurrentMapIdResponse> createRepeated() => $pb.PbList<GetCurrentMapIdResponse>();
  @$core.pragma('dart2js:noInline')
  static GetCurrentMapIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCurrentMapIdResponse>(create);
  static GetCurrentMapIdResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);
}

class LoadMapPreviewRequest extends $pb.GeneratedMessage {
  factory LoadMapPreviewRequest({
    $core.String? mapId,
  }) {
    final result = create();
    if (mapId != null) result.mapId = mapId;
    return result;
  }

  LoadMapPreviewRequest._();

  factory LoadMapPreviewRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LoadMapPreviewRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoadMapPreviewRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'mapId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoadMapPreviewRequest clone() => LoadMapPreviewRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoadMapPreviewRequest copyWith(void Function(LoadMapPreviewRequest) updates) => super.copyWith((message) => updates(message as LoadMapPreviewRequest)) as LoadMapPreviewRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoadMapPreviewRequest create() => LoadMapPreviewRequest._();
  @$core.override
  LoadMapPreviewRequest createEmptyInstance() => create();
  static $pb.PbList<LoadMapPreviewRequest> createRepeated() => $pb.PbList<LoadMapPreviewRequest>();
  @$core.pragma('dart2js:noInline')
  static LoadMapPreviewRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadMapPreviewRequest>(create);
  static LoadMapPreviewRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mapId => $_getSZ(0);
  @$pb.TagNumber(1)
  set mapId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMapId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMapId() => $_clearField(1);
}

class LoadMapPreviewResponse extends $pb.GeneratedMessage {
  factory LoadMapPreviewResponse({
    Result? result,
    Map_? map,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    if (map != null) result$.map = map;
    return result$;
  }

  LoadMapPreviewResponse._();

  factory LoadMapPreviewResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LoadMapPreviewResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoadMapPreviewResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Result>(1, _omitFieldNames ? '' : 'result', subBuilder: Result.create)
    ..aOM<Map_>(2, _omitFieldNames ? '' : 'map', subBuilder: Map_.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoadMapPreviewResponse clone() => LoadMapPreviewResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoadMapPreviewResponse copyWith(void Function(LoadMapPreviewResponse) updates) => super.copyWith((message) => updates(message as LoadMapPreviewResponse)) as LoadMapPreviewResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoadMapPreviewResponse create() => LoadMapPreviewResponse._();
  @$core.override
  LoadMapPreviewResponse createEmptyInstance() => create();
  static $pb.PbList<LoadMapPreviewResponse> createRepeated() => $pb.PbList<LoadMapPreviewResponse>();
  @$core.pragma('dart2js:noInline')
  static LoadMapPreviewResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadMapPreviewResponse>(create);
  static LoadMapPreviewResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  Map_ get map => $_getN(1);
  @$pb.TagNumber(2)
  set map(Map_ value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMap() => $_has(1);
  @$pb.TagNumber(2)
  void clearMap() => $_clearField(2);
  @$pb.TagNumber(2)
  Map_ ensureMap() => $_ensure(1);
}

class SwitchMapRequest extends $pb.GeneratedMessage {
  factory SwitchMapRequest({
    $core.String? mapId,
    Pose? initialPose,
    $core.bool? inheritDockingStateAndDockedShelf,
  }) {
    final result = create();
    if (mapId != null) result.mapId = mapId;
    if (initialPose != null) result.initialPose = initialPose;
    if (inheritDockingStateAndDockedShelf != null) result.inheritDockingStateAndDockedShelf = inheritDockingStateAndDockedShelf;
    return result;
  }

  SwitchMapRequest._();

  factory SwitchMapRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SwitchMapRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SwitchMapRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'mapId')
    ..aOM<Pose>(2, _omitFieldNames ? '' : 'initialPose', subBuilder: Pose.create)
    ..aOB(3, _omitFieldNames ? '' : 'inheritDockingStateAndDockedShelf')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SwitchMapRequest clone() => SwitchMapRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SwitchMapRequest copyWith(void Function(SwitchMapRequest) updates) => super.copyWith((message) => updates(message as SwitchMapRequest)) as SwitchMapRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SwitchMapRequest create() => SwitchMapRequest._();
  @$core.override
  SwitchMapRequest createEmptyInstance() => create();
  static $pb.PbList<SwitchMapRequest> createRepeated() => $pb.PbList<SwitchMapRequest>();
  @$core.pragma('dart2js:noInline')
  static SwitchMapRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwitchMapRequest>(create);
  static SwitchMapRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mapId => $_getSZ(0);
  @$pb.TagNumber(1)
  set mapId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMapId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMapId() => $_clearField(1);

  @$pb.TagNumber(2)
  Pose get initialPose => $_getN(1);
  @$pb.TagNumber(2)
  set initialPose(Pose value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasInitialPose() => $_has(1);
  @$pb.TagNumber(2)
  void clearInitialPose() => $_clearField(2);
  @$pb.TagNumber(2)
  Pose ensureInitialPose() => $_ensure(1);

  /// Available only in Kachaka Pro. In the standard version, setting this flag to true will throw an error.
  @$pb.TagNumber(3)
  $core.bool get inheritDockingStateAndDockedShelf => $_getBF(2);
  @$pb.TagNumber(3)
  set inheritDockingStateAndDockedShelf($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasInheritDockingStateAndDockedShelf() => $_has(2);
  @$pb.TagNumber(3)
  void clearInheritDockingStateAndDockedShelf() => $_clearField(3);
}

class SwitchMapResponse extends $pb.GeneratedMessage {
  factory SwitchMapResponse({
    Result? result,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    return result$;
  }

  SwitchMapResponse._();

  factory SwitchMapResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SwitchMapResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SwitchMapResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Result>(1, _omitFieldNames ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SwitchMapResponse clone() => SwitchMapResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SwitchMapResponse copyWith(void Function(SwitchMapResponse) updates) => super.copyWith((message) => updates(message as SwitchMapResponse)) as SwitchMapResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SwitchMapResponse create() => SwitchMapResponse._();
  @$core.override
  SwitchMapResponse createEmptyInstance() => create();
  static $pb.PbList<SwitchMapResponse> createRepeated() => $pb.PbList<SwitchMapResponse>();
  @$core.pragma('dart2js:noInline')
  static SwitchMapResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwitchMapResponse>(create);
  static SwitchMapResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

class ExportMapRequest extends $pb.GeneratedMessage {
  factory ExportMapRequest({
    $core.String? mapId,
  }) {
    final result = create();
    if (mapId != null) result.mapId = mapId;
    return result;
  }

  ExportMapRequest._();

  factory ExportMapRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ExportMapRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExportMapRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'mapId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExportMapRequest clone() => ExportMapRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExportMapRequest copyWith(void Function(ExportMapRequest) updates) => super.copyWith((message) => updates(message as ExportMapRequest)) as ExportMapRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExportMapRequest create() => ExportMapRequest._();
  @$core.override
  ExportMapRequest createEmptyInstance() => create();
  static $pb.PbList<ExportMapRequest> createRepeated() => $pb.PbList<ExportMapRequest>();
  @$core.pragma('dart2js:noInline')
  static ExportMapRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExportMapRequest>(create);
  static ExportMapRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mapId => $_getSZ(0);
  @$pb.TagNumber(1)
  set mapId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMapId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMapId() => $_clearField(1);
}

class ExportMapResponse_MiddleOfStream extends $pb.GeneratedMessage {
  factory ExportMapResponse_MiddleOfStream({
    $core.List<$core.int>? data,
  }) {
    final result = create();
    if (data != null) result.data = data;
    return result;
  }

  ExportMapResponse_MiddleOfStream._();

  factory ExportMapResponse_MiddleOfStream.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ExportMapResponse_MiddleOfStream.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExportMapResponse.MiddleOfStream', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExportMapResponse_MiddleOfStream clone() => ExportMapResponse_MiddleOfStream()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExportMapResponse_MiddleOfStream copyWith(void Function(ExportMapResponse_MiddleOfStream) updates) => super.copyWith((message) => updates(message as ExportMapResponse_MiddleOfStream)) as ExportMapResponse_MiddleOfStream;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExportMapResponse_MiddleOfStream create() => ExportMapResponse_MiddleOfStream._();
  @$core.override
  ExportMapResponse_MiddleOfStream createEmptyInstance() => create();
  static $pb.PbList<ExportMapResponse_MiddleOfStream> createRepeated() => $pb.PbList<ExportMapResponse_MiddleOfStream>();
  @$core.pragma('dart2js:noInline')
  static ExportMapResponse_MiddleOfStream getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExportMapResponse_MiddleOfStream>(create);
  static ExportMapResponse_MiddleOfStream? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);
}

class ExportMapResponse_EndOfStream extends $pb.GeneratedMessage {
  factory ExportMapResponse_EndOfStream({
    Result? result,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    return result$;
  }

  ExportMapResponse_EndOfStream._();

  factory ExportMapResponse_EndOfStream.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ExportMapResponse_EndOfStream.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExportMapResponse.EndOfStream', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Result>(1, _omitFieldNames ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExportMapResponse_EndOfStream clone() => ExportMapResponse_EndOfStream()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExportMapResponse_EndOfStream copyWith(void Function(ExportMapResponse_EndOfStream) updates) => super.copyWith((message) => updates(message as ExportMapResponse_EndOfStream)) as ExportMapResponse_EndOfStream;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExportMapResponse_EndOfStream create() => ExportMapResponse_EndOfStream._();
  @$core.override
  ExportMapResponse_EndOfStream createEmptyInstance() => create();
  static $pb.PbList<ExportMapResponse_EndOfStream> createRepeated() => $pb.PbList<ExportMapResponse_EndOfStream>();
  @$core.pragma('dart2js:noInline')
  static ExportMapResponse_EndOfStream getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExportMapResponse_EndOfStream>(create);
  static ExportMapResponse_EndOfStream? _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

enum ExportMapResponse_Response {
  middleOfStream, 
  endOfStream, 
  notSet
}

class ExportMapResponse extends $pb.GeneratedMessage {
  factory ExportMapResponse({
    ExportMapResponse_MiddleOfStream? middleOfStream,
    ExportMapResponse_EndOfStream? endOfStream,
  }) {
    final result = create();
    if (middleOfStream != null) result.middleOfStream = middleOfStream;
    if (endOfStream != null) result.endOfStream = endOfStream;
    return result;
  }

  ExportMapResponse._();

  factory ExportMapResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ExportMapResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ExportMapResponse_Response> _ExportMapResponse_ResponseByTag = {
    1 : ExportMapResponse_Response.middleOfStream,
    2 : ExportMapResponse_Response.endOfStream,
    0 : ExportMapResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExportMapResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ExportMapResponse_MiddleOfStream>(1, _omitFieldNames ? '' : 'middleOfStream', subBuilder: ExportMapResponse_MiddleOfStream.create)
    ..aOM<ExportMapResponse_EndOfStream>(2, _omitFieldNames ? '' : 'endOfStream', subBuilder: ExportMapResponse_EndOfStream.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExportMapResponse clone() => ExportMapResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExportMapResponse copyWith(void Function(ExportMapResponse) updates) => super.copyWith((message) => updates(message as ExportMapResponse)) as ExportMapResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExportMapResponse create() => ExportMapResponse._();
  @$core.override
  ExportMapResponse createEmptyInstance() => create();
  static $pb.PbList<ExportMapResponse> createRepeated() => $pb.PbList<ExportMapResponse>();
  @$core.pragma('dart2js:noInline')
  static ExportMapResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExportMapResponse>(create);
  static ExportMapResponse? _defaultInstance;

  ExportMapResponse_Response whichResponse() => _ExportMapResponse_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ExportMapResponse_MiddleOfStream get middleOfStream => $_getN(0);
  @$pb.TagNumber(1)
  set middleOfStream(ExportMapResponse_MiddleOfStream value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMiddleOfStream() => $_has(0);
  @$pb.TagNumber(1)
  void clearMiddleOfStream() => $_clearField(1);
  @$pb.TagNumber(1)
  ExportMapResponse_MiddleOfStream ensureMiddleOfStream() => $_ensure(0);

  @$pb.TagNumber(2)
  ExportMapResponse_EndOfStream get endOfStream => $_getN(1);
  @$pb.TagNumber(2)
  set endOfStream(ExportMapResponse_EndOfStream value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasEndOfStream() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndOfStream() => $_clearField(2);
  @$pb.TagNumber(2)
  ExportMapResponse_EndOfStream ensureEndOfStream() => $_ensure(1);
}

class ImportMapRequest extends $pb.GeneratedMessage {
  factory ImportMapRequest({
    $core.List<$core.int>? data,
  }) {
    final result = create();
    if (data != null) result.data = data;
    return result;
  }

  ImportMapRequest._();

  factory ImportMapRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ImportMapRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ImportMapRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ImportMapRequest clone() => ImportMapRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ImportMapRequest copyWith(void Function(ImportMapRequest) updates) => super.copyWith((message) => updates(message as ImportMapRequest)) as ImportMapRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImportMapRequest create() => ImportMapRequest._();
  @$core.override
  ImportMapRequest createEmptyInstance() => create();
  static $pb.PbList<ImportMapRequest> createRepeated() => $pb.PbList<ImportMapRequest>();
  @$core.pragma('dart2js:noInline')
  static ImportMapRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImportMapRequest>(create);
  static ImportMapRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);
}

class ImportMapResponse extends $pb.GeneratedMessage {
  factory ImportMapResponse({
    Result? result,
    $core.String? mapId,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    if (mapId != null) result$.mapId = mapId;
    return result$;
  }

  ImportMapResponse._();

  factory ImportMapResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ImportMapResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ImportMapResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Result>(1, _omitFieldNames ? '' : 'result', subBuilder: Result.create)
    ..aOS(2, _omitFieldNames ? '' : 'mapId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ImportMapResponse clone() => ImportMapResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ImportMapResponse copyWith(void Function(ImportMapResponse) updates) => super.copyWith((message) => updates(message as ImportMapResponse)) as ImportMapResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImportMapResponse create() => ImportMapResponse._();
  @$core.override
  ImportMapResponse createEmptyInstance() => create();
  static $pb.PbList<ImportMapResponse> createRepeated() => $pb.PbList<ImportMapResponse>();
  @$core.pragma('dart2js:noInline')
  static ImportMapResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImportMapResponse>(create);
  static ImportMapResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get mapId => $_getSZ(1);
  @$pb.TagNumber(2)
  set mapId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMapId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMapId() => $_clearField(2);
}

class Shortcut extends $pb.GeneratedMessage {
  factory Shortcut({
    $core.String? id,
    $core.String? name,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    return result;
  }

  Shortcut._();

  factory Shortcut.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Shortcut.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Shortcut', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Shortcut clone() => Shortcut()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Shortcut copyWith(void Function(Shortcut) updates) => super.copyWith((message) => updates(message as Shortcut)) as Shortcut;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Shortcut create() => Shortcut._();
  @$core.override
  Shortcut createEmptyInstance() => create();
  static $pb.PbList<Shortcut> createRepeated() => $pb.PbList<Shortcut>();
  @$core.pragma('dart2js:noInline')
  static Shortcut getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Shortcut>(create);
  static Shortcut? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);
}

class GetShortcutsResponse extends $pb.GeneratedMessage {
  factory GetShortcutsResponse({
    Metadata? metadata,
    $core.Iterable<Shortcut>? shortcuts,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (shortcuts != null) result.shortcuts.addAll(shortcuts);
    return result;
  }

  GetShortcutsResponse._();

  factory GetShortcutsResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetShortcutsResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetShortcutsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..pc<Shortcut>(2, _omitFieldNames ? '' : 'shortcuts', $pb.PbFieldType.PM, subBuilder: Shortcut.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetShortcutsResponse clone() => GetShortcutsResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetShortcutsResponse copyWith(void Function(GetShortcutsResponse) updates) => super.copyWith((message) => updates(message as GetShortcutsResponse)) as GetShortcutsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetShortcutsResponse create() => GetShortcutsResponse._();
  @$core.override
  GetShortcutsResponse createEmptyInstance() => create();
  static $pb.PbList<GetShortcutsResponse> createRepeated() => $pb.PbList<GetShortcutsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetShortcutsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetShortcutsResponse>(create);
  static GetShortcutsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<Shortcut> get shortcuts => $_getList(1);
}

class StartShortcutCommandRequest extends $pb.GeneratedMessage {
  factory StartShortcutCommandRequest({
    $core.String? targetShortcutId,
    $core.bool? cancelAll,
  }) {
    final result = create();
    if (targetShortcutId != null) result.targetShortcutId = targetShortcutId;
    if (cancelAll != null) result.cancelAll = cancelAll;
    return result;
  }

  StartShortcutCommandRequest._();

  factory StartShortcutCommandRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory StartShortcutCommandRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StartShortcutCommandRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'targetShortcutId')
    ..aOB(2, _omitFieldNames ? '' : 'cancelAll')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StartShortcutCommandRequest clone() => StartShortcutCommandRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StartShortcutCommandRequest copyWith(void Function(StartShortcutCommandRequest) updates) => super.copyWith((message) => updates(message as StartShortcutCommandRequest)) as StartShortcutCommandRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StartShortcutCommandRequest create() => StartShortcutCommandRequest._();
  @$core.override
  StartShortcutCommandRequest createEmptyInstance() => create();
  static $pb.PbList<StartShortcutCommandRequest> createRepeated() => $pb.PbList<StartShortcutCommandRequest>();
  @$core.pragma('dart2js:noInline')
  static StartShortcutCommandRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartShortcutCommandRequest>(create);
  static StartShortcutCommandRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get targetShortcutId => $_getSZ(0);
  @$pb.TagNumber(1)
  set targetShortcutId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTargetShortcutId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetShortcutId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get cancelAll => $_getBF(1);
  @$pb.TagNumber(2)
  set cancelAll($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCancelAll() => $_has(1);
  @$pb.TagNumber(2)
  void clearCancelAll() => $_clearField(2);
}

class StartShortcutCommandResponse extends $pb.GeneratedMessage {
  factory StartShortcutCommandResponse({
    Result? result,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    return result$;
  }

  StartShortcutCommandResponse._();

  factory StartShortcutCommandResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory StartShortcutCommandResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StartShortcutCommandResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Result>(1, _omitFieldNames ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StartShortcutCommandResponse clone() => StartShortcutCommandResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StartShortcutCommandResponse copyWith(void Function(StartShortcutCommandResponse) updates) => super.copyWith((message) => updates(message as StartShortcutCommandResponse)) as StartShortcutCommandResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StartShortcutCommandResponse create() => StartShortcutCommandResponse._();
  @$core.override
  StartShortcutCommandResponse createEmptyInstance() => create();
  static $pb.PbList<StartShortcutCommandResponse> createRepeated() => $pb.PbList<StartShortcutCommandResponse>();
  @$core.pragma('dart2js:noInline')
  static StartShortcutCommandResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartShortcutCommandResponse>(create);
  static StartShortcutCommandResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

/// History
class History extends $pb.GeneratedMessage {
  factory History({
    $core.String? id,
    Command? command,
    $core.bool? success,
    $core.int? errorCode,
    $fixnum.Int64? commandExecutedTime,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (command != null) result.command = command;
    if (success != null) result.success = success;
    if (errorCode != null) result.errorCode = errorCode;
    if (commandExecutedTime != null) result.commandExecutedTime = commandExecutedTime;
    return result;
  }

  History._();

  factory History.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory History.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'History', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<Command>(4, _omitFieldNames ? '' : 'command', subBuilder: Command.create)
    ..aOB(5, _omitFieldNames ? '' : 'success')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'errorCode', $pb.PbFieldType.O3)
    ..aInt64(7, _omitFieldNames ? '' : 'commandExecutedTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  History clone() => History()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  History copyWith(void Function(History) updates) => super.copyWith((message) => updates(message as History)) as History;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static History create() => History._();
  @$core.override
  History createEmptyInstance() => create();
  static $pb.PbList<History> createRepeated() => $pb.PbList<History>();
  @$core.pragma('dart2js:noInline')
  static History getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<History>(create);
  static History? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(4)
  Command get command => $_getN(1);
  @$pb.TagNumber(4)
  set command(Command value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCommand() => $_has(1);
  @$pb.TagNumber(4)
  void clearCommand() => $_clearField(4);
  @$pb.TagNumber(4)
  Command ensureCommand() => $_ensure(1);

  @$pb.TagNumber(5)
  $core.bool get success => $_getBF(2);
  @$pb.TagNumber(5)
  set success($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(5)
  $core.bool hasSuccess() => $_has(2);
  @$pb.TagNumber(5)
  void clearSuccess() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get errorCode => $_getIZ(3);
  @$pb.TagNumber(6)
  set errorCode($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(6)
  $core.bool hasErrorCode() => $_has(3);
  @$pb.TagNumber(6)
  void clearErrorCode() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get commandExecutedTime => $_getI64(4);
  @$pb.TagNumber(7)
  set commandExecutedTime($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(7)
  $core.bool hasCommandExecutedTime() => $_has(4);
  @$pb.TagNumber(7)
  void clearCommandExecutedTime() => $_clearField(7);
}

class GetHistoryListResponse extends $pb.GeneratedMessage {
  factory GetHistoryListResponse({
    Metadata? metadata,
    $core.Iterable<History>? histories,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (histories != null) result.histories.addAll(histories);
    return result;
  }

  GetHistoryListResponse._();

  factory GetHistoryListResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetHistoryListResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetHistoryListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..pc<History>(2, _omitFieldNames ? '' : 'histories', $pb.PbFieldType.PM, subBuilder: History.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetHistoryListResponse clone() => GetHistoryListResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetHistoryListResponse copyWith(void Function(GetHistoryListResponse) updates) => super.copyWith((message) => updates(message as GetHistoryListResponse)) as GetHistoryListResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetHistoryListResponse create() => GetHistoryListResponse._();
  @$core.override
  GetHistoryListResponse createEmptyInstance() => create();
  static $pb.PbList<GetHistoryListResponse> createRepeated() => $pb.PbList<GetHistoryListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetHistoryListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetHistoryListResponse>(create);
  static GetHistoryListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<History> get histories => $_getList(1);
}

/// Robot settings
class GetSpeakerVolumeResponse extends $pb.GeneratedMessage {
  factory GetSpeakerVolumeResponse({
    Metadata? metadata,
    $core.int? volume,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (volume != null) result.volume = volume;
    return result;
  }

  GetSpeakerVolumeResponse._();

  factory GetSpeakerVolumeResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetSpeakerVolumeResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSpeakerVolumeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'volume', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetSpeakerVolumeResponse clone() => GetSpeakerVolumeResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetSpeakerVolumeResponse copyWith(void Function(GetSpeakerVolumeResponse) updates) => super.copyWith((message) => updates(message as GetSpeakerVolumeResponse)) as GetSpeakerVolumeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSpeakerVolumeResponse create() => GetSpeakerVolumeResponse._();
  @$core.override
  GetSpeakerVolumeResponse createEmptyInstance() => create();
  static $pb.PbList<GetSpeakerVolumeResponse> createRepeated() => $pb.PbList<GetSpeakerVolumeResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSpeakerVolumeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSpeakerVolumeResponse>(create);
  static GetSpeakerVolumeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get volume => $_getIZ(1);
  @$pb.TagNumber(2)
  set volume($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVolume() => $_has(1);
  @$pb.TagNumber(2)
  void clearVolume() => $_clearField(2);
}

class SetSpeakerVolumeRequest extends $pb.GeneratedMessage {
  factory SetSpeakerVolumeRequest({
    $core.int? volume,
  }) {
    final result = create();
    if (volume != null) result.volume = volume;
    return result;
  }

  SetSpeakerVolumeRequest._();

  factory SetSpeakerVolumeRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SetSpeakerVolumeRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetSpeakerVolumeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'volume', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetSpeakerVolumeRequest clone() => SetSpeakerVolumeRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetSpeakerVolumeRequest copyWith(void Function(SetSpeakerVolumeRequest) updates) => super.copyWith((message) => updates(message as SetSpeakerVolumeRequest)) as SetSpeakerVolumeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetSpeakerVolumeRequest create() => SetSpeakerVolumeRequest._();
  @$core.override
  SetSpeakerVolumeRequest createEmptyInstance() => create();
  static $pb.PbList<SetSpeakerVolumeRequest> createRepeated() => $pb.PbList<SetSpeakerVolumeRequest>();
  @$core.pragma('dart2js:noInline')
  static SetSpeakerVolumeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetSpeakerVolumeRequest>(create);
  static SetSpeakerVolumeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get volume => $_getIZ(0);
  @$pb.TagNumber(1)
  set volume($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVolume() => $_has(0);
  @$pb.TagNumber(1)
  void clearVolume() => $_clearField(1);
}

class SetSpeakerVolumeResponse extends $pb.GeneratedMessage {
  factory SetSpeakerVolumeResponse({
    Result? result,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    return result$;
  }

  SetSpeakerVolumeResponse._();

  factory SetSpeakerVolumeResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SetSpeakerVolumeResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetSpeakerVolumeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Result>(1, _omitFieldNames ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetSpeakerVolumeResponse clone() => SetSpeakerVolumeResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetSpeakerVolumeResponse copyWith(void Function(SetSpeakerVolumeResponse) updates) => super.copyWith((message) => updates(message as SetSpeakerVolumeResponse)) as SetSpeakerVolumeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetSpeakerVolumeResponse create() => SetSpeakerVolumeResponse._();
  @$core.override
  SetSpeakerVolumeResponse createEmptyInstance() => create();
  static $pb.PbList<SetSpeakerVolumeResponse> createRepeated() => $pb.PbList<SetSpeakerVolumeResponse>();
  @$core.pragma('dart2js:noInline')
  static SetSpeakerVolumeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetSpeakerVolumeResponse>(create);
  static SetSpeakerVolumeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

class RestartRobotResponse extends $pb.GeneratedMessage {
  factory RestartRobotResponse({
    Result? result,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    return result$;
  }

  RestartRobotResponse._();

  factory RestartRobotResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory RestartRobotResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RestartRobotResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Result>(1, _omitFieldNames ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RestartRobotResponse clone() => RestartRobotResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RestartRobotResponse copyWith(void Function(RestartRobotResponse) updates) => super.copyWith((message) => updates(message as RestartRobotResponse)) as RestartRobotResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RestartRobotResponse create() => RestartRobotResponse._();
  @$core.override
  RestartRobotResponse createEmptyInstance() => create();
  static $pb.PbList<RestartRobotResponse> createRepeated() => $pb.PbList<RestartRobotResponse>();
  @$core.pragma('dart2js:noInline')
  static RestartRobotResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RestartRobotResponse>(create);
  static RestartRobotResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

class SetEmergencyStopResponse extends $pb.GeneratedMessage {
  factory SetEmergencyStopResponse({
    Result? result,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    return result$;
  }

  SetEmergencyStopResponse._();

  factory SetEmergencyStopResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SetEmergencyStopResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetEmergencyStopResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kachaka_api'), createEmptyInstance: create)
    ..aOM<Result>(1, _omitFieldNames ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetEmergencyStopResponse clone() => SetEmergencyStopResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetEmergencyStopResponse copyWith(void Function(SetEmergencyStopResponse) updates) => super.copyWith((message) => updates(message as SetEmergencyStopResponse)) as SetEmergencyStopResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetEmergencyStopResponse create() => SetEmergencyStopResponse._();
  @$core.override
  SetEmergencyStopResponse createEmptyInstance() => create();
  static $pb.PbList<SetEmergencyStopResponse> createRepeated() => $pb.PbList<SetEmergencyStopResponse>();
  @$core.pragma('dart2js:noInline')
  static SetEmergencyStopResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetEmergencyStopResponse>(create);
  static SetEmergencyStopResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
