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

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'kachaka-api.pb.dart' as $0;

export 'kachaka-api.pb.dart';

/// Services
@$pb.GrpcServiceName('kachaka_api.KachakaApi')
class KachakaApiClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$getRobotSerialNumber = $grpc.ClientMethod<$0.GetRequest, $0.GetRobotSerialNumberResponse>(
      '/kachaka_api.KachakaApi/GetRobotSerialNumber',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetRobotSerialNumberResponse.fromBuffer(value));
  static final _$getRobotVersion = $grpc.ClientMethod<$0.GetRequest, $0.GetRobotVersionResponse>(
      '/kachaka_api.KachakaApi/GetRobotVersion',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetRobotVersionResponse.fromBuffer(value));
  static final _$getRobotPose = $grpc.ClientMethod<$0.GetRequest, $0.GetRobotPoseResponse>(
      '/kachaka_api.KachakaApi/GetRobotPose',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetRobotPoseResponse.fromBuffer(value));
  static final _$setRobotPose = $grpc.ClientMethod<$0.SetRobotPoseRequest, $0.SetRobotPoseResponse>(
      '/kachaka_api.KachakaApi/SetRobotPose',
      ($0.SetRobotPoseRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetRobotPoseResponse.fromBuffer(value));
  static final _$getPngMap = $grpc.ClientMethod<$0.GetRequest, $0.GetPngMapResponse>(
      '/kachaka_api.KachakaApi/GetPngMap',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetPngMapResponse.fromBuffer(value));
  static final _$getBatteryInfo = $grpc.ClientMethod<$0.GetRequest, $0.GetBatteryInfoResponse>(
      '/kachaka_api.KachakaApi/GetBatteryInfo',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetBatteryInfoResponse.fromBuffer(value));
  static final _$getObjectDetection = $grpc.ClientMethod<$0.GetRequest, $0.GetObjectDetectionResponse>(
      '/kachaka_api.KachakaApi/GetObjectDetection',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetObjectDetectionResponse.fromBuffer(value));
  static final _$getObjectDetectionFeatures = $grpc.ClientMethod<$0.GetRequest, $0.GetObjectDetectionFeaturesResponse>(
      '/kachaka_api.KachakaApi/GetObjectDetectionFeatures',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetObjectDetectionFeaturesResponse.fromBuffer(value));
  static final _$getRosImu = $grpc.ClientMethod<$0.GetRequest, $0.GetRosImuResponse>(
      '/kachaka_api.KachakaApi/GetRosImu',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetRosImuResponse.fromBuffer(value));
  static final _$getRosOdometry = $grpc.ClientMethod<$0.GetRequest, $0.GetRosOdometryResponse>(
      '/kachaka_api.KachakaApi/GetRosOdometry',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetRosOdometryResponse.fromBuffer(value));
  static final _$getRosWheelOdometry = $grpc.ClientMethod<$0.GetRequest, $0.GetRosWheelOdometryResponse>(
      '/kachaka_api.KachakaApi/GetRosWheelOdometry',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetRosWheelOdometryResponse.fromBuffer(value));
  static final _$getRosLaserScan = $grpc.ClientMethod<$0.GetRequest, $0.GetRosLaserScanResponse>(
      '/kachaka_api.KachakaApi/GetRosLaserScan',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetRosLaserScanResponse.fromBuffer(value));
  static final _$getFrontCameraRosCameraInfo = $grpc.ClientMethod<$0.GetRequest, $0.GetFrontCameraRosCameraInfoResponse>(
      '/kachaka_api.KachakaApi/GetFrontCameraRosCameraInfo',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetFrontCameraRosCameraInfoResponse.fromBuffer(value));
  static final _$getFrontCameraRosImage = $grpc.ClientMethod<$0.GetRequest, $0.GetFrontCameraRosImageResponse>(
      '/kachaka_api.KachakaApi/GetFrontCameraRosImage',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetFrontCameraRosImageResponse.fromBuffer(value));
  static final _$getFrontCameraRosCompressedImage = $grpc.ClientMethod<$0.GetRequest, $0.GetFrontCameraRosCompressedImageResponse>(
      '/kachaka_api.KachakaApi/GetFrontCameraRosCompressedImage',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetFrontCameraRosCompressedImageResponse.fromBuffer(value));
  static final _$getBackCameraRosCameraInfo = $grpc.ClientMethod<$0.GetRequest, $0.GetBackCameraRosCameraInfoResponse>(
      '/kachaka_api.KachakaApi/GetBackCameraRosCameraInfo',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetBackCameraRosCameraInfoResponse.fromBuffer(value));
  static final _$getBackCameraRosImage = $grpc.ClientMethod<$0.GetRequest, $0.GetBackCameraRosImageResponse>(
      '/kachaka_api.KachakaApi/GetBackCameraRosImage',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetBackCameraRosImageResponse.fromBuffer(value));
  static final _$getBackCameraRosCompressedImage = $grpc.ClientMethod<$0.GetRequest, $0.GetBackCameraRosCompressedImageResponse>(
      '/kachaka_api.KachakaApi/GetBackCameraRosCompressedImage',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetBackCameraRosCompressedImageResponse.fromBuffer(value));
  static final _$getTofCameraRosCameraInfo = $grpc.ClientMethod<$0.GetRequest, $0.GetTofCameraRosCameraInfoResponse>(
      '/kachaka_api.KachakaApi/GetTofCameraRosCameraInfo',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetTofCameraRosCameraInfoResponse.fromBuffer(value));
  static final _$getTofCameraRosImage = $grpc.ClientMethod<$0.GetRequest, $0.GetTofCameraRosImageResponse>(
      '/kachaka_api.KachakaApi/GetTofCameraRosImage',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetTofCameraRosImageResponse.fromBuffer(value));
  static final _$getTofCameraRosCompressedImage = $grpc.ClientMethod<$0.GetRequest, $0.GetTofCameraRosCompressedImageResponse>(
      '/kachaka_api.KachakaApi/GetTofCameraRosCompressedImage',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetTofCameraRosCompressedImageResponse.fromBuffer(value));
  static final _$getRobotErrorCodeJson = $grpc.ClientMethod<$0.EmptyRequest, $0.GetRobotErrorCodeJsonResponse>(
      '/kachaka_api.KachakaApi/GetRobotErrorCodeJson',
      ($0.EmptyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetRobotErrorCodeJsonResponse.fromBuffer(value));
  static final _$getError = $grpc.ClientMethod<$0.GetRequest, $0.GetErrorResponse>(
      '/kachaka_api.KachakaApi/GetError',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetErrorResponse.fromBuffer(value));
  static final _$isReady = $grpc.ClientMethod<$0.EmptyRequest, $0.IsReadyResponse>(
      '/kachaka_api.KachakaApi/IsReady',
      ($0.EmptyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.IsReadyResponse.fromBuffer(value));
  static final _$startCommand = $grpc.ClientMethod<$0.StartCommandRequest, $0.StartCommandResponse>(
      '/kachaka_api.KachakaApi/StartCommand',
      ($0.StartCommandRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StartCommandResponse.fromBuffer(value));
  static final _$cancelCommand = $grpc.ClientMethod<$0.EmptyRequest, $0.CancelCommandResponse>(
      '/kachaka_api.KachakaApi/CancelCommand',
      ($0.EmptyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CancelCommandResponse.fromBuffer(value));
  static final _$getCommandState = $grpc.ClientMethod<$0.GetRequest, $0.GetCommandStateResponse>(
      '/kachaka_api.KachakaApi/GetCommandState',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetCommandStateResponse.fromBuffer(value));
  static final _$getLastCommandResult = $grpc.ClientMethod<$0.GetRequest, $0.GetLastCommandResultResponse>(
      '/kachaka_api.KachakaApi/GetLastCommandResult',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetLastCommandResultResponse.fromBuffer(value));
  static final _$proceed = $grpc.ClientMethod<$0.EmptyRequest, $0.ProceedResponse>(
      '/kachaka_api.KachakaApi/Proceed',
      ($0.EmptyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ProceedResponse.fromBuffer(value));
  static final _$getLocations = $grpc.ClientMethod<$0.GetRequest, $0.GetLocationsResponse>(
      '/kachaka_api.KachakaApi/GetLocations',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetLocationsResponse.fromBuffer(value));
  static final _$getShelves = $grpc.ClientMethod<$0.GetRequest, $0.GetShelvesResponse>(
      '/kachaka_api.KachakaApi/GetShelves',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetShelvesResponse.fromBuffer(value));
  static final _$getMovingShelfId = $grpc.ClientMethod<$0.GetRequest, $0.GetMovingShelfIdResponse>(
      '/kachaka_api.KachakaApi/GetMovingShelfId',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetMovingShelfIdResponse.fromBuffer(value));
  static final _$resetShelfPose = $grpc.ClientMethod<$0.ResetShelfPoseRequest, $0.ResetShelfPoseResponse>(
      '/kachaka_api.KachakaApi/ResetShelfPose',
      ($0.ResetShelfPoseRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ResetShelfPoseResponse.fromBuffer(value));
  static final _$setAutoHomingEnabled = $grpc.ClientMethod<$0.SetAutoHomingEnabledRequest, $0.SetAutoHomingEnabledResponse>(
      '/kachaka_api.KachakaApi/SetAutoHomingEnabled',
      ($0.SetAutoHomingEnabledRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetAutoHomingEnabledResponse.fromBuffer(value));
  static final _$getAutoHomingEnabled = $grpc.ClientMethod<$0.GetRequest, $0.GetAutoHomingEnabledResponse>(
      '/kachaka_api.KachakaApi/GetAutoHomingEnabled',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetAutoHomingEnabledResponse.fromBuffer(value));
  static final _$setManualControlEnabled = $grpc.ClientMethod<$0.SetManualControlEnabledRequest, $0.SetManualControlEnabledResponse>(
      '/kachaka_api.KachakaApi/SetManualControlEnabled',
      ($0.SetManualControlEnabledRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetManualControlEnabledResponse.fromBuffer(value));
  static final _$getManualControlEnabled = $grpc.ClientMethod<$0.GetRequest, $0.GetManualControlEnabledResponse>(
      '/kachaka_api.KachakaApi/GetManualControlEnabled',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetManualControlEnabledResponse.fromBuffer(value));
  static final _$setFrontTorchIntensity = $grpc.ClientMethod<$0.SetFrontTorchIntensityRequest, $0.SetFrontTorchIntensityResponse>(
      '/kachaka_api.KachakaApi/SetFrontTorchIntensity',
      ($0.SetFrontTorchIntensityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetFrontTorchIntensityResponse.fromBuffer(value));
  static final _$setBackTorchIntensity = $grpc.ClientMethod<$0.SetBackTorchIntensityRequest, $0.SetBackTorchIntensityResponse>(
      '/kachaka_api.KachakaApi/SetBackTorchIntensity',
      ($0.SetBackTorchIntensityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetBackTorchIntensityResponse.fromBuffer(value));
  static final _$setRobotVelocity = $grpc.ClientMethod<$0.SetRobotVelocityRequest, $0.SetRobotVelocityResponse>(
      '/kachaka_api.KachakaApi/SetRobotVelocity',
      ($0.SetRobotVelocityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetRobotVelocityResponse.fromBuffer(value));
  static final _$activateLaserScan = $grpc.ClientMethod<$0.ActivateLaserScanRequest, $0.ActivateLaserScanResponse>(
      '/kachaka_api.KachakaApi/ActivateLaserScan',
      ($0.ActivateLaserScanRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ActivateLaserScanResponse.fromBuffer(value));
  static final _$getMapList = $grpc.ClientMethod<$0.GetRequest, $0.GetMapListResponse>(
      '/kachaka_api.KachakaApi/GetMapList',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetMapListResponse.fromBuffer(value));
  static final _$getCurrentMapId = $grpc.ClientMethod<$0.GetRequest, $0.GetCurrentMapIdResponse>(
      '/kachaka_api.KachakaApi/GetCurrentMapId',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetCurrentMapIdResponse.fromBuffer(value));
  static final _$loadMapPreview = $grpc.ClientMethod<$0.LoadMapPreviewRequest, $0.LoadMapPreviewResponse>(
      '/kachaka_api.KachakaApi/LoadMapPreview',
      ($0.LoadMapPreviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoadMapPreviewResponse.fromBuffer(value));
  static final _$switchMap = $grpc.ClientMethod<$0.SwitchMapRequest, $0.SwitchMapResponse>(
      '/kachaka_api.KachakaApi/SwitchMap',
      ($0.SwitchMapRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SwitchMapResponse.fromBuffer(value));
  static final _$exportMap = $grpc.ClientMethod<$0.ExportMapRequest, $0.ExportMapResponse>(
      '/kachaka_api.KachakaApi/ExportMap',
      ($0.ExportMapRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ExportMapResponse.fromBuffer(value));
  static final _$importMap = $grpc.ClientMethod<$0.ImportMapRequest, $0.ImportMapResponse>(
      '/kachaka_api.KachakaApi/ImportMap',
      ($0.ImportMapRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ImportMapResponse.fromBuffer(value));
  static final _$getShortcuts = $grpc.ClientMethod<$0.GetRequest, $0.GetShortcutsResponse>(
      '/kachaka_api.KachakaApi/GetShortcuts',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetShortcutsResponse.fromBuffer(value));
  static final _$startShortcutCommand = $grpc.ClientMethod<$0.StartShortcutCommandRequest, $0.StartShortcutCommandResponse>(
      '/kachaka_api.KachakaApi/StartShortcutCommand',
      ($0.StartShortcutCommandRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StartShortcutCommandResponse.fromBuffer(value));
  static final _$getHistoryList = $grpc.ClientMethod<$0.GetRequest, $0.GetHistoryListResponse>(
      '/kachaka_api.KachakaApi/GetHistoryList',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetHistoryListResponse.fromBuffer(value));
  static final _$getSpeakerVolume = $grpc.ClientMethod<$0.GetRequest, $0.GetSpeakerVolumeResponse>(
      '/kachaka_api.KachakaApi/GetSpeakerVolume',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetSpeakerVolumeResponse.fromBuffer(value));
  static final _$setSpeakerVolume = $grpc.ClientMethod<$0.SetSpeakerVolumeRequest, $0.SetSpeakerVolumeResponse>(
      '/kachaka_api.KachakaApi/SetSpeakerVolume',
      ($0.SetSpeakerVolumeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetSpeakerVolumeResponse.fromBuffer(value));
  static final _$restartRobot = $grpc.ClientMethod<$0.EmptyRequest, $0.RestartRobotResponse>(
      '/kachaka_api.KachakaApi/RestartRobot',
      ($0.EmptyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RestartRobotResponse.fromBuffer(value));
  static final _$setEmergencyStop = $grpc.ClientMethod<$0.EmptyRequest, $0.SetEmergencyStopResponse>(
      '/kachaka_api.KachakaApi/SetEmergencyStop',
      ($0.EmptyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetEmergencyStopResponse.fromBuffer(value));
  static final _$getStaticTransform = $grpc.ClientMethod<$0.GetRequest, $0.GetStaticTransformResponse>(
      '/kachaka_api.KachakaApi/GetStaticTransform',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetStaticTransformResponse.fromBuffer(value));
  static final _$getDynamicTransform = $grpc.ClientMethod<$0.EmptyRequest, $0.GetDynamicTransformResponse>(
      '/kachaka_api.KachakaApi/GetDynamicTransform',
      ($0.EmptyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetDynamicTransformResponse.fromBuffer(value));

  KachakaApiClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.GetRobotSerialNumberResponse> getRobotSerialNumber($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRobotSerialNumber, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetRobotVersionResponse> getRobotVersion($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRobotVersion, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetRobotPoseResponse> getRobotPose($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRobotPose, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetRobotPoseResponse> setRobotPose($0.SetRobotPoseRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setRobotPose, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetPngMapResponse> getPngMap($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPngMap, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetBatteryInfoResponse> getBatteryInfo($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBatteryInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetObjectDetectionResponse> getObjectDetection($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getObjectDetection, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetObjectDetectionFeaturesResponse> getObjectDetectionFeatures($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getObjectDetectionFeatures, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetRosImuResponse> getRosImu($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRosImu, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetRosOdometryResponse> getRosOdometry($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRosOdometry, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetRosWheelOdometryResponse> getRosWheelOdometry($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRosWheelOdometry, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetRosLaserScanResponse> getRosLaserScan($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRosLaserScan, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetFrontCameraRosCameraInfoResponse> getFrontCameraRosCameraInfo($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFrontCameraRosCameraInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetFrontCameraRosImageResponse> getFrontCameraRosImage($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFrontCameraRosImage, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetFrontCameraRosCompressedImageResponse> getFrontCameraRosCompressedImage($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFrontCameraRosCompressedImage, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetBackCameraRosCameraInfoResponse> getBackCameraRosCameraInfo($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBackCameraRosCameraInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetBackCameraRosImageResponse> getBackCameraRosImage($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBackCameraRosImage, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetBackCameraRosCompressedImageResponse> getBackCameraRosCompressedImage($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBackCameraRosCompressedImage, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetTofCameraRosCameraInfoResponse> getTofCameraRosCameraInfo($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTofCameraRosCameraInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetTofCameraRosImageResponse> getTofCameraRosImage($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTofCameraRosImage, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetTofCameraRosCompressedImageResponse> getTofCameraRosCompressedImage($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTofCameraRosCompressedImage, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetRobotErrorCodeJsonResponse> getRobotErrorCodeJson($0.EmptyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRobotErrorCodeJson, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetErrorResponse> getError($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getError, request, options: options);
  }

  $grpc.ResponseFuture<$0.IsReadyResponse> isReady($0.EmptyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$isReady, request, options: options);
  }

  /// Commands
  $grpc.ResponseFuture<$0.StartCommandResponse> startCommand($0.StartCommandRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$startCommand, request, options: options);
  }

  $grpc.ResponseFuture<$0.CancelCommandResponse> cancelCommand($0.EmptyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelCommand, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetCommandStateResponse> getCommandState($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCommandState, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetLastCommandResultResponse> getLastCommandResult($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLastCommandResult, request, options: options);
  }

  $grpc.ResponseFuture<$0.ProceedResponse> proceed($0.EmptyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$proceed, request, options: options);
  }

  /// Locations
  $grpc.ResponseFuture<$0.GetLocationsResponse> getLocations($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLocations, request, options: options);
  }

  /// Shelves
  $grpc.ResponseFuture<$0.GetShelvesResponse> getShelves($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getShelves, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetMovingShelfIdResponse> getMovingShelfId($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMovingShelfId, request, options: options);
  }

  $grpc.ResponseFuture<$0.ResetShelfPoseResponse> resetShelfPose($0.ResetShelfPoseRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$resetShelfPose, request, options: options);
  }

  /// Auto homing
  $grpc.ResponseFuture<$0.SetAutoHomingEnabledResponse> setAutoHomingEnabled($0.SetAutoHomingEnabledRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setAutoHomingEnabled, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetAutoHomingEnabledResponse> getAutoHomingEnabled($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAutoHomingEnabled, request, options: options);
  }

  /// Teleop
  $grpc.ResponseFuture<$0.SetManualControlEnabledResponse> setManualControlEnabled($0.SetManualControlEnabledRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setManualControlEnabled, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetManualControlEnabledResponse> getManualControlEnabled($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getManualControlEnabled, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetFrontTorchIntensityResponse> setFrontTorchIntensity($0.SetFrontTorchIntensityRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setFrontTorchIntensity, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetBackTorchIntensityResponse> setBackTorchIntensity($0.SetBackTorchIntensityRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setBackTorchIntensity, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetRobotVelocityResponse> setRobotVelocity($0.SetRobotVelocityRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setRobotVelocity, request, options: options);
  }

  $grpc.ResponseFuture<$0.ActivateLaserScanResponse> activateLaserScan($0.ActivateLaserScanRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$activateLaserScan, request, options: options);
  }

  /// Map
  $grpc.ResponseFuture<$0.GetMapListResponse> getMapList($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMapList, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetCurrentMapIdResponse> getCurrentMapId($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCurrentMapId, request, options: options);
  }

  $grpc.ResponseFuture<$0.LoadMapPreviewResponse> loadMapPreview($0.LoadMapPreviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$loadMapPreview, request, options: options);
  }

  $grpc.ResponseFuture<$0.SwitchMapResponse> switchMap($0.SwitchMapRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$switchMap, request, options: options);
  }

  $grpc.ResponseStream<$0.ExportMapResponse> exportMap($0.ExportMapRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$exportMap, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.ImportMapResponse> importMap($async.Stream<$0.ImportMapRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$importMap, request, options: options).single;
  }

  /// Shortcut
  $grpc.ResponseFuture<$0.GetShortcutsResponse> getShortcuts($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getShortcuts, request, options: options);
  }

  $grpc.ResponseFuture<$0.StartShortcutCommandResponse> startShortcutCommand($0.StartShortcutCommandRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$startShortcutCommand, request, options: options);
  }

  /// History
  $grpc.ResponseFuture<$0.GetHistoryListResponse> getHistoryList($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getHistoryList, request, options: options);
  }

  /// Robot settings
  $grpc.ResponseFuture<$0.GetSpeakerVolumeResponse> getSpeakerVolume($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSpeakerVolume, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetSpeakerVolumeResponse> setSpeakerVolume($0.SetSpeakerVolumeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setSpeakerVolume, request, options: options);
  }

  $grpc.ResponseFuture<$0.RestartRobotResponse> restartRobot($0.EmptyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$restartRobot, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetEmergencyStopResponse> setEmergencyStop($0.EmptyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setEmergencyStop, request, options: options);
  }

  /// Transform
  $grpc.ResponseFuture<$0.GetStaticTransformResponse> getStaticTransform($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStaticTransform, request, options: options);
  }

  $grpc.ResponseStream<$0.GetDynamicTransformResponse> getDynamicTransform($0.EmptyRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getDynamicTransform, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('kachaka_api.KachakaApi')
abstract class KachakaApiServiceBase extends $grpc.Service {
  $core.String get $name => 'kachaka_api.KachakaApi';

  KachakaApiServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetRobotSerialNumberResponse>(
        'GetRobotSerialNumber',
        getRobotSerialNumber_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetRobotSerialNumberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetRobotVersionResponse>(
        'GetRobotVersion',
        getRobotVersion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetRobotVersionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetRobotPoseResponse>(
        'GetRobotPose',
        getRobotPose_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetRobotPoseResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetRobotPoseRequest, $0.SetRobotPoseResponse>(
        'SetRobotPose',
        setRobotPose_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetRobotPoseRequest.fromBuffer(value),
        ($0.SetRobotPoseResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetPngMapResponse>(
        'GetPngMap',
        getPngMap_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetPngMapResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetBatteryInfoResponse>(
        'GetBatteryInfo',
        getBatteryInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetBatteryInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetObjectDetectionResponse>(
        'GetObjectDetection',
        getObjectDetection_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetObjectDetectionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetObjectDetectionFeaturesResponse>(
        'GetObjectDetectionFeatures',
        getObjectDetectionFeatures_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetObjectDetectionFeaturesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetRosImuResponse>(
        'GetRosImu',
        getRosImu_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetRosImuResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetRosOdometryResponse>(
        'GetRosOdometry',
        getRosOdometry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetRosOdometryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetRosWheelOdometryResponse>(
        'GetRosWheelOdometry',
        getRosWheelOdometry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetRosWheelOdometryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetRosLaserScanResponse>(
        'GetRosLaserScan',
        getRosLaserScan_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetRosLaserScanResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetFrontCameraRosCameraInfoResponse>(
        'GetFrontCameraRosCameraInfo',
        getFrontCameraRosCameraInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetFrontCameraRosCameraInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetFrontCameraRosImageResponse>(
        'GetFrontCameraRosImage',
        getFrontCameraRosImage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetFrontCameraRosImageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetFrontCameraRosCompressedImageResponse>(
        'GetFrontCameraRosCompressedImage',
        getFrontCameraRosCompressedImage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetFrontCameraRosCompressedImageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetBackCameraRosCameraInfoResponse>(
        'GetBackCameraRosCameraInfo',
        getBackCameraRosCameraInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetBackCameraRosCameraInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetBackCameraRosImageResponse>(
        'GetBackCameraRosImage',
        getBackCameraRosImage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetBackCameraRosImageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetBackCameraRosCompressedImageResponse>(
        'GetBackCameraRosCompressedImage',
        getBackCameraRosCompressedImage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetBackCameraRosCompressedImageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetTofCameraRosCameraInfoResponse>(
        'GetTofCameraRosCameraInfo',
        getTofCameraRosCameraInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetTofCameraRosCameraInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetTofCameraRosImageResponse>(
        'GetTofCameraRosImage',
        getTofCameraRosImage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetTofCameraRosImageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetTofCameraRosCompressedImageResponse>(
        'GetTofCameraRosCompressedImage',
        getTofCameraRosCompressedImage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetTofCameraRosCompressedImageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EmptyRequest, $0.GetRobotErrorCodeJsonResponse>(
        'GetRobotErrorCodeJson',
        getRobotErrorCodeJson_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value),
        ($0.GetRobotErrorCodeJsonResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetErrorResponse>(
        'GetError',
        getError_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetErrorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EmptyRequest, $0.IsReadyResponse>(
        'IsReady',
        isReady_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value),
        ($0.IsReadyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StartCommandRequest, $0.StartCommandResponse>(
        'StartCommand',
        startCommand_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StartCommandRequest.fromBuffer(value),
        ($0.StartCommandResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EmptyRequest, $0.CancelCommandResponse>(
        'CancelCommand',
        cancelCommand_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value),
        ($0.CancelCommandResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetCommandStateResponse>(
        'GetCommandState',
        getCommandState_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetCommandStateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetLastCommandResultResponse>(
        'GetLastCommandResult',
        getLastCommandResult_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetLastCommandResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EmptyRequest, $0.ProceedResponse>(
        'Proceed',
        proceed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value),
        ($0.ProceedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetLocationsResponse>(
        'GetLocations',
        getLocations_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetLocationsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetShelvesResponse>(
        'GetShelves',
        getShelves_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetShelvesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetMovingShelfIdResponse>(
        'GetMovingShelfId',
        getMovingShelfId_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetMovingShelfIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ResetShelfPoseRequest, $0.ResetShelfPoseResponse>(
        'ResetShelfPose',
        resetShelfPose_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ResetShelfPoseRequest.fromBuffer(value),
        ($0.ResetShelfPoseResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetAutoHomingEnabledRequest, $0.SetAutoHomingEnabledResponse>(
        'SetAutoHomingEnabled',
        setAutoHomingEnabled_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetAutoHomingEnabledRequest.fromBuffer(value),
        ($0.SetAutoHomingEnabledResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetAutoHomingEnabledResponse>(
        'GetAutoHomingEnabled',
        getAutoHomingEnabled_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetAutoHomingEnabledResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetManualControlEnabledRequest, $0.SetManualControlEnabledResponse>(
        'SetManualControlEnabled',
        setManualControlEnabled_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetManualControlEnabledRequest.fromBuffer(value),
        ($0.SetManualControlEnabledResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetManualControlEnabledResponse>(
        'GetManualControlEnabled',
        getManualControlEnabled_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetManualControlEnabledResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetFrontTorchIntensityRequest, $0.SetFrontTorchIntensityResponse>(
        'SetFrontTorchIntensity',
        setFrontTorchIntensity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetFrontTorchIntensityRequest.fromBuffer(value),
        ($0.SetFrontTorchIntensityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetBackTorchIntensityRequest, $0.SetBackTorchIntensityResponse>(
        'SetBackTorchIntensity',
        setBackTorchIntensity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetBackTorchIntensityRequest.fromBuffer(value),
        ($0.SetBackTorchIntensityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetRobotVelocityRequest, $0.SetRobotVelocityResponse>(
        'SetRobotVelocity',
        setRobotVelocity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetRobotVelocityRequest.fromBuffer(value),
        ($0.SetRobotVelocityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ActivateLaserScanRequest, $0.ActivateLaserScanResponse>(
        'ActivateLaserScan',
        activateLaserScan_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ActivateLaserScanRequest.fromBuffer(value),
        ($0.ActivateLaserScanResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetMapListResponse>(
        'GetMapList',
        getMapList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetMapListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetCurrentMapIdResponse>(
        'GetCurrentMapId',
        getCurrentMapId_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetCurrentMapIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LoadMapPreviewRequest, $0.LoadMapPreviewResponse>(
        'LoadMapPreview',
        loadMapPreview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoadMapPreviewRequest.fromBuffer(value),
        ($0.LoadMapPreviewResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SwitchMapRequest, $0.SwitchMapResponse>(
        'SwitchMap',
        switchMap_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SwitchMapRequest.fromBuffer(value),
        ($0.SwitchMapResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ExportMapRequest, $0.ExportMapResponse>(
        'ExportMap',
        exportMap_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ExportMapRequest.fromBuffer(value),
        ($0.ExportMapResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ImportMapRequest, $0.ImportMapResponse>(
        'ImportMap',
        importMap,
        true,
        false,
        ($core.List<$core.int> value) => $0.ImportMapRequest.fromBuffer(value),
        ($0.ImportMapResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetShortcutsResponse>(
        'GetShortcuts',
        getShortcuts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetShortcutsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StartShortcutCommandRequest, $0.StartShortcutCommandResponse>(
        'StartShortcutCommand',
        startShortcutCommand_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StartShortcutCommandRequest.fromBuffer(value),
        ($0.StartShortcutCommandResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetHistoryListResponse>(
        'GetHistoryList',
        getHistoryList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetHistoryListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetSpeakerVolumeResponse>(
        'GetSpeakerVolume',
        getSpeakerVolume_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetSpeakerVolumeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetSpeakerVolumeRequest, $0.SetSpeakerVolumeResponse>(
        'SetSpeakerVolume',
        setSpeakerVolume_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetSpeakerVolumeRequest.fromBuffer(value),
        ($0.SetSpeakerVolumeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EmptyRequest, $0.RestartRobotResponse>(
        'RestartRobot',
        restartRobot_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value),
        ($0.RestartRobotResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EmptyRequest, $0.SetEmergencyStopResponse>(
        'SetEmergencyStop',
        setEmergencyStop_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value),
        ($0.SetEmergencyStopResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetStaticTransformResponse>(
        'GetStaticTransform',
        getStaticTransform_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetStaticTransformResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EmptyRequest, $0.GetDynamicTransformResponse>(
        'GetDynamicTransform',
        getDynamicTransform_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value),
        ($0.GetDynamicTransformResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetRobotSerialNumberResponse> getRobotSerialNumber_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getRobotSerialNumber($call, await $request);
  }

  $async.Future<$0.GetRobotVersionResponse> getRobotVersion_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getRobotVersion($call, await $request);
  }

  $async.Future<$0.GetRobotPoseResponse> getRobotPose_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getRobotPose($call, await $request);
  }

  $async.Future<$0.SetRobotPoseResponse> setRobotPose_Pre($grpc.ServiceCall $call, $async.Future<$0.SetRobotPoseRequest> $request) async {
    return setRobotPose($call, await $request);
  }

  $async.Future<$0.GetPngMapResponse> getPngMap_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getPngMap($call, await $request);
  }

  $async.Future<$0.GetBatteryInfoResponse> getBatteryInfo_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getBatteryInfo($call, await $request);
  }

  $async.Future<$0.GetObjectDetectionResponse> getObjectDetection_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getObjectDetection($call, await $request);
  }

  $async.Future<$0.GetObjectDetectionFeaturesResponse> getObjectDetectionFeatures_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getObjectDetectionFeatures($call, await $request);
  }

  $async.Future<$0.GetRosImuResponse> getRosImu_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getRosImu($call, await $request);
  }

  $async.Future<$0.GetRosOdometryResponse> getRosOdometry_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getRosOdometry($call, await $request);
  }

  $async.Future<$0.GetRosWheelOdometryResponse> getRosWheelOdometry_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getRosWheelOdometry($call, await $request);
  }

  $async.Future<$0.GetRosLaserScanResponse> getRosLaserScan_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getRosLaserScan($call, await $request);
  }

  $async.Future<$0.GetFrontCameraRosCameraInfoResponse> getFrontCameraRosCameraInfo_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getFrontCameraRosCameraInfo($call, await $request);
  }

  $async.Future<$0.GetFrontCameraRosImageResponse> getFrontCameraRosImage_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getFrontCameraRosImage($call, await $request);
  }

  $async.Future<$0.GetFrontCameraRosCompressedImageResponse> getFrontCameraRosCompressedImage_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getFrontCameraRosCompressedImage($call, await $request);
  }

  $async.Future<$0.GetBackCameraRosCameraInfoResponse> getBackCameraRosCameraInfo_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getBackCameraRosCameraInfo($call, await $request);
  }

  $async.Future<$0.GetBackCameraRosImageResponse> getBackCameraRosImage_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getBackCameraRosImage($call, await $request);
  }

  $async.Future<$0.GetBackCameraRosCompressedImageResponse> getBackCameraRosCompressedImage_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getBackCameraRosCompressedImage($call, await $request);
  }

  $async.Future<$0.GetTofCameraRosCameraInfoResponse> getTofCameraRosCameraInfo_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getTofCameraRosCameraInfo($call, await $request);
  }

  $async.Future<$0.GetTofCameraRosImageResponse> getTofCameraRosImage_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getTofCameraRosImage($call, await $request);
  }

  $async.Future<$0.GetTofCameraRosCompressedImageResponse> getTofCameraRosCompressedImage_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getTofCameraRosCompressedImage($call, await $request);
  }

  $async.Future<$0.GetRobotErrorCodeJsonResponse> getRobotErrorCodeJson_Pre($grpc.ServiceCall $call, $async.Future<$0.EmptyRequest> $request) async {
    return getRobotErrorCodeJson($call, await $request);
  }

  $async.Future<$0.GetErrorResponse> getError_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getError($call, await $request);
  }

  $async.Future<$0.IsReadyResponse> isReady_Pre($grpc.ServiceCall $call, $async.Future<$0.EmptyRequest> $request) async {
    return isReady($call, await $request);
  }

  $async.Future<$0.StartCommandResponse> startCommand_Pre($grpc.ServiceCall $call, $async.Future<$0.StartCommandRequest> $request) async {
    return startCommand($call, await $request);
  }

  $async.Future<$0.CancelCommandResponse> cancelCommand_Pre($grpc.ServiceCall $call, $async.Future<$0.EmptyRequest> $request) async {
    return cancelCommand($call, await $request);
  }

  $async.Future<$0.GetCommandStateResponse> getCommandState_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getCommandState($call, await $request);
  }

  $async.Future<$0.GetLastCommandResultResponse> getLastCommandResult_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getLastCommandResult($call, await $request);
  }

  $async.Future<$0.ProceedResponse> proceed_Pre($grpc.ServiceCall $call, $async.Future<$0.EmptyRequest> $request) async {
    return proceed($call, await $request);
  }

  $async.Future<$0.GetLocationsResponse> getLocations_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getLocations($call, await $request);
  }

  $async.Future<$0.GetShelvesResponse> getShelves_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getShelves($call, await $request);
  }

  $async.Future<$0.GetMovingShelfIdResponse> getMovingShelfId_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getMovingShelfId($call, await $request);
  }

  $async.Future<$0.ResetShelfPoseResponse> resetShelfPose_Pre($grpc.ServiceCall $call, $async.Future<$0.ResetShelfPoseRequest> $request) async {
    return resetShelfPose($call, await $request);
  }

  $async.Future<$0.SetAutoHomingEnabledResponse> setAutoHomingEnabled_Pre($grpc.ServiceCall $call, $async.Future<$0.SetAutoHomingEnabledRequest> $request) async {
    return setAutoHomingEnabled($call, await $request);
  }

  $async.Future<$0.GetAutoHomingEnabledResponse> getAutoHomingEnabled_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getAutoHomingEnabled($call, await $request);
  }

  $async.Future<$0.SetManualControlEnabledResponse> setManualControlEnabled_Pre($grpc.ServiceCall $call, $async.Future<$0.SetManualControlEnabledRequest> $request) async {
    return setManualControlEnabled($call, await $request);
  }

  $async.Future<$0.GetManualControlEnabledResponse> getManualControlEnabled_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getManualControlEnabled($call, await $request);
  }

  $async.Future<$0.SetFrontTorchIntensityResponse> setFrontTorchIntensity_Pre($grpc.ServiceCall $call, $async.Future<$0.SetFrontTorchIntensityRequest> $request) async {
    return setFrontTorchIntensity($call, await $request);
  }

  $async.Future<$0.SetBackTorchIntensityResponse> setBackTorchIntensity_Pre($grpc.ServiceCall $call, $async.Future<$0.SetBackTorchIntensityRequest> $request) async {
    return setBackTorchIntensity($call, await $request);
  }

  $async.Future<$0.SetRobotVelocityResponse> setRobotVelocity_Pre($grpc.ServiceCall $call, $async.Future<$0.SetRobotVelocityRequest> $request) async {
    return setRobotVelocity($call, await $request);
  }

  $async.Future<$0.ActivateLaserScanResponse> activateLaserScan_Pre($grpc.ServiceCall $call, $async.Future<$0.ActivateLaserScanRequest> $request) async {
    return activateLaserScan($call, await $request);
  }

  $async.Future<$0.GetMapListResponse> getMapList_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getMapList($call, await $request);
  }

  $async.Future<$0.GetCurrentMapIdResponse> getCurrentMapId_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getCurrentMapId($call, await $request);
  }

  $async.Future<$0.LoadMapPreviewResponse> loadMapPreview_Pre($grpc.ServiceCall $call, $async.Future<$0.LoadMapPreviewRequest> $request) async {
    return loadMapPreview($call, await $request);
  }

  $async.Future<$0.SwitchMapResponse> switchMap_Pre($grpc.ServiceCall $call, $async.Future<$0.SwitchMapRequest> $request) async {
    return switchMap($call, await $request);
  }

  $async.Stream<$0.ExportMapResponse> exportMap_Pre($grpc.ServiceCall $call, $async.Future<$0.ExportMapRequest> $request) async* {
    yield* exportMap($call, await $request);
  }

  $async.Future<$0.GetShortcutsResponse> getShortcuts_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getShortcuts($call, await $request);
  }

  $async.Future<$0.StartShortcutCommandResponse> startShortcutCommand_Pre($grpc.ServiceCall $call, $async.Future<$0.StartShortcutCommandRequest> $request) async {
    return startShortcutCommand($call, await $request);
  }

  $async.Future<$0.GetHistoryListResponse> getHistoryList_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getHistoryList($call, await $request);
  }

  $async.Future<$0.GetSpeakerVolumeResponse> getSpeakerVolume_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getSpeakerVolume($call, await $request);
  }

  $async.Future<$0.SetSpeakerVolumeResponse> setSpeakerVolume_Pre($grpc.ServiceCall $call, $async.Future<$0.SetSpeakerVolumeRequest> $request) async {
    return setSpeakerVolume($call, await $request);
  }

  $async.Future<$0.RestartRobotResponse> restartRobot_Pre($grpc.ServiceCall $call, $async.Future<$0.EmptyRequest> $request) async {
    return restartRobot($call, await $request);
  }

  $async.Future<$0.SetEmergencyStopResponse> setEmergencyStop_Pre($grpc.ServiceCall $call, $async.Future<$0.EmptyRequest> $request) async {
    return setEmergencyStop($call, await $request);
  }

  $async.Future<$0.GetStaticTransformResponse> getStaticTransform_Pre($grpc.ServiceCall $call, $async.Future<$0.GetRequest> $request) async {
    return getStaticTransform($call, await $request);
  }

  $async.Stream<$0.GetDynamicTransformResponse> getDynamicTransform_Pre($grpc.ServiceCall $call, $async.Future<$0.EmptyRequest> $request) async* {
    yield* getDynamicTransform($call, await $request);
  }

  $async.Future<$0.GetRobotSerialNumberResponse> getRobotSerialNumber($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetRobotVersionResponse> getRobotVersion($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetRobotPoseResponse> getRobotPose($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.SetRobotPoseResponse> setRobotPose($grpc.ServiceCall call, $0.SetRobotPoseRequest request);
  $async.Future<$0.GetPngMapResponse> getPngMap($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetBatteryInfoResponse> getBatteryInfo($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetObjectDetectionResponse> getObjectDetection($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetObjectDetectionFeaturesResponse> getObjectDetectionFeatures($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetRosImuResponse> getRosImu($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetRosOdometryResponse> getRosOdometry($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetRosWheelOdometryResponse> getRosWheelOdometry($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetRosLaserScanResponse> getRosLaserScan($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetFrontCameraRosCameraInfoResponse> getFrontCameraRosCameraInfo($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetFrontCameraRosImageResponse> getFrontCameraRosImage($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetFrontCameraRosCompressedImageResponse> getFrontCameraRosCompressedImage($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetBackCameraRosCameraInfoResponse> getBackCameraRosCameraInfo($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetBackCameraRosImageResponse> getBackCameraRosImage($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetBackCameraRosCompressedImageResponse> getBackCameraRosCompressedImage($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetTofCameraRosCameraInfoResponse> getTofCameraRosCameraInfo($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetTofCameraRosImageResponse> getTofCameraRosImage($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetTofCameraRosCompressedImageResponse> getTofCameraRosCompressedImage($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetRobotErrorCodeJsonResponse> getRobotErrorCodeJson($grpc.ServiceCall call, $0.EmptyRequest request);
  $async.Future<$0.GetErrorResponse> getError($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.IsReadyResponse> isReady($grpc.ServiceCall call, $0.EmptyRequest request);
  $async.Future<$0.StartCommandResponse> startCommand($grpc.ServiceCall call, $0.StartCommandRequest request);
  $async.Future<$0.CancelCommandResponse> cancelCommand($grpc.ServiceCall call, $0.EmptyRequest request);
  $async.Future<$0.GetCommandStateResponse> getCommandState($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetLastCommandResultResponse> getLastCommandResult($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.ProceedResponse> proceed($grpc.ServiceCall call, $0.EmptyRequest request);
  $async.Future<$0.GetLocationsResponse> getLocations($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetShelvesResponse> getShelves($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetMovingShelfIdResponse> getMovingShelfId($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.ResetShelfPoseResponse> resetShelfPose($grpc.ServiceCall call, $0.ResetShelfPoseRequest request);
  $async.Future<$0.SetAutoHomingEnabledResponse> setAutoHomingEnabled($grpc.ServiceCall call, $0.SetAutoHomingEnabledRequest request);
  $async.Future<$0.GetAutoHomingEnabledResponse> getAutoHomingEnabled($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.SetManualControlEnabledResponse> setManualControlEnabled($grpc.ServiceCall call, $0.SetManualControlEnabledRequest request);
  $async.Future<$0.GetManualControlEnabledResponse> getManualControlEnabled($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.SetFrontTorchIntensityResponse> setFrontTorchIntensity($grpc.ServiceCall call, $0.SetFrontTorchIntensityRequest request);
  $async.Future<$0.SetBackTorchIntensityResponse> setBackTorchIntensity($grpc.ServiceCall call, $0.SetBackTorchIntensityRequest request);
  $async.Future<$0.SetRobotVelocityResponse> setRobotVelocity($grpc.ServiceCall call, $0.SetRobotVelocityRequest request);
  $async.Future<$0.ActivateLaserScanResponse> activateLaserScan($grpc.ServiceCall call, $0.ActivateLaserScanRequest request);
  $async.Future<$0.GetMapListResponse> getMapList($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetCurrentMapIdResponse> getCurrentMapId($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.LoadMapPreviewResponse> loadMapPreview($grpc.ServiceCall call, $0.LoadMapPreviewRequest request);
  $async.Future<$0.SwitchMapResponse> switchMap($grpc.ServiceCall call, $0.SwitchMapRequest request);
  $async.Stream<$0.ExportMapResponse> exportMap($grpc.ServiceCall call, $0.ExportMapRequest request);
  $async.Future<$0.ImportMapResponse> importMap($grpc.ServiceCall call, $async.Stream<$0.ImportMapRequest> request);
  $async.Future<$0.GetShortcutsResponse> getShortcuts($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.StartShortcutCommandResponse> startShortcutCommand($grpc.ServiceCall call, $0.StartShortcutCommandRequest request);
  $async.Future<$0.GetHistoryListResponse> getHistoryList($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetSpeakerVolumeResponse> getSpeakerVolume($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.SetSpeakerVolumeResponse> setSpeakerVolume($grpc.ServiceCall call, $0.SetSpeakerVolumeRequest request);
  $async.Future<$0.RestartRobotResponse> restartRobot($grpc.ServiceCall call, $0.EmptyRequest request);
  $async.Future<$0.SetEmergencyStopResponse> setEmergencyStop($grpc.ServiceCall call, $0.EmptyRequest request);
  $async.Future<$0.GetStaticTransformResponse> getStaticTransform($grpc.ServiceCall call, $0.GetRequest request);
  $async.Stream<$0.GetDynamicTransformResponse> getDynamicTransform($grpc.ServiceCall call, $0.EmptyRequest request);
}
