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

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use powerSupplyStatusDescriptor instead')
const PowerSupplyStatus$json = {
  '1': 'PowerSupplyStatus',
  '2': [
    {'1': 'POWER_SUPPLY_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'POWER_SUPPLY_STATUS_CHARGING', '2': 1},
    {'1': 'POWER_SUPPLY_STATUS_DISCHARGING', '2': 2},
    {'1': 'POWER_SUPPLY_STATUS_NOT_CHARGING', '2': 3},
    {'1': 'POWER_SUPPLY_STATUS_FULL', '2': 4},
  ],
};

/// Descriptor for `PowerSupplyStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List powerSupplyStatusDescriptor = $convert.base64Decode(
    'ChFQb3dlclN1cHBseVN0YXR1cxIjCh9QT1dFUl9TVVBQTFlfU1RBVFVTX1VOU1BFQ0lGSUVEEA'
    'ASIAocUE9XRVJfU1VQUExZX1NUQVRVU19DSEFSR0lORxABEiMKH1BPV0VSX1NVUFBMWV9TVEFU'
    'VVNfRElTQ0hBUkdJTkcQAhIkCiBQT1dFUl9TVVBQTFlfU1RBVFVTX05PVF9DSEFSR0lORxADEh'
    'wKGFBPV0VSX1NVUFBMWV9TVEFUVVNfRlVMTBAE');

@$core.Deprecated('Use locationTypeDescriptor instead')
const LocationType$json = {
  '1': 'LocationType',
  '2': [
    {'1': 'LOCATION_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'LOCATION_TYPE_CHARGER', '2': 1},
    {'1': 'LOCATION_TYPE_SHELF_HOME', '2': 2},
  ],
};

/// Descriptor for `LocationType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List locationTypeDescriptor = $convert.base64Decode(
    'CgxMb2NhdGlvblR5cGUSHQoZTE9DQVRJT05fVFlQRV9VTlNQRUNJRklFRBAAEhkKFUxPQ0FUSU'
    '9OX1RZUEVfQ0hBUkdFUhABEhwKGExPQ0FUSU9OX1RZUEVfU0hFTEZfSE9NRRAC');

@$core.Deprecated('Use shelfAppearanceDescriptor instead')
const ShelfAppearance$json = {
  '1': 'ShelfAppearance',
  '2': [
    {'1': 'SHELF_APPEARANCE_UNSPECIFIED', '2': 0},
    {'1': 'SHELF_APPEARANCE_DEFAULT_SHELF', '2': 1},
    {'1': 'SHELF_APPEARANCE_KACHAKA_SHELF_3DRAWERS', '2': 2},
    {'1': 'SHELF_APPEARANCE_KACHAKA_SHELF_2DRAWERS', '2': 3},
    {'1': 'SHELF_APPEARANCE_KACHAKA_BASE', '2': 8},
  ],
};

/// Descriptor for `ShelfAppearance`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List shelfAppearanceDescriptor = $convert.base64Decode(
    'Cg9TaGVsZkFwcGVhcmFuY2USIAocU0hFTEZfQVBQRUFSQU5DRV9VTlNQRUNJRklFRBAAEiIKHl'
    'NIRUxGX0FQUEVBUkFOQ0VfREVGQVVMVF9TSEVMRhABEisKJ1NIRUxGX0FQUEVBUkFOQ0VfS0FD'
    'SEFLQV9TSEVMRl8zRFJBV0VSUxACEisKJ1NIRUxGX0FQUEVBUkFOQ0VfS0FDSEFLQV9TSEVMRl'
    '8yRFJBV0VSUxADEiEKHVNIRUxGX0FQUEVBUkFOQ0VfS0FDSEFLQV9CQVNFEAg=');

@$core.Deprecated('Use shelfSpeedModeDescriptor instead')
const ShelfSpeedMode$json = {
  '1': 'ShelfSpeedMode',
  '2': [
    {'1': 'SHELF_SPEED_MODE_UNSPECIFIED', '2': 0},
    {'1': 'SHELF_SPEED_MODE_LOW', '2': 1},
    {'1': 'SHELF_SPEED_MODE_NORMAL', '2': 2},
  ],
};

/// Descriptor for `ShelfSpeedMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List shelfSpeedModeDescriptor = $convert.base64Decode(
    'Cg5TaGVsZlNwZWVkTW9kZRIgChxTSEVMRl9TUEVFRF9NT0RFX1VOU1BFQ0lGSUVEEAASGAoUU0'
    'hFTEZfU1BFRURfTU9ERV9MT1cQARIbChdTSEVMRl9TUEVFRF9NT0RFX05PUk1BTBAC');

@$core.Deprecated('Use objectLabelDescriptor instead')
const ObjectLabel$json = {
  '1': 'ObjectLabel',
  '2': [
    {'1': 'OBJECT_LABEL_UNSPECIFIED', '2': 0},
    {'1': 'OBJECT_LABEL_PERSON', '2': 1},
    {'1': 'OBJECT_LABEL_SHELF', '2': 2},
    {'1': 'OBJECT_LABEL_CHARGER', '2': 3},
    {'1': 'OBJECT_LABEL_DOOR', '2': 4},
  ],
};

/// Descriptor for `ObjectLabel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List objectLabelDescriptor = $convert.base64Decode(
    'CgtPYmplY3RMYWJlbBIcChhPQkpFQ1RfTEFCRUxfVU5TUEVDSUZJRUQQABIXChNPQkpFQ1RfTE'
    'FCRUxfUEVSU09OEAESFgoST0JKRUNUX0xBQkVMX1NIRUxGEAISGAoUT0JKRUNUX0xBQkVMX0NI'
    'QVJHRVIQAxIVChFPQkpFQ1RfTEFCRUxfRE9PUhAE');

@$core.Deprecated('Use commandStateDescriptor instead')
const CommandState$json = {
  '1': 'CommandState',
  '2': [
    {'1': 'COMMAND_STATE_UNSPECIFIED', '2': 0},
    {'1': 'COMMAND_STATE_PENDING', '2': 1},
    {'1': 'COMMAND_STATE_RUNNING', '2': 2},
  ],
};

/// Descriptor for `CommandState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List commandStateDescriptor = $convert.base64Decode(
    'CgxDb21tYW5kU3RhdGUSHQoZQ09NTUFORF9TVEFURV9VTlNQRUNJRklFRBAAEhkKFUNPTU1BTk'
    'RfU1RBVEVfUEVORElORxABEhkKFUNPTU1BTkRfU1RBVEVfUlVOTklORxAC');

@$core.Deprecated('Use metadataDescriptor instead')
const Metadata$json = {
  '1': 'Metadata',
  '2': [
    {'1': 'cursor', '3': 1, '4': 1, '5': 16, '10': 'cursor'},
  ],
};

/// Descriptor for `Metadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metadataDescriptor = $convert.base64Decode(
    'CghNZXRhZGF0YRIWCgZjdXJzb3IYASABKBBSBmN1cnNvcg==');

@$core.Deprecated('Use resultDescriptor instead')
const Result$json = {
  '1': 'Result',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'error_code', '3': 3, '4': 1, '5': 5, '10': 'errorCode'},
  ],
};

/// Descriptor for `Result`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultDescriptor = $convert.base64Decode(
    'CgZSZXN1bHQSGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIdCgplcnJvcl9jb2RlGAMgASgFUg'
    'llcnJvckNvZGU=');

@$core.Deprecated('Use errorDescriptor instead')
const Error$json = {
  '1': 'Error',
  '2': [
    {'1': 'error_code', '3': 2, '4': 1, '5': 5, '10': 'errorCode'},
  ],
};

/// Descriptor for `Error`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorDescriptor = $convert.base64Decode(
    'CgVFcnJvchIdCgplcnJvcl9jb2RlGAIgASgFUgllcnJvckNvZGU=');

@$core.Deprecated('Use rosHeaderDescriptor instead')
const RosHeader$json = {
  '1': 'RosHeader',
  '2': [
    {'1': 'stamp_nsec', '3': 1, '4': 1, '5': 3, '10': 'stampNsec'},
    {'1': 'frame_id', '3': 2, '4': 1, '5': 9, '10': 'frameId'},
  ],
};

/// Descriptor for `RosHeader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rosHeaderDescriptor = $convert.base64Decode(
    'CglSb3NIZWFkZXISHQoKc3RhbXBfbnNlYxgBIAEoA1IJc3RhbXBOc2VjEhkKCGZyYW1lX2lkGA'
    'IgASgJUgdmcmFtZUlk');

@$core.Deprecated('Use poseDescriptor instead')
const Pose$json = {
  '1': 'Pose',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 1, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 1, '10': 'y'},
    {'1': 'theta', '3': 3, '4': 1, '5': 1, '10': 'theta'},
  ],
};

/// Descriptor for `Pose`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List poseDescriptor = $convert.base64Decode(
    'CgRQb3NlEgwKAXgYASABKAFSAXgSDAoBeRgCIAEoAVIBeRIUCgV0aGV0YRgDIAEoAVIFdGhldG'
    'E=');

@$core.Deprecated('Use vector3Descriptor instead')
const Vector3$json = {
  '1': 'Vector3',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 1, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 1, '10': 'y'},
    {'1': 'z', '3': 3, '4': 1, '5': 1, '10': 'z'},
  ],
};

/// Descriptor for `Vector3`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vector3Descriptor = $convert.base64Decode(
    'CgdWZWN0b3IzEgwKAXgYASABKAFSAXgSDAoBeRgCIAEoAVIBeRIMCgF6GAMgASgBUgF6');

@$core.Deprecated('Use quaternionDescriptor instead')
const Quaternion$json = {
  '1': 'Quaternion',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 1, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 1, '10': 'y'},
    {'1': 'z', '3': 3, '4': 1, '5': 1, '10': 'z'},
    {'1': 'w', '3': 4, '4': 1, '5': 1, '10': 'w'},
  ],
};

/// Descriptor for `Quaternion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List quaternionDescriptor = $convert.base64Decode(
    'CgpRdWF0ZXJuaW9uEgwKAXgYASABKAFSAXgSDAoBeRgCIAEoAVIBeRIMCgF6GAMgASgBUgF6Eg'
    'wKAXcYBCABKAFSAXc=');

@$core.Deprecated('Use pose3dDescriptor instead')
const Pose3d$json = {
  '1': 'Pose3d',
  '2': [
    {'1': 'position', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Vector3', '10': 'position'},
    {'1': 'orientation', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.Quaternion', '10': 'orientation'},
  ],
};

/// Descriptor for `Pose3d`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pose3dDescriptor = $convert.base64Decode(
    'CgZQb3NlM2QSMAoIcG9zaXRpb24YASABKAsyFC5rYWNoYWthX2FwaS5WZWN0b3IzUghwb3NpdG'
    'lvbhI5CgtvcmllbnRhdGlvbhgCIAEoCzIXLmthY2hha2FfYXBpLlF1YXRlcm5pb25SC29yaWVu'
    'dGF0aW9u');

@$core.Deprecated('Use twistDescriptor instead')
const Twist$json = {
  '1': 'Twist',
  '2': [
    {'1': 'linear', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Vector3', '10': 'linear'},
    {'1': 'angular', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.Vector3', '10': 'angular'},
  ],
};

/// Descriptor for `Twist`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List twistDescriptor = $convert.base64Decode(
    'CgVUd2lzdBIsCgZsaW5lYXIYASABKAsyFC5rYWNoYWthX2FwaS5WZWN0b3IzUgZsaW5lYXISLg'
    'oHYW5ndWxhchgCIAEoCzIULmthY2hha2FfYXBpLlZlY3RvcjNSB2FuZ3VsYXI=');

@$core.Deprecated('Use pose3dWithCovarianceDescriptor instead')
const Pose3dWithCovariance$json = {
  '1': 'Pose3dWithCovariance',
  '2': [
    {'1': 'pose', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Pose3d', '10': 'pose'},
    {'1': 'covariance', '3': 2, '4': 3, '5': 1, '10': 'covariance'},
  ],
};

/// Descriptor for `Pose3dWithCovariance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pose3dWithCovarianceDescriptor = $convert.base64Decode(
    'ChRQb3NlM2RXaXRoQ292YXJpYW5jZRInCgRwb3NlGAEgASgLMhMua2FjaGFrYV9hcGkuUG9zZT'
    'NkUgRwb3NlEh4KCmNvdmFyaWFuY2UYAiADKAFSCmNvdmFyaWFuY2U=');

@$core.Deprecated('Use twistWithCovarianceDescriptor instead')
const TwistWithCovariance$json = {
  '1': 'TwistWithCovariance',
  '2': [
    {'1': 'twist', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Twist', '10': 'twist'},
    {'1': 'covariance', '3': 2, '4': 3, '5': 1, '10': 'covariance'},
  ],
};

/// Descriptor for `TwistWithCovariance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List twistWithCovarianceDescriptor = $convert.base64Decode(
    'ChNUd2lzdFdpdGhDb3ZhcmlhbmNlEigKBXR3aXN0GAEgASgLMhIua2FjaGFrYV9hcGkuVHdpc3'
    'RSBXR3aXN0Eh4KCmNvdmFyaWFuY2UYAiADKAFSCmNvdmFyaWFuY2U=');

@$core.Deprecated('Use map_Descriptor instead')
const Map_$json = {
  '1': 'Map',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'resolution', '3': 3, '4': 1, '5': 1, '10': 'resolution'},
    {'1': 'width', '3': 4, '4': 1, '5': 5, '10': 'width'},
    {'1': 'height', '3': 5, '4': 1, '5': 5, '10': 'height'},
    {'1': 'origin', '3': 6, '4': 1, '5': 11, '6': '.kachaka_api.Pose', '10': 'origin'},
  ],
};

/// Descriptor for `Map`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List map_Descriptor = $convert.base64Decode(
    'CgNNYXASEgoEZGF0YRgBIAEoDFIEZGF0YRISCgRuYW1lGAIgASgJUgRuYW1lEh4KCnJlc29sdX'
    'Rpb24YAyABKAFSCnJlc29sdXRpb24SFAoFd2lkdGgYBCABKAVSBXdpZHRoEhYKBmhlaWdodBgF'
    'IAEoBVIGaGVpZ2h0EikKBm9yaWdpbhgGIAEoCzIRLmthY2hha2FfYXBpLlBvc2VSBm9yaWdpbg'
    '==');

@$core.Deprecated('Use locationDescriptor instead')
const Location$json = {
  '1': 'Location',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'pose', '3': 3, '4': 1, '5': 11, '6': '.kachaka_api.Pose', '10': 'pose'},
    {'1': 'type', '3': 4, '4': 1, '5': 14, '6': '.kachaka_api.LocationType', '10': 'type'},
    {'1': 'undock_shelf_aligning_to_wall', '3': 5, '4': 1, '5': 8, '10': 'undockShelfAligningToWall'},
    {'1': 'undock_shelf_avoiding_obstacles', '3': 6, '4': 1, '5': 8, '10': 'undockShelfAvoidingObstacles'},
    {'1': 'ignore_voice_recognition', '3': 7, '4': 1, '5': 8, '10': 'ignoreVoiceRecognition'},
  ],
};

/// Descriptor for `Location`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationDescriptor = $convert.base64Decode(
    'CghMb2NhdGlvbhIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIlCgRwb3NlGA'
    'MgASgLMhEua2FjaGFrYV9hcGkuUG9zZVIEcG9zZRItCgR0eXBlGAQgASgOMhkua2FjaGFrYV9h'
    'cGkuTG9jYXRpb25UeXBlUgR0eXBlEkAKHXVuZG9ja19zaGVsZl9hbGlnbmluZ190b193YWxsGA'
    'UgASgIUhl1bmRvY2tTaGVsZkFsaWduaW5nVG9XYWxsEkUKH3VuZG9ja19zaGVsZl9hdm9pZGlu'
    'Z19vYnN0YWNsZXMYBiABKAhSHHVuZG9ja1NoZWxmQXZvaWRpbmdPYnN0YWNsZXMSOAoYaWdub3'
    'JlX3ZvaWNlX3JlY29nbml0aW9uGAcgASgIUhZpZ25vcmVWb2ljZVJlY29nbml0aW9u');

@$core.Deprecated('Use shelfSizeDescriptor instead')
const ShelfSize$json = {
  '1': 'ShelfSize',
  '2': [
    {'1': 'width', '3': 1, '4': 1, '5': 1, '10': 'width'},
    {'1': 'depth', '3': 2, '4': 1, '5': 1, '10': 'depth'},
    {'1': 'height', '3': 3, '4': 1, '5': 1, '10': 'height'},
  ],
};

/// Descriptor for `ShelfSize`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shelfSizeDescriptor = $convert.base64Decode(
    'CglTaGVsZlNpemUSFAoFd2lkdGgYASABKAFSBXdpZHRoEhQKBWRlcHRoGAIgASgBUgVkZXB0aB'
    'IWCgZoZWlnaHQYAyABKAFSBmhlaWdodA==');

@$core.Deprecated('Use recognizableNameDescriptor instead')
const RecognizableName$json = {
  '1': 'RecognizableName',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'deletable', '3': 2, '4': 1, '5': 8, '10': 'deletable'},
  ],
};

/// Descriptor for `RecognizableName`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recognizableNameDescriptor = $convert.base64Decode(
    'ChBSZWNvZ25pemFibGVOYW1lEhIKBG5hbWUYASABKAlSBG5hbWUSHAoJZGVsZXRhYmxlGAIgAS'
    'gIUglkZWxldGFibGU=');

@$core.Deprecated('Use shelfDescriptor instead')
const Shelf$json = {
  '1': 'Shelf',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'pose', '3': 3, '4': 1, '5': 11, '6': '.kachaka_api.Pose', '10': 'pose'},
    {'1': 'size', '3': 4, '4': 1, '5': 11, '6': '.kachaka_api.ShelfSize', '10': 'size'},
    {'1': 'appearance', '3': 5, '4': 1, '5': 14, '6': '.kachaka_api.ShelfAppearance', '10': 'appearance'},
    {'1': 'recognizable_names', '3': 7, '4': 3, '5': 11, '6': '.kachaka_api.RecognizableName', '10': 'recognizableNames'},
    {'1': 'home_location_id', '3': 8, '4': 1, '5': 9, '10': 'homeLocationId'},
    {'1': 'speed_mode', '3': 9, '4': 1, '5': 14, '6': '.kachaka_api.ShelfSpeedMode', '10': 'speedMode'},
    {'1': 'ignore_voice_recognition', '3': 10, '4': 1, '5': 8, '10': 'ignoreVoiceRecognition'},
  ],
};

/// Descriptor for `Shelf`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shelfDescriptor = $convert.base64Decode(
    'CgVTaGVsZhIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIlCgRwb3NlGAMgAS'
    'gLMhEua2FjaGFrYV9hcGkuUG9zZVIEcG9zZRIqCgRzaXplGAQgASgLMhYua2FjaGFrYV9hcGku'
    'U2hlbGZTaXplUgRzaXplEjwKCmFwcGVhcmFuY2UYBSABKA4yHC5rYWNoYWthX2FwaS5TaGVsZk'
    'FwcGVhcmFuY2VSCmFwcGVhcmFuY2USTAoScmVjb2duaXphYmxlX25hbWVzGAcgAygLMh0ua2Fj'
    'aGFrYV9hcGkuUmVjb2duaXphYmxlTmFtZVIRcmVjb2duaXphYmxlTmFtZXMSKAoQaG9tZV9sb2'
    'NhdGlvbl9pZBgIIAEoCVIOaG9tZUxvY2F0aW9uSWQSOgoKc3BlZWRfbW9kZRgJIAEoDjIbLmth'
    'Y2hha2FfYXBpLlNoZWxmU3BlZWRNb2RlUglzcGVlZE1vZGUSOAoYaWdub3JlX3ZvaWNlX3JlY2'
    '9nbml0aW9uGAogASgIUhZpZ25vcmVWb2ljZVJlY29nbml0aW9u');

@$core.Deprecated('Use rosImuDescriptor instead')
const RosImu$json = {
  '1': 'RosImu',
  '2': [
    {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.RosHeader', '10': 'header'},
    {'1': 'orientation', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.Quaternion', '10': 'orientation'},
    {'1': 'orientation_covariance', '3': 3, '4': 3, '5': 1, '10': 'orientationCovariance'},
    {'1': 'angular_velocity', '3': 4, '4': 1, '5': 11, '6': '.kachaka_api.Vector3', '10': 'angularVelocity'},
    {'1': 'angular_velocity_covariance', '3': 5, '4': 3, '5': 1, '10': 'angularVelocityCovariance'},
    {'1': 'linear_acceleration', '3': 6, '4': 1, '5': 11, '6': '.kachaka_api.Vector3', '10': 'linearAcceleration'},
    {'1': 'linear_acceleration_covariance', '3': 7, '4': 3, '5': 1, '10': 'linearAccelerationCovariance'},
  ],
};

/// Descriptor for `RosImu`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rosImuDescriptor = $convert.base64Decode(
    'CgZSb3NJbXUSLgoGaGVhZGVyGAEgASgLMhYua2FjaGFrYV9hcGkuUm9zSGVhZGVyUgZoZWFkZX'
    'ISOQoLb3JpZW50YXRpb24YAiABKAsyFy5rYWNoYWthX2FwaS5RdWF0ZXJuaW9uUgtvcmllbnRh'
    'dGlvbhI1ChZvcmllbnRhdGlvbl9jb3ZhcmlhbmNlGAMgAygBUhVvcmllbnRhdGlvbkNvdmFyaW'
    'FuY2USPwoQYW5ndWxhcl92ZWxvY2l0eRgEIAEoCzIULmthY2hha2FfYXBpLlZlY3RvcjNSD2Fu'
    'Z3VsYXJWZWxvY2l0eRI+Chthbmd1bGFyX3ZlbG9jaXR5X2NvdmFyaWFuY2UYBSADKAFSGWFuZ3'
    'VsYXJWZWxvY2l0eUNvdmFyaWFuY2USRQoTbGluZWFyX2FjY2VsZXJhdGlvbhgGIAEoCzIULmth'
    'Y2hha2FfYXBpLlZlY3RvcjNSEmxpbmVhckFjY2VsZXJhdGlvbhJECh5saW5lYXJfYWNjZWxlcm'
    'F0aW9uX2NvdmFyaWFuY2UYByADKAFSHGxpbmVhckFjY2VsZXJhdGlvbkNvdmFyaWFuY2U=');

@$core.Deprecated('Use rosOdometryDescriptor instead')
const RosOdometry$json = {
  '1': 'RosOdometry',
  '2': [
    {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.RosHeader', '10': 'header'},
    {'1': 'child_frame_id', '3': 2, '4': 1, '5': 9, '10': 'childFrameId'},
    {'1': 'pose', '3': 3, '4': 1, '5': 11, '6': '.kachaka_api.Pose3dWithCovariance', '10': 'pose'},
    {'1': 'twist', '3': 4, '4': 1, '5': 11, '6': '.kachaka_api.TwistWithCovariance', '10': 'twist'},
  ],
};

/// Descriptor for `RosOdometry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rosOdometryDescriptor = $convert.base64Decode(
    'CgtSb3NPZG9tZXRyeRIuCgZoZWFkZXIYASABKAsyFi5rYWNoYWthX2FwaS5Sb3NIZWFkZXJSBm'
    'hlYWRlchIkCg5jaGlsZF9mcmFtZV9pZBgCIAEoCVIMY2hpbGRGcmFtZUlkEjUKBHBvc2UYAyAB'
    'KAsyIS5rYWNoYWthX2FwaS5Qb3NlM2RXaXRoQ292YXJpYW5jZVIEcG9zZRI2CgV0d2lzdBgEIA'
    'EoCzIgLmthY2hha2FfYXBpLlR3aXN0V2l0aENvdmFyaWFuY2VSBXR3aXN0');

@$core.Deprecated('Use rosLaserScanDescriptor instead')
const RosLaserScan$json = {
  '1': 'RosLaserScan',
  '2': [
    {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.RosHeader', '10': 'header'},
    {'1': 'angle_min', '3': 2, '4': 1, '5': 1, '10': 'angleMin'},
    {'1': 'angle_max', '3': 3, '4': 1, '5': 1, '10': 'angleMax'},
    {'1': 'angle_increment', '3': 4, '4': 1, '5': 1, '10': 'angleIncrement'},
    {'1': 'time_increment', '3': 5, '4': 1, '5': 1, '10': 'timeIncrement'},
    {'1': 'scan_time', '3': 6, '4': 1, '5': 1, '10': 'scanTime'},
    {'1': 'range_min', '3': 7, '4': 1, '5': 1, '10': 'rangeMin'},
    {'1': 'range_max', '3': 8, '4': 1, '5': 1, '10': 'rangeMax'},
    {'1': 'ranges', '3': 9, '4': 3, '5': 1, '10': 'ranges'},
    {'1': 'intensities', '3': 10, '4': 3, '5': 1, '10': 'intensities'},
  ],
};

/// Descriptor for `RosLaserScan`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rosLaserScanDescriptor = $convert.base64Decode(
    'CgxSb3NMYXNlclNjYW4SLgoGaGVhZGVyGAEgASgLMhYua2FjaGFrYV9hcGkuUm9zSGVhZGVyUg'
    'ZoZWFkZXISGwoJYW5nbGVfbWluGAIgASgBUghhbmdsZU1pbhIbCglhbmdsZV9tYXgYAyABKAFS'
    'CGFuZ2xlTWF4EicKD2FuZ2xlX2luY3JlbWVudBgEIAEoAVIOYW5nbGVJbmNyZW1lbnQSJQoOdG'
    'ltZV9pbmNyZW1lbnQYBSABKAFSDXRpbWVJbmNyZW1lbnQSGwoJc2Nhbl90aW1lGAYgASgBUghz'
    'Y2FuVGltZRIbCglyYW5nZV9taW4YByABKAFSCHJhbmdlTWluEhsKCXJhbmdlX21heBgIIAEoAV'
    'IIcmFuZ2VNYXgSFgoGcmFuZ2VzGAkgAygBUgZyYW5nZXMSIAoLaW50ZW5zaXRpZXMYCiADKAFS'
    'C2ludGVuc2l0aWVz');

@$core.Deprecated('Use regionOfInterestDescriptor instead')
const RegionOfInterest$json = {
  '1': 'RegionOfInterest',
  '2': [
    {'1': 'x_offset', '3': 1, '4': 1, '5': 13, '10': 'xOffset'},
    {'1': 'y_offset', '3': 2, '4': 1, '5': 13, '10': 'yOffset'},
    {'1': 'height', '3': 3, '4': 1, '5': 13, '10': 'height'},
    {'1': 'width', '3': 4, '4': 1, '5': 13, '10': 'width'},
    {'1': 'do_rectify', '3': 5, '4': 1, '5': 8, '10': 'doRectify'},
  ],
};

/// Descriptor for `RegionOfInterest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List regionOfInterestDescriptor = $convert.base64Decode(
    'ChBSZWdpb25PZkludGVyZXN0EhkKCHhfb2Zmc2V0GAEgASgNUgd4T2Zmc2V0EhkKCHlfb2Zmc2'
    'V0GAIgASgNUgd5T2Zmc2V0EhYKBmhlaWdodBgDIAEoDVIGaGVpZ2h0EhQKBXdpZHRoGAQgASgN'
    'UgV3aWR0aBIdCgpkb19yZWN0aWZ5GAUgASgIUglkb1JlY3RpZnk=');

@$core.Deprecated('Use rosCameraInfoDescriptor instead')
const RosCameraInfo$json = {
  '1': 'RosCameraInfo',
  '2': [
    {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.RosHeader', '10': 'header'},
    {'1': 'height', '3': 2, '4': 1, '5': 13, '10': 'height'},
    {'1': 'width', '3': 3, '4': 1, '5': 13, '10': 'width'},
    {'1': 'distortion_model', '3': 4, '4': 1, '5': 9, '10': 'distortionModel'},
    {'1': 'D', '3': 5, '4': 3, '5': 1, '10': 'D'},
    {'1': 'K', '3': 6, '4': 3, '5': 1, '10': 'K'},
    {'1': 'R', '3': 7, '4': 3, '5': 1, '10': 'R'},
    {'1': 'P', '3': 8, '4': 3, '5': 1, '10': 'P'},
    {'1': 'binning_x', '3': 9, '4': 1, '5': 13, '10': 'binningX'},
    {'1': 'binning_y', '3': 10, '4': 1, '5': 13, '10': 'binningY'},
    {'1': 'roi', '3': 11, '4': 1, '5': 11, '6': '.kachaka_api.RegionOfInterest', '10': 'roi'},
  ],
};

/// Descriptor for `RosCameraInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rosCameraInfoDescriptor = $convert.base64Decode(
    'Cg1Sb3NDYW1lcmFJbmZvEi4KBmhlYWRlchgBIAEoCzIWLmthY2hha2FfYXBpLlJvc0hlYWRlcl'
    'IGaGVhZGVyEhYKBmhlaWdodBgCIAEoDVIGaGVpZ2h0EhQKBXdpZHRoGAMgASgNUgV3aWR0aBIp'
    'ChBkaXN0b3J0aW9uX21vZGVsGAQgASgJUg9kaXN0b3J0aW9uTW9kZWwSDAoBRBgFIAMoAVIBRB'
    'IMCgFLGAYgAygBUgFLEgwKAVIYByADKAFSAVISDAoBUBgIIAMoAVIBUBIbCgliaW5uaW5nX3gY'
    'CSABKA1SCGJpbm5pbmdYEhsKCWJpbm5pbmdfeRgKIAEoDVIIYmlubmluZ1kSLwoDcm9pGAsgAS'
    'gLMh0ua2FjaGFrYV9hcGkuUmVnaW9uT2ZJbnRlcmVzdFIDcm9p');

@$core.Deprecated('Use rosImageDescriptor instead')
const RosImage$json = {
  '1': 'RosImage',
  '2': [
    {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.RosHeader', '10': 'header'},
    {'1': 'height', '3': 2, '4': 1, '5': 13, '10': 'height'},
    {'1': 'width', '3': 3, '4': 1, '5': 13, '10': 'width'},
    {'1': 'encoding', '3': 4, '4': 1, '5': 9, '10': 'encoding'},
    {'1': 'is_bigendian', '3': 5, '4': 1, '5': 8, '10': 'isBigendian'},
    {'1': 'step', '3': 6, '4': 1, '5': 13, '10': 'step'},
    {'1': 'data', '3': 7, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `RosImage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rosImageDescriptor = $convert.base64Decode(
    'CghSb3NJbWFnZRIuCgZoZWFkZXIYASABKAsyFi5rYWNoYWthX2FwaS5Sb3NIZWFkZXJSBmhlYW'
    'RlchIWCgZoZWlnaHQYAiABKA1SBmhlaWdodBIUCgV3aWR0aBgDIAEoDVIFd2lkdGgSGgoIZW5j'
    'b2RpbmcYBCABKAlSCGVuY29kaW5nEiEKDGlzX2JpZ2VuZGlhbhgFIAEoCFILaXNCaWdlbmRpYW'
    '4SEgoEc3RlcBgGIAEoDVIEc3RlcBISCgRkYXRhGAcgASgMUgRkYXRh');

@$core.Deprecated('Use rosTransformStampedDescriptor instead')
const RosTransformStamped$json = {
  '1': 'RosTransformStamped',
  '2': [
    {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.RosHeader', '10': 'header'},
    {'1': 'child_frame_id', '3': 2, '4': 1, '5': 9, '10': 'childFrameId'},
    {'1': 'translation', '3': 3, '4': 1, '5': 11, '6': '.kachaka_api.Vector3', '10': 'translation'},
    {'1': 'rotation', '3': 4, '4': 1, '5': 11, '6': '.kachaka_api.Quaternion', '10': 'rotation'},
  ],
};

/// Descriptor for `RosTransformStamped`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rosTransformStampedDescriptor = $convert.base64Decode(
    'ChNSb3NUcmFuc2Zvcm1TdGFtcGVkEi4KBmhlYWRlchgBIAEoCzIWLmthY2hha2FfYXBpLlJvc0'
    'hlYWRlclIGaGVhZGVyEiQKDmNoaWxkX2ZyYW1lX2lkGAIgASgJUgxjaGlsZEZyYW1lSWQSNgoL'
    'dHJhbnNsYXRpb24YAyABKAsyFC5rYWNoYWthX2FwaS5WZWN0b3IzUgt0cmFuc2xhdGlvbhIzCg'
    'hyb3RhdGlvbhgEIAEoCzIXLmthY2hha2FfYXBpLlF1YXRlcm5pb25SCHJvdGF0aW9u');

@$core.Deprecated('Use rosCompressedImageDescriptor instead')
const RosCompressedImage$json = {
  '1': 'RosCompressedImage',
  '2': [
    {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.RosHeader', '10': 'header'},
    {'1': 'format', '3': 2, '4': 1, '5': 9, '10': 'format'},
    {'1': 'data', '3': 3, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `RosCompressedImage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rosCompressedImageDescriptor = $convert.base64Decode(
    'ChJSb3NDb21wcmVzc2VkSW1hZ2USLgoGaGVhZGVyGAEgASgLMhYua2FjaGFrYV9hcGkuUm9zSG'
    'VhZGVyUgZoZWFkZXISFgoGZm9ybWF0GAIgASgJUgZmb3JtYXQSEgoEZGF0YRgDIAEoDFIEZGF0'
    'YQ==');

@$core.Deprecated('Use objectDetectionDescriptor instead')
const ObjectDetection$json = {
  '1': 'ObjectDetection',
  '2': [
    {'1': 'label', '3': 1, '4': 1, '5': 13, '10': 'label'},
    {'1': 'roi', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.RegionOfInterest', '10': 'roi'},
    {'1': 'score', '3': 3, '4': 1, '5': 2, '10': 'score'},
    {'1': 'distance_median', '3': 4, '4': 1, '5': 1, '10': 'distanceMedian'},
  ],
};

/// Descriptor for `ObjectDetection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List objectDetectionDescriptor = $convert.base64Decode(
    'Cg9PYmplY3REZXRlY3Rpb24SFAoFbGFiZWwYASABKA1SBWxhYmVsEi8KA3JvaRgCIAEoCzIdLm'
    'thY2hha2FfYXBpLlJlZ2lvbk9mSW50ZXJlc3RSA3JvaRIUCgVzY29yZRgDIAEoAlIFc2NvcmUS'
    'JwoPZGlzdGFuY2VfbWVkaWFuGAQgASgBUg5kaXN0YW5jZU1lZGlhbg==');

@$core.Deprecated('Use objectDetectionFeaturesDescriptor instead')
const ObjectDetectionFeatures$json = {
  '1': 'ObjectDetectionFeatures',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'shape', '3': 2, '4': 3, '5': 13, '10': 'shape'},
    {'1': 'data', '3': 3, '4': 3, '5': 2, '10': 'data'},
  ],
};

/// Descriptor for `ObjectDetectionFeatures`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List objectDetectionFeaturesDescriptor = $convert.base64Decode(
    'ChdPYmplY3REZXRlY3Rpb25GZWF0dXJlcxISCgRuYW1lGAEgASgJUgRuYW1lEhQKBXNoYXBlGA'
    'IgAygNUgVzaGFwZRISCgRkYXRhGAMgAygCUgRkYXRh');

@$core.Deprecated('Use commandDescriptor instead')
const Command$json = {
  '1': 'Command',
  '2': [
    {'1': 'move_shelf_command', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.MoveShelfCommand', '9': 0, '10': 'moveShelfCommand'},
    {'1': 'return_shelf_command', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.ReturnShelfCommand', '9': 0, '10': 'returnShelfCommand'},
    {'1': 'undock_shelf_command', '3': 5, '4': 1, '5': 11, '6': '.kachaka_api.UndockShelfCommand', '9': 0, '10': 'undockShelfCommand'},
    {'1': 'move_to_location_command', '3': 7, '4': 1, '5': 11, '6': '.kachaka_api.MoveToLocationCommand', '9': 0, '10': 'moveToLocationCommand'},
    {'1': 'return_home_command', '3': 8, '4': 1, '5': 11, '6': '.kachaka_api.ReturnHomeCommand', '9': 0, '10': 'returnHomeCommand'},
    {'1': 'dock_shelf_command', '3': 9, '4': 1, '5': 11, '6': '.kachaka_api.DockShelfCommand', '9': 0, '10': 'dockShelfCommand'},
    {'1': 'speak_command', '3': 12, '4': 1, '5': 11, '6': '.kachaka_api.SpeakCommand', '9': 0, '10': 'speakCommand'},
    {'1': 'move_to_pose_command', '3': 13, '4': 1, '5': 11, '6': '.kachaka_api.MoveToPoseCommand', '9': 0, '10': 'moveToPoseCommand'},
    {'1': 'lock_command', '3': 15, '4': 1, '5': 11, '6': '.kachaka_api.LockCommand', '9': 0, '10': 'lockCommand'},
    {'1': 'move_forward_command', '3': 16, '4': 1, '5': 11, '6': '.kachaka_api.MoveForwardCommand', '9': 0, '10': 'moveForwardCommand'},
    {'1': 'rotate_in_place_command', '3': 17, '4': 1, '5': 11, '6': '.kachaka_api.RotateInPlaceCommand', '9': 0, '10': 'rotateInPlaceCommand'},
    {'1': 'dock_any_shelf_with_registration_command', '3': 18, '4': 1, '5': 11, '6': '.kachaka_api.DockAnyShelfWithRegistrationCommand', '9': 0, '10': 'dockAnyShelfWithRegistrationCommand'},
    {'1': 'localize_command', '3': 19, '4': 1, '5': 11, '6': '.kachaka_api.LocalizeCommand', '9': 0, '10': 'localizeCommand'},
  ],
  '8': [
    {'1': 'command'},
  ],
};

/// Descriptor for `Command`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandDescriptor = $convert.base64Decode(
    'CgdDb21tYW5kEk0KEm1vdmVfc2hlbGZfY29tbWFuZBgBIAEoCzIdLmthY2hha2FfYXBpLk1vdm'
    'VTaGVsZkNvbW1hbmRIAFIQbW92ZVNoZWxmQ29tbWFuZBJTChRyZXR1cm5fc2hlbGZfY29tbWFu'
    'ZBgCIAEoCzIfLmthY2hha2FfYXBpLlJldHVyblNoZWxmQ29tbWFuZEgAUhJyZXR1cm5TaGVsZk'
    'NvbW1hbmQSUwoUdW5kb2NrX3NoZWxmX2NvbW1hbmQYBSABKAsyHy5rYWNoYWthX2FwaS5VbmRv'
    'Y2tTaGVsZkNvbW1hbmRIAFISdW5kb2NrU2hlbGZDb21tYW5kEl0KGG1vdmVfdG9fbG9jYXRpb2'
    '5fY29tbWFuZBgHIAEoCzIiLmthY2hha2FfYXBpLk1vdmVUb0xvY2F0aW9uQ29tbWFuZEgAUhVt'
    'b3ZlVG9Mb2NhdGlvbkNvbW1hbmQSUAoTcmV0dXJuX2hvbWVfY29tbWFuZBgIIAEoCzIeLmthY2'
    'hha2FfYXBpLlJldHVybkhvbWVDb21tYW5kSABSEXJldHVybkhvbWVDb21tYW5kEk0KEmRvY2tf'
    'c2hlbGZfY29tbWFuZBgJIAEoCzIdLmthY2hha2FfYXBpLkRvY2tTaGVsZkNvbW1hbmRIAFIQZG'
    '9ja1NoZWxmQ29tbWFuZBJACg1zcGVha19jb21tYW5kGAwgASgLMhkua2FjaGFrYV9hcGkuU3Bl'
    'YWtDb21tYW5kSABSDHNwZWFrQ29tbWFuZBJRChRtb3ZlX3RvX3Bvc2VfY29tbWFuZBgNIAEoCz'
    'IeLmthY2hha2FfYXBpLk1vdmVUb1Bvc2VDb21tYW5kSABSEW1vdmVUb1Bvc2VDb21tYW5kEj0K'
    'DGxvY2tfY29tbWFuZBgPIAEoCzIYLmthY2hha2FfYXBpLkxvY2tDb21tYW5kSABSC2xvY2tDb2'
    '1tYW5kElMKFG1vdmVfZm9yd2FyZF9jb21tYW5kGBAgASgLMh8ua2FjaGFrYV9hcGkuTW92ZUZv'
    'cndhcmRDb21tYW5kSABSEm1vdmVGb3J3YXJkQ29tbWFuZBJaChdyb3RhdGVfaW5fcGxhY2VfY2'
    '9tbWFuZBgRIAEoCzIhLmthY2hha2FfYXBpLlJvdGF0ZUluUGxhY2VDb21tYW5kSABSFHJvdGF0'
    'ZUluUGxhY2VDb21tYW5kEokBCihkb2NrX2FueV9zaGVsZl93aXRoX3JlZ2lzdHJhdGlvbl9jb2'
    '1tYW5kGBIgASgLMjAua2FjaGFrYV9hcGkuRG9ja0FueVNoZWxmV2l0aFJlZ2lzdHJhdGlvbkNv'
    'bW1hbmRIAFIjZG9ja0FueVNoZWxmV2l0aFJlZ2lzdHJhdGlvbkNvbW1hbmQSSQoQbG9jYWxpem'
    'VfY29tbWFuZBgTIAEoCzIcLmthY2hha2FfYXBpLkxvY2FsaXplQ29tbWFuZEgAUg9sb2NhbGl6'
    'ZUNvbW1hbmRCCQoHY29tbWFuZA==');

@$core.Deprecated('Use moveShelfCommandDescriptor instead')
const MoveShelfCommand$json = {
  '1': 'MoveShelfCommand',
  '2': [
    {'1': 'target_shelf_id', '3': 1, '4': 1, '5': 9, '10': 'targetShelfId'},
    {'1': 'destination_location_id', '3': 2, '4': 1, '5': 9, '10': 'destinationLocationId'},
    {'1': 'undock_on_destination', '3': 3, '4': 1, '5': 8, '10': 'undockOnDestination'},
  ],
};

/// Descriptor for `MoveShelfCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moveShelfCommandDescriptor = $convert.base64Decode(
    'ChBNb3ZlU2hlbGZDb21tYW5kEiYKD3RhcmdldF9zaGVsZl9pZBgBIAEoCVINdGFyZ2V0U2hlbG'
    'ZJZBI2ChdkZXN0aW5hdGlvbl9sb2NhdGlvbl9pZBgCIAEoCVIVZGVzdGluYXRpb25Mb2NhdGlv'
    'bklkEjIKFXVuZG9ja19vbl9kZXN0aW5hdGlvbhgDIAEoCFITdW5kb2NrT25EZXN0aW5hdGlvbg'
    '==');

@$core.Deprecated('Use returnShelfCommandDescriptor instead')
const ReturnShelfCommand$json = {
  '1': 'ReturnShelfCommand',
  '2': [
    {'1': 'target_shelf_id', '3': 1, '4': 1, '5': 9, '10': 'targetShelfId'},
  ],
};

/// Descriptor for `ReturnShelfCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnShelfCommandDescriptor = $convert.base64Decode(
    'ChJSZXR1cm5TaGVsZkNvbW1hbmQSJgoPdGFyZ2V0X3NoZWxmX2lkGAEgASgJUg10YXJnZXRTaG'
    'VsZklk');

@$core.Deprecated('Use undockShelfCommandDescriptor instead')
const UndockShelfCommand$json = {
  '1': 'UndockShelfCommand',
  '2': [
    {'1': 'target_shelf_id', '3': 1, '4': 1, '5': 9, '10': 'targetShelfId'},
  ],
};

/// Descriptor for `UndockShelfCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List undockShelfCommandDescriptor = $convert.base64Decode(
    'ChJVbmRvY2tTaGVsZkNvbW1hbmQSJgoPdGFyZ2V0X3NoZWxmX2lkGAEgASgJUg10YXJnZXRTaG'
    'VsZklk');

@$core.Deprecated('Use moveToLocationCommandDescriptor instead')
const MoveToLocationCommand$json = {
  '1': 'MoveToLocationCommand',
  '2': [
    {'1': 'target_location_id', '3': 1, '4': 1, '5': 9, '10': 'targetLocationId'},
  ],
};

/// Descriptor for `MoveToLocationCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moveToLocationCommandDescriptor = $convert.base64Decode(
    'ChVNb3ZlVG9Mb2NhdGlvbkNvbW1hbmQSLAoSdGFyZ2V0X2xvY2F0aW9uX2lkGAEgASgJUhB0YX'
    'JnZXRMb2NhdGlvbklk');

@$core.Deprecated('Use returnHomeCommandDescriptor instead')
const ReturnHomeCommand$json = {
  '1': 'ReturnHomeCommand',
};

/// Descriptor for `ReturnHomeCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnHomeCommandDescriptor = $convert.base64Decode(
    'ChFSZXR1cm5Ib21lQ29tbWFuZA==');

@$core.Deprecated('Use dockShelfCommandDescriptor instead')
const DockShelfCommand$json = {
  '1': 'DockShelfCommand',
};

/// Descriptor for `DockShelfCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dockShelfCommandDescriptor = $convert.base64Decode(
    'ChBEb2NrU2hlbGZDb21tYW5k');

@$core.Deprecated('Use speakCommandDescriptor instead')
const SpeakCommand$json = {
  '1': 'SpeakCommand',
  '2': [
    {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `SpeakCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speakCommandDescriptor = $convert.base64Decode(
    'CgxTcGVha0NvbW1hbmQSEgoEdGV4dBgBIAEoCVIEdGV4dA==');

@$core.Deprecated('Use moveToPoseCommandDescriptor instead')
const MoveToPoseCommand$json = {
  '1': 'MoveToPoseCommand',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 1, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 1, '10': 'y'},
    {'1': 'yaw', '3': 3, '4': 1, '5': 1, '10': 'yaw'},
  ],
};

/// Descriptor for `MoveToPoseCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moveToPoseCommandDescriptor = $convert.base64Decode(
    'ChFNb3ZlVG9Qb3NlQ29tbWFuZBIMCgF4GAEgASgBUgF4EgwKAXkYAiABKAFSAXkSEAoDeWF3GA'
    'MgASgBUgN5YXc=');

@$core.Deprecated('Use lockCommandDescriptor instead')
const LockCommand$json = {
  '1': 'LockCommand',
  '2': [
    {'1': 'duration_sec', '3': 1, '4': 1, '5': 1, '10': 'durationSec'},
  ],
};

/// Descriptor for `LockCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lockCommandDescriptor = $convert.base64Decode(
    'CgtMb2NrQ29tbWFuZBIhCgxkdXJhdGlvbl9zZWMYASABKAFSC2R1cmF0aW9uU2Vj');

@$core.Deprecated('Use moveForwardCommandDescriptor instead')
const MoveForwardCommand$json = {
  '1': 'MoveForwardCommand',
  '2': [
    {'1': 'distance_meter', '3': 1, '4': 1, '5': 1, '10': 'distanceMeter'},
    {'1': 'speed', '3': 2, '4': 1, '5': 1, '10': 'speed'},
  ],
};

/// Descriptor for `MoveForwardCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moveForwardCommandDescriptor = $convert.base64Decode(
    'ChJNb3ZlRm9yd2FyZENvbW1hbmQSJQoOZGlzdGFuY2VfbWV0ZXIYASABKAFSDWRpc3RhbmNlTW'
    'V0ZXISFAoFc3BlZWQYAiABKAFSBXNwZWVk');

@$core.Deprecated('Use rotateInPlaceCommandDescriptor instead')
const RotateInPlaceCommand$json = {
  '1': 'RotateInPlaceCommand',
  '2': [
    {'1': 'angle_radian', '3': 1, '4': 1, '5': 1, '10': 'angleRadian'},
  ],
};

/// Descriptor for `RotateInPlaceCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rotateInPlaceCommandDescriptor = $convert.base64Decode(
    'ChRSb3RhdGVJblBsYWNlQ29tbWFuZBIhCgxhbmdsZV9yYWRpYW4YASABKAFSC2FuZ2xlUmFkaW'
    'Fu');

@$core.Deprecated('Use dockAnyShelfWithRegistrationCommandDescriptor instead')
const DockAnyShelfWithRegistrationCommand$json = {
  '1': 'DockAnyShelfWithRegistrationCommand',
  '2': [
    {'1': 'target_location_id', '3': 1, '4': 1, '5': 9, '10': 'targetLocationId'},
    {'1': 'dock_forward', '3': 2, '4': 1, '5': 8, '10': 'dockForward'},
  ],
};

/// Descriptor for `DockAnyShelfWithRegistrationCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dockAnyShelfWithRegistrationCommandDescriptor = $convert.base64Decode(
    'CiNEb2NrQW55U2hlbGZXaXRoUmVnaXN0cmF0aW9uQ29tbWFuZBIsChJ0YXJnZXRfbG9jYXRpb2'
    '5faWQYASABKAlSEHRhcmdldExvY2F0aW9uSWQSIQoMZG9ja19mb3J3YXJkGAIgASgIUgtkb2Nr'
    'Rm9yd2FyZA==');

@$core.Deprecated('Use localizeCommandDescriptor instead')
const LocalizeCommand$json = {
  '1': 'LocalizeCommand',
};

/// Descriptor for `LocalizeCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List localizeCommandDescriptor = $convert.base64Decode(
    'Cg9Mb2NhbGl6ZUNvbW1hbmQ=');

@$core.Deprecated('Use emptyRequestDescriptor instead')
const EmptyRequest$json = {
  '1': 'EmptyRequest',
};

/// Descriptor for `EmptyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyRequestDescriptor = $convert.base64Decode(
    'CgxFbXB0eVJlcXVlc3Q=');

@$core.Deprecated('Use getRequestDescriptor instead')
const GetRequest$json = {
  '1': 'GetRequest',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
  ],
};

/// Descriptor for `GetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRequestDescriptor = $convert.base64Decode(
    'CgpHZXRSZXF1ZXN0EjEKCG1ldGFkYXRhGAEgASgLMhUua2FjaGFrYV9hcGkuTWV0YWRhdGFSCG'
    '1ldGFkYXRh');

@$core.Deprecated('Use getRobotSerialNumberResponseDescriptor instead')
const GetRobotSerialNumberResponse$json = {
  '1': 'GetRobotSerialNumberResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'serial_number', '3': 2, '4': 1, '5': 9, '10': 'serialNumber'},
  ],
};

/// Descriptor for `GetRobotSerialNumberResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRobotSerialNumberResponseDescriptor = $convert.base64Decode(
    'ChxHZXRSb2JvdFNlcmlhbE51bWJlclJlc3BvbnNlEjEKCG1ldGFkYXRhGAEgASgLMhUua2FjaG'
    'FrYV9hcGkuTWV0YWRhdGFSCG1ldGFkYXRhEiMKDXNlcmlhbF9udW1iZXIYAiABKAlSDHNlcmlh'
    'bE51bWJlcg==');

@$core.Deprecated('Use getRobotVersionResponseDescriptor instead')
const GetRobotVersionResponse$json = {
  '1': 'GetRobotVersionResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `GetRobotVersionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRobotVersionResponseDescriptor = $convert.base64Decode(
    'ChdHZXRSb2JvdFZlcnNpb25SZXNwb25zZRIxCghtZXRhZGF0YRgBIAEoCzIVLmthY2hha2FfYX'
    'BpLk1ldGFkYXRhUghtZXRhZGF0YRIYCgd2ZXJzaW9uGAIgASgJUgd2ZXJzaW9u');

@$core.Deprecated('Use getRobotPoseResponseDescriptor instead')
const GetRobotPoseResponse$json = {
  '1': 'GetRobotPoseResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'pose', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.Pose', '10': 'pose'},
  ],
};

/// Descriptor for `GetRobotPoseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRobotPoseResponseDescriptor = $convert.base64Decode(
    'ChRHZXRSb2JvdFBvc2VSZXNwb25zZRIxCghtZXRhZGF0YRgBIAEoCzIVLmthY2hha2FfYXBpLk'
    '1ldGFkYXRhUghtZXRhZGF0YRIlCgRwb3NlGAIgASgLMhEua2FjaGFrYV9hcGkuUG9zZVIEcG9z'
    'ZQ==');

@$core.Deprecated('Use setRobotPoseRequestDescriptor instead')
const SetRobotPoseRequest$json = {
  '1': 'SetRobotPoseRequest',
  '2': [
    {'1': 'pose', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Pose', '10': 'pose'},
  ],
};

/// Descriptor for `SetRobotPoseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setRobotPoseRequestDescriptor = $convert.base64Decode(
    'ChNTZXRSb2JvdFBvc2VSZXF1ZXN0EiUKBHBvc2UYASABKAsyES5rYWNoYWthX2FwaS5Qb3NlUg'
    'Rwb3Nl');

@$core.Deprecated('Use setRobotPoseResponseDescriptor instead')
const SetRobotPoseResponse$json = {
  '1': 'SetRobotPoseResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Result', '10': 'result'},
  ],
};

/// Descriptor for `SetRobotPoseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setRobotPoseResponseDescriptor = $convert.base64Decode(
    'ChRTZXRSb2JvdFBvc2VSZXNwb25zZRIrCgZyZXN1bHQYASABKAsyEy5rYWNoYWthX2FwaS5SZX'
    'N1bHRSBnJlc3VsdA==');

@$core.Deprecated('Use getBatteryInfoResponseDescriptor instead')
const GetBatteryInfoResponse$json = {
  '1': 'GetBatteryInfoResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'remaining_percentage', '3': 2, '4': 1, '5': 1, '10': 'remainingPercentage'},
    {'1': 'power_supply_status', '3': 3, '4': 1, '5': 14, '6': '.kachaka_api.PowerSupplyStatus', '10': 'powerSupplyStatus'},
  ],
};

/// Descriptor for `GetBatteryInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBatteryInfoResponseDescriptor = $convert.base64Decode(
    'ChZHZXRCYXR0ZXJ5SW5mb1Jlc3BvbnNlEjEKCG1ldGFkYXRhGAEgASgLMhUua2FjaGFrYV9hcG'
    'kuTWV0YWRhdGFSCG1ldGFkYXRhEjEKFHJlbWFpbmluZ19wZXJjZW50YWdlGAIgASgBUhNyZW1h'
    'aW5pbmdQZXJjZW50YWdlEk4KE3Bvd2VyX3N1cHBseV9zdGF0dXMYAyABKA4yHi5rYWNoYWthX2'
    'FwaS5Qb3dlclN1cHBseVN0YXR1c1IRcG93ZXJTdXBwbHlTdGF0dXM=');

@$core.Deprecated('Use getRobotErrorCodeJsonResponseDescriptor instead')
const GetRobotErrorCodeJsonResponse$json = {
  '1': 'GetRobotErrorCodeJsonResponse',
  '2': [
    {'1': 'json', '3': 1, '4': 1, '5': 9, '10': 'json'},
    {'1': 'result', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.Result', '10': 'result'},
  ],
};

/// Descriptor for `GetRobotErrorCodeJsonResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRobotErrorCodeJsonResponseDescriptor = $convert.base64Decode(
    'Ch1HZXRSb2JvdEVycm9yQ29kZUpzb25SZXNwb25zZRISCgRqc29uGAEgASgJUgRqc29uEisKBn'
    'Jlc3VsdBgCIAEoCzITLmthY2hha2FfYXBpLlJlc3VsdFIGcmVzdWx0');

@$core.Deprecated('Use getErrorResponseDescriptor instead')
const GetErrorResponse$json = {
  '1': 'GetErrorResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'error_codes', '3': 2, '4': 3, '5': 5, '10': 'errorCodes'},
  ],
};

/// Descriptor for `GetErrorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getErrorResponseDescriptor = $convert.base64Decode(
    'ChBHZXRFcnJvclJlc3BvbnNlEjEKCG1ldGFkYXRhGAEgASgLMhUua2FjaGFrYV9hcGkuTWV0YW'
    'RhdGFSCG1ldGFkYXRhEh8KC2Vycm9yX2NvZGVzGAIgAygFUgplcnJvckNvZGVz');

@$core.Deprecated('Use getPngMapResponseDescriptor instead')
const GetPngMapResponse$json = {
  '1': 'GetPngMapResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'map', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.Map', '10': 'map'},
  ],
};

/// Descriptor for `GetPngMapResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPngMapResponseDescriptor = $convert.base64Decode(
    'ChFHZXRQbmdNYXBSZXNwb25zZRIxCghtZXRhZGF0YRgBIAEoCzIVLmthY2hha2FfYXBpLk1ldG'
    'FkYXRhUghtZXRhZGF0YRIiCgNtYXAYAiABKAsyEC5rYWNoYWthX2FwaS5NYXBSA21hcA==');

@$core.Deprecated('Use getObjectDetectionResponseDescriptor instead')
const GetObjectDetectionResponse$json = {
  '1': 'GetObjectDetectionResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'header', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.RosHeader', '10': 'header'},
    {'1': 'objects', '3': 3, '4': 3, '5': 11, '6': '.kachaka_api.ObjectDetection', '10': 'objects'},
  ],
};

/// Descriptor for `GetObjectDetectionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getObjectDetectionResponseDescriptor = $convert.base64Decode(
    'ChpHZXRPYmplY3REZXRlY3Rpb25SZXNwb25zZRIxCghtZXRhZGF0YRgBIAEoCzIVLmthY2hha2'
    'FfYXBpLk1ldGFkYXRhUghtZXRhZGF0YRIuCgZoZWFkZXIYAiABKAsyFi5rYWNoYWthX2FwaS5S'
    'b3NIZWFkZXJSBmhlYWRlchI2CgdvYmplY3RzGAMgAygLMhwua2FjaGFrYV9hcGkuT2JqZWN0RG'
    'V0ZWN0aW9uUgdvYmplY3Rz');

@$core.Deprecated('Use getObjectDetectionFeaturesResponseDescriptor instead')
const GetObjectDetectionFeaturesResponse$json = {
  '1': 'GetObjectDetectionFeaturesResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'header', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.RosHeader', '10': 'header'},
    {'1': 'features', '3': 3, '4': 3, '5': 11, '6': '.kachaka_api.ObjectDetectionFeatures', '10': 'features'},
  ],
};

/// Descriptor for `GetObjectDetectionFeaturesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getObjectDetectionFeaturesResponseDescriptor = $convert.base64Decode(
    'CiJHZXRPYmplY3REZXRlY3Rpb25GZWF0dXJlc1Jlc3BvbnNlEjEKCG1ldGFkYXRhGAEgASgLMh'
    'Uua2FjaGFrYV9hcGkuTWV0YWRhdGFSCG1ldGFkYXRhEi4KBmhlYWRlchgCIAEoCzIWLmthY2hh'
    'a2FfYXBpLlJvc0hlYWRlclIGaGVhZGVyEkAKCGZlYXR1cmVzGAMgAygLMiQua2FjaGFrYV9hcG'
    'kuT2JqZWN0RGV0ZWN0aW9uRmVhdHVyZXNSCGZlYXR1cmVz');

@$core.Deprecated('Use getRosImuResponseDescriptor instead')
const GetRosImuResponse$json = {
  '1': 'GetRosImuResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'imu', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.RosImu', '10': 'imu'},
  ],
};

/// Descriptor for `GetRosImuResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRosImuResponseDescriptor = $convert.base64Decode(
    'ChFHZXRSb3NJbXVSZXNwb25zZRIxCghtZXRhZGF0YRgBIAEoCzIVLmthY2hha2FfYXBpLk1ldG'
    'FkYXRhUghtZXRhZGF0YRIlCgNpbXUYAiABKAsyEy5rYWNoYWthX2FwaS5Sb3NJbXVSA2ltdQ==');

@$core.Deprecated('Use getRosOdometryResponseDescriptor instead')
const GetRosOdometryResponse$json = {
  '1': 'GetRosOdometryResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'odometry', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.RosOdometry', '10': 'odometry'},
  ],
};

/// Descriptor for `GetRosOdometryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRosOdometryResponseDescriptor = $convert.base64Decode(
    'ChZHZXRSb3NPZG9tZXRyeVJlc3BvbnNlEjEKCG1ldGFkYXRhGAEgASgLMhUua2FjaGFrYV9hcG'
    'kuTWV0YWRhdGFSCG1ldGFkYXRhEjQKCG9kb21ldHJ5GAIgASgLMhgua2FjaGFrYV9hcGkuUm9z'
    'T2RvbWV0cnlSCG9kb21ldHJ5');

@$core.Deprecated('Use getRosWheelOdometryResponseDescriptor instead')
const GetRosWheelOdometryResponse$json = {
  '1': 'GetRosWheelOdometryResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'odometry', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.RosOdometry', '10': 'odometry'},
  ],
};

/// Descriptor for `GetRosWheelOdometryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRosWheelOdometryResponseDescriptor = $convert.base64Decode(
    'ChtHZXRSb3NXaGVlbE9kb21ldHJ5UmVzcG9uc2USMQoIbWV0YWRhdGEYASABKAsyFS5rYWNoYW'
    'thX2FwaS5NZXRhZGF0YVIIbWV0YWRhdGESNAoIb2RvbWV0cnkYAiABKAsyGC5rYWNoYWthX2Fw'
    'aS5Sb3NPZG9tZXRyeVIIb2RvbWV0cnk=');

@$core.Deprecated('Use getRosLaserScanResponseDescriptor instead')
const GetRosLaserScanResponse$json = {
  '1': 'GetRosLaserScanResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'scan', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.RosLaserScan', '10': 'scan'},
  ],
};

/// Descriptor for `GetRosLaserScanResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRosLaserScanResponseDescriptor = $convert.base64Decode(
    'ChdHZXRSb3NMYXNlclNjYW5SZXNwb25zZRIxCghtZXRhZGF0YRgBIAEoCzIVLmthY2hha2FfYX'
    'BpLk1ldGFkYXRhUghtZXRhZGF0YRItCgRzY2FuGAIgASgLMhkua2FjaGFrYV9hcGkuUm9zTGFz'
    'ZXJTY2FuUgRzY2Fu');

@$core.Deprecated('Use getFrontCameraRosCameraInfoResponseDescriptor instead')
const GetFrontCameraRosCameraInfoResponse$json = {
  '1': 'GetFrontCameraRosCameraInfoResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'camera_info', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.RosCameraInfo', '10': 'cameraInfo'},
  ],
};

/// Descriptor for `GetFrontCameraRosCameraInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFrontCameraRosCameraInfoResponseDescriptor = $convert.base64Decode(
    'CiNHZXRGcm9udENhbWVyYVJvc0NhbWVyYUluZm9SZXNwb25zZRIxCghtZXRhZGF0YRgBIAEoCz'
    'IVLmthY2hha2FfYXBpLk1ldGFkYXRhUghtZXRhZGF0YRI7CgtjYW1lcmFfaW5mbxgCIAEoCzIa'
    'LmthY2hha2FfYXBpLlJvc0NhbWVyYUluZm9SCmNhbWVyYUluZm8=');

@$core.Deprecated('Use getFrontCameraRosImageResponseDescriptor instead')
const GetFrontCameraRosImageResponse$json = {
  '1': 'GetFrontCameraRosImageResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'image', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.RosImage', '10': 'image'},
  ],
};

/// Descriptor for `GetFrontCameraRosImageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFrontCameraRosImageResponseDescriptor = $convert.base64Decode(
    'Ch5HZXRGcm9udENhbWVyYVJvc0ltYWdlUmVzcG9uc2USMQoIbWV0YWRhdGEYASABKAsyFS5rYW'
    'NoYWthX2FwaS5NZXRhZGF0YVIIbWV0YWRhdGESKwoFaW1hZ2UYAiABKAsyFS5rYWNoYWthX2Fw'
    'aS5Sb3NJbWFnZVIFaW1hZ2U=');

@$core.Deprecated('Use getFrontCameraRosCompressedImageResponseDescriptor instead')
const GetFrontCameraRosCompressedImageResponse$json = {
  '1': 'GetFrontCameraRosCompressedImageResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'image', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.RosCompressedImage', '10': 'image'},
  ],
};

/// Descriptor for `GetFrontCameraRosCompressedImageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFrontCameraRosCompressedImageResponseDescriptor = $convert.base64Decode(
    'CihHZXRGcm9udENhbWVyYVJvc0NvbXByZXNzZWRJbWFnZVJlc3BvbnNlEjEKCG1ldGFkYXRhGA'
    'EgASgLMhUua2FjaGFrYV9hcGkuTWV0YWRhdGFSCG1ldGFkYXRhEjUKBWltYWdlGAIgASgLMh8u'
    'a2FjaGFrYV9hcGkuUm9zQ29tcHJlc3NlZEltYWdlUgVpbWFnZQ==');

@$core.Deprecated('Use getBackCameraRosCameraInfoResponseDescriptor instead')
const GetBackCameraRosCameraInfoResponse$json = {
  '1': 'GetBackCameraRosCameraInfoResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'camera_info', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.RosCameraInfo', '10': 'cameraInfo'},
  ],
};

/// Descriptor for `GetBackCameraRosCameraInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBackCameraRosCameraInfoResponseDescriptor = $convert.base64Decode(
    'CiJHZXRCYWNrQ2FtZXJhUm9zQ2FtZXJhSW5mb1Jlc3BvbnNlEjEKCG1ldGFkYXRhGAEgASgLMh'
    'Uua2FjaGFrYV9hcGkuTWV0YWRhdGFSCG1ldGFkYXRhEjsKC2NhbWVyYV9pbmZvGAIgASgLMhou'
    'a2FjaGFrYV9hcGkuUm9zQ2FtZXJhSW5mb1IKY2FtZXJhSW5mbw==');

@$core.Deprecated('Use getBackCameraRosImageResponseDescriptor instead')
const GetBackCameraRosImageResponse$json = {
  '1': 'GetBackCameraRosImageResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'image', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.RosImage', '10': 'image'},
  ],
};

/// Descriptor for `GetBackCameraRosImageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBackCameraRosImageResponseDescriptor = $convert.base64Decode(
    'Ch1HZXRCYWNrQ2FtZXJhUm9zSW1hZ2VSZXNwb25zZRIxCghtZXRhZGF0YRgBIAEoCzIVLmthY2'
    'hha2FfYXBpLk1ldGFkYXRhUghtZXRhZGF0YRIrCgVpbWFnZRgCIAEoCzIVLmthY2hha2FfYXBp'
    'LlJvc0ltYWdlUgVpbWFnZQ==');

@$core.Deprecated('Use getBackCameraRosCompressedImageResponseDescriptor instead')
const GetBackCameraRosCompressedImageResponse$json = {
  '1': 'GetBackCameraRosCompressedImageResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'image', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.RosCompressedImage', '10': 'image'},
  ],
};

/// Descriptor for `GetBackCameraRosCompressedImageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBackCameraRosCompressedImageResponseDescriptor = $convert.base64Decode(
    'CidHZXRCYWNrQ2FtZXJhUm9zQ29tcHJlc3NlZEltYWdlUmVzcG9uc2USMQoIbWV0YWRhdGEYAS'
    'ABKAsyFS5rYWNoYWthX2FwaS5NZXRhZGF0YVIIbWV0YWRhdGESNQoFaW1hZ2UYAiABKAsyHy5r'
    'YWNoYWthX2FwaS5Sb3NDb21wcmVzc2VkSW1hZ2VSBWltYWdl');

@$core.Deprecated('Use getTofCameraRosCameraInfoResponseDescriptor instead')
const GetTofCameraRosCameraInfoResponse$json = {
  '1': 'GetTofCameraRosCameraInfoResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'camera_info', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.RosCameraInfo', '10': 'cameraInfo'},
  ],
};

/// Descriptor for `GetTofCameraRosCameraInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTofCameraRosCameraInfoResponseDescriptor = $convert.base64Decode(
    'CiFHZXRUb2ZDYW1lcmFSb3NDYW1lcmFJbmZvUmVzcG9uc2USMQoIbWV0YWRhdGEYASABKAsyFS'
    '5rYWNoYWthX2FwaS5NZXRhZGF0YVIIbWV0YWRhdGESOwoLY2FtZXJhX2luZm8YAiABKAsyGi5r'
    'YWNoYWthX2FwaS5Sb3NDYW1lcmFJbmZvUgpjYW1lcmFJbmZv');

@$core.Deprecated('Use getTofCameraRosImageResponseDescriptor instead')
const GetTofCameraRosImageResponse$json = {
  '1': 'GetTofCameraRosImageResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'image', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.RosImage', '10': 'image'},
    {'1': 'is_available', '3': 3, '4': 1, '5': 8, '10': 'isAvailable'},
  ],
};

/// Descriptor for `GetTofCameraRosImageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTofCameraRosImageResponseDescriptor = $convert.base64Decode(
    'ChxHZXRUb2ZDYW1lcmFSb3NJbWFnZVJlc3BvbnNlEjEKCG1ldGFkYXRhGAEgASgLMhUua2FjaG'
    'FrYV9hcGkuTWV0YWRhdGFSCG1ldGFkYXRhEisKBWltYWdlGAIgASgLMhUua2FjaGFrYV9hcGku'
    'Um9zSW1hZ2VSBWltYWdlEiEKDGlzX2F2YWlsYWJsZRgDIAEoCFILaXNBdmFpbGFibGU=');

@$core.Deprecated('Use getTofCameraRosCompressedImageResponseDescriptor instead')
const GetTofCameraRosCompressedImageResponse$json = {
  '1': 'GetTofCameraRosCompressedImageResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'image', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.RosCompressedImage', '10': 'image'},
    {'1': 'is_available', '3': 3, '4': 1, '5': 8, '10': 'isAvailable'},
  ],
};

/// Descriptor for `GetTofCameraRosCompressedImageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTofCameraRosCompressedImageResponseDescriptor = $convert.base64Decode(
    'CiZHZXRUb2ZDYW1lcmFSb3NDb21wcmVzc2VkSW1hZ2VSZXNwb25zZRIxCghtZXRhZGF0YRgBIA'
    'EoCzIVLmthY2hha2FfYXBpLk1ldGFkYXRhUghtZXRhZGF0YRI1CgVpbWFnZRgCIAEoCzIfLmth'
    'Y2hha2FfYXBpLlJvc0NvbXByZXNzZWRJbWFnZVIFaW1hZ2USIQoMaXNfYXZhaWxhYmxlGAMgAS'
    'gIUgtpc0F2YWlsYWJsZQ==');

@$core.Deprecated('Use isReadyResponseDescriptor instead')
const IsReadyResponse$json = {
  '1': 'IsReadyResponse',
  '2': [
    {'1': 'ready', '3': 1, '4': 1, '5': 8, '10': 'ready'},
  ],
};

/// Descriptor for `IsReadyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isReadyResponseDescriptor = $convert.base64Decode(
    'Cg9Jc1JlYWR5UmVzcG9uc2USFAoFcmVhZHkYASABKAhSBXJlYWR5');

@$core.Deprecated('Use lockOnEndDescriptor instead')
const LockOnEnd$json = {
  '1': 'LockOnEnd',
  '2': [
    {'1': 'duration_sec', '3': 1, '4': 1, '5': 1, '10': 'durationSec'},
  ],
};

/// Descriptor for `LockOnEnd`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lockOnEndDescriptor = $convert.base64Decode(
    'CglMb2NrT25FbmQSIQoMZHVyYXRpb25fc2VjGAEgASgBUgtkdXJhdGlvblNlYw==');

@$core.Deprecated('Use startCommandRequestDescriptor instead')
const StartCommandRequest$json = {
  '1': 'StartCommandRequest',
  '2': [
    {'1': 'command', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Command', '10': 'command'},
    {'1': 'cancel_all', '3': 2, '4': 1, '5': 8, '10': 'cancelAll'},
    {'1': 'tts_on_success', '3': 3, '4': 1, '5': 9, '10': 'ttsOnSuccess'},
    {'1': 'title', '3': 4, '4': 1, '5': 9, '10': 'title'},
    {'1': 'deferrable', '3': 5, '4': 1, '5': 8, '10': 'deferrable'},
    {'1': 'lock_on_end', '3': 6, '4': 1, '5': 11, '6': '.kachaka_api.LockOnEnd', '10': 'lockOnEnd'},
  ],
};

/// Descriptor for `StartCommandRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startCommandRequestDescriptor = $convert.base64Decode(
    'ChNTdGFydENvbW1hbmRSZXF1ZXN0Ei4KB2NvbW1hbmQYASABKAsyFC5rYWNoYWthX2FwaS5Db2'
    '1tYW5kUgdjb21tYW5kEh0KCmNhbmNlbF9hbGwYAiABKAhSCWNhbmNlbEFsbBIkCg50dHNfb25f'
    'c3VjY2VzcxgDIAEoCVIMdHRzT25TdWNjZXNzEhQKBXRpdGxlGAQgASgJUgV0aXRsZRIeCgpkZW'
    'ZlcnJhYmxlGAUgASgIUgpkZWZlcnJhYmxlEjYKC2xvY2tfb25fZW5kGAYgASgLMhYua2FjaGFr'
    'YV9hcGkuTG9ja09uRW5kUglsb2NrT25FbmQ=');

@$core.Deprecated('Use startCommandResponseDescriptor instead')
const StartCommandResponse$json = {
  '1': 'StartCommandResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Result', '10': 'result'},
    {'1': 'command_id', '3': 2, '4': 1, '5': 9, '10': 'commandId'},
  ],
};

/// Descriptor for `StartCommandResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startCommandResponseDescriptor = $convert.base64Decode(
    'ChRTdGFydENvbW1hbmRSZXNwb25zZRIrCgZyZXN1bHQYASABKAsyEy5rYWNoYWthX2FwaS5SZX'
    'N1bHRSBnJlc3VsdBIdCgpjb21tYW5kX2lkGAIgASgJUgljb21tYW5kSWQ=');

@$core.Deprecated('Use cancelCommandResponseDescriptor instead')
const CancelCommandResponse$json = {
  '1': 'CancelCommandResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Result', '10': 'result'},
    {'1': 'command', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.Command', '10': 'command'},
  ],
};

/// Descriptor for `CancelCommandResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancelCommandResponseDescriptor = $convert.base64Decode(
    'ChVDYW5jZWxDb21tYW5kUmVzcG9uc2USKwoGcmVzdWx0GAEgASgLMhMua2FjaGFrYV9hcGkuUm'
    'VzdWx0UgZyZXN1bHQSLgoHY29tbWFuZBgCIAEoCzIULmthY2hha2FfYXBpLkNvbW1hbmRSB2Nv'
    'bW1hbmQ=');

@$core.Deprecated('Use getCommandStateResponseDescriptor instead')
const GetCommandStateResponse$json = {
  '1': 'GetCommandStateResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'state', '3': 2, '4': 1, '5': 14, '6': '.kachaka_api.CommandState', '10': 'state'},
    {'1': 'command', '3': 3, '4': 1, '5': 11, '6': '.kachaka_api.Command', '10': 'command'},
    {'1': 'command_id', '3': 4, '4': 1, '5': 9, '10': 'commandId'},
  ],
};

/// Descriptor for `GetCommandStateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCommandStateResponseDescriptor = $convert.base64Decode(
    'ChdHZXRDb21tYW5kU3RhdGVSZXNwb25zZRIxCghtZXRhZGF0YRgBIAEoCzIVLmthY2hha2FfYX'
    'BpLk1ldGFkYXRhUghtZXRhZGF0YRIvCgVzdGF0ZRgCIAEoDjIZLmthY2hha2FfYXBpLkNvbW1h'
    'bmRTdGF0ZVIFc3RhdGUSLgoHY29tbWFuZBgDIAEoCzIULmthY2hha2FfYXBpLkNvbW1hbmRSB2'
    'NvbW1hbmQSHQoKY29tbWFuZF9pZBgEIAEoCVIJY29tbWFuZElk');

@$core.Deprecated('Use getLastCommandResultResponseDescriptor instead')
const GetLastCommandResultResponse$json = {
  '1': 'GetLastCommandResultResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'result', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.Result', '10': 'result'},
    {'1': 'command', '3': 3, '4': 1, '5': 11, '6': '.kachaka_api.Command', '10': 'command'},
    {'1': 'command_id', '3': 4, '4': 1, '5': 9, '10': 'commandId'},
  ],
};

/// Descriptor for `GetLastCommandResultResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLastCommandResultResponseDescriptor = $convert.base64Decode(
    'ChxHZXRMYXN0Q29tbWFuZFJlc3VsdFJlc3BvbnNlEjEKCG1ldGFkYXRhGAEgASgLMhUua2FjaG'
    'FrYV9hcGkuTWV0YWRhdGFSCG1ldGFkYXRhEisKBnJlc3VsdBgCIAEoCzITLmthY2hha2FfYXBp'
    'LlJlc3VsdFIGcmVzdWx0Ei4KB2NvbW1hbmQYAyABKAsyFC5rYWNoYWthX2FwaS5Db21tYW5kUg'
    'djb21tYW5kEh0KCmNvbW1hbmRfaWQYBCABKAlSCWNvbW1hbmRJZA==');

@$core.Deprecated('Use proceedResponseDescriptor instead')
const ProceedResponse$json = {
  '1': 'ProceedResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Result', '10': 'result'},
  ],
};

/// Descriptor for `ProceedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List proceedResponseDescriptor = $convert.base64Decode(
    'Cg9Qcm9jZWVkUmVzcG9uc2USKwoGcmVzdWx0GAEgASgLMhMua2FjaGFrYV9hcGkuUmVzdWx0Ug'
    'ZyZXN1bHQ=');

@$core.Deprecated('Use getLocationsResponseDescriptor instead')
const GetLocationsResponse$json = {
  '1': 'GetLocationsResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'locations', '3': 2, '4': 3, '5': 11, '6': '.kachaka_api.Location', '10': 'locations'},
    {'1': 'default_location_id', '3': 3, '4': 1, '5': 9, '10': 'defaultLocationId'},
  ],
};

/// Descriptor for `GetLocationsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLocationsResponseDescriptor = $convert.base64Decode(
    'ChRHZXRMb2NhdGlvbnNSZXNwb25zZRIxCghtZXRhZGF0YRgBIAEoCzIVLmthY2hha2FfYXBpLk'
    '1ldGFkYXRhUghtZXRhZGF0YRIzCglsb2NhdGlvbnMYAiADKAsyFS5rYWNoYWthX2FwaS5Mb2Nh'
    'dGlvblIJbG9jYXRpb25zEi4KE2RlZmF1bHRfbG9jYXRpb25faWQYAyABKAlSEWRlZmF1bHRMb2'
    'NhdGlvbklk');

@$core.Deprecated('Use getShelvesResponseDescriptor instead')
const GetShelvesResponse$json = {
  '1': 'GetShelvesResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'shelves', '3': 2, '4': 3, '5': 11, '6': '.kachaka_api.Shelf', '10': 'shelves'},
  ],
};

/// Descriptor for `GetShelvesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getShelvesResponseDescriptor = $convert.base64Decode(
    'ChJHZXRTaGVsdmVzUmVzcG9uc2USMQoIbWV0YWRhdGEYASABKAsyFS5rYWNoYWthX2FwaS5NZX'
    'RhZGF0YVIIbWV0YWRhdGESLAoHc2hlbHZlcxgCIAMoCzISLmthY2hha2FfYXBpLlNoZWxmUgdz'
    'aGVsdmVz');

@$core.Deprecated('Use getMovingShelfIdResponseDescriptor instead')
const GetMovingShelfIdResponse$json = {
  '1': 'GetMovingShelfIdResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'shelf_id', '3': 2, '4': 1, '5': 9, '10': 'shelfId'},
  ],
};

/// Descriptor for `GetMovingShelfIdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMovingShelfIdResponseDescriptor = $convert.base64Decode(
    'ChhHZXRNb3ZpbmdTaGVsZklkUmVzcG9uc2USMQoIbWV0YWRhdGEYASABKAsyFS5rYWNoYWthX2'
    'FwaS5NZXRhZGF0YVIIbWV0YWRhdGESGQoIc2hlbGZfaWQYAiABKAlSB3NoZWxmSWQ=');

@$core.Deprecated('Use resetShelfPoseRequestDescriptor instead')
const ResetShelfPoseRequest$json = {
  '1': 'ResetShelfPoseRequest',
  '2': [
    {'1': 'shelf_id', '3': 1, '4': 1, '5': 9, '10': 'shelfId'},
  ],
};

/// Descriptor for `ResetShelfPoseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resetShelfPoseRequestDescriptor = $convert.base64Decode(
    'ChVSZXNldFNoZWxmUG9zZVJlcXVlc3QSGQoIc2hlbGZfaWQYASABKAlSB3NoZWxmSWQ=');

@$core.Deprecated('Use resetShelfPoseResponseDescriptor instead')
const ResetShelfPoseResponse$json = {
  '1': 'ResetShelfPoseResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Result', '10': 'result'},
  ],
};

/// Descriptor for `ResetShelfPoseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resetShelfPoseResponseDescriptor = $convert.base64Decode(
    'ChZSZXNldFNoZWxmUG9zZVJlc3BvbnNlEisKBnJlc3VsdBgBIAEoCzITLmthY2hha2FfYXBpLl'
    'Jlc3VsdFIGcmVzdWx0');

@$core.Deprecated('Use setAutoHomingEnabledRequestDescriptor instead')
const SetAutoHomingEnabledRequest$json = {
  '1': 'SetAutoHomingEnabledRequest',
  '2': [
    {'1': 'enable', '3': 1, '4': 1, '5': 8, '10': 'enable'},
  ],
};

/// Descriptor for `SetAutoHomingEnabledRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setAutoHomingEnabledRequestDescriptor = $convert.base64Decode(
    'ChtTZXRBdXRvSG9taW5nRW5hYmxlZFJlcXVlc3QSFgoGZW5hYmxlGAEgASgIUgZlbmFibGU=');

@$core.Deprecated('Use setAutoHomingEnabledResponseDescriptor instead')
const SetAutoHomingEnabledResponse$json = {
  '1': 'SetAutoHomingEnabledResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Result', '10': 'result'},
  ],
};

/// Descriptor for `SetAutoHomingEnabledResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setAutoHomingEnabledResponseDescriptor = $convert.base64Decode(
    'ChxTZXRBdXRvSG9taW5nRW5hYmxlZFJlc3BvbnNlEisKBnJlc3VsdBgBIAEoCzITLmthY2hha2'
    'FfYXBpLlJlc3VsdFIGcmVzdWx0');

@$core.Deprecated('Use getAutoHomingEnabledResponseDescriptor instead')
const GetAutoHomingEnabledResponse$json = {
  '1': 'GetAutoHomingEnabledResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'enabled', '3': 2, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `GetAutoHomingEnabledResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAutoHomingEnabledResponseDescriptor = $convert.base64Decode(
    'ChxHZXRBdXRvSG9taW5nRW5hYmxlZFJlc3BvbnNlEjEKCG1ldGFkYXRhGAEgASgLMhUua2FjaG'
    'FrYV9hcGkuTWV0YWRhdGFSCG1ldGFkYXRhEhgKB2VuYWJsZWQYAiABKAhSB2VuYWJsZWQ=');

@$core.Deprecated('Use setManualControlEnabledRequestDescriptor instead')
const SetManualControlEnabledRequest$json = {
  '1': 'SetManualControlEnabledRequest',
  '2': [
    {'1': 'enable', '3': 1, '4': 1, '5': 8, '10': 'enable'},
    {'1': 'use_shelf_registration', '3': 2, '4': 1, '5': 8, '10': 'useShelfRegistration'},
  ],
};

/// Descriptor for `SetManualControlEnabledRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setManualControlEnabledRequestDescriptor = $convert.base64Decode(
    'Ch5TZXRNYW51YWxDb250cm9sRW5hYmxlZFJlcXVlc3QSFgoGZW5hYmxlGAEgASgIUgZlbmFibG'
    'USNAoWdXNlX3NoZWxmX3JlZ2lzdHJhdGlvbhgCIAEoCFIUdXNlU2hlbGZSZWdpc3RyYXRpb24=');

@$core.Deprecated('Use setManualControlEnabledResponseDescriptor instead')
const SetManualControlEnabledResponse$json = {
  '1': 'SetManualControlEnabledResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Result', '10': 'result'},
  ],
};

/// Descriptor for `SetManualControlEnabledResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setManualControlEnabledResponseDescriptor = $convert.base64Decode(
    'Ch9TZXRNYW51YWxDb250cm9sRW5hYmxlZFJlc3BvbnNlEisKBnJlc3VsdBgBIAEoCzITLmthY2'
    'hha2FfYXBpLlJlc3VsdFIGcmVzdWx0');

@$core.Deprecated('Use getManualControlEnabledResponseDescriptor instead')
const GetManualControlEnabledResponse$json = {
  '1': 'GetManualControlEnabledResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'enabled', '3': 2, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `GetManualControlEnabledResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getManualControlEnabledResponseDescriptor = $convert.base64Decode(
    'Ch9HZXRNYW51YWxDb250cm9sRW5hYmxlZFJlc3BvbnNlEjEKCG1ldGFkYXRhGAEgASgLMhUua2'
    'FjaGFrYV9hcGkuTWV0YWRhdGFSCG1ldGFkYXRhEhgKB2VuYWJsZWQYAiABKAhSB2VuYWJsZWQ=');

@$core.Deprecated('Use setFrontTorchIntensityRequestDescriptor instead')
const SetFrontTorchIntensityRequest$json = {
  '1': 'SetFrontTorchIntensityRequest',
  '2': [
    {'1': 'intensity', '3': 1, '4': 1, '5': 5, '10': 'intensity'},
  ],
};

/// Descriptor for `SetFrontTorchIntensityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setFrontTorchIntensityRequestDescriptor = $convert.base64Decode(
    'Ch1TZXRGcm9udFRvcmNoSW50ZW5zaXR5UmVxdWVzdBIcCglpbnRlbnNpdHkYASABKAVSCWludG'
    'Vuc2l0eQ==');

@$core.Deprecated('Use setFrontTorchIntensityResponseDescriptor instead')
const SetFrontTorchIntensityResponse$json = {
  '1': 'SetFrontTorchIntensityResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Result', '10': 'result'},
  ],
};

/// Descriptor for `SetFrontTorchIntensityResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setFrontTorchIntensityResponseDescriptor = $convert.base64Decode(
    'Ch5TZXRGcm9udFRvcmNoSW50ZW5zaXR5UmVzcG9uc2USKwoGcmVzdWx0GAEgASgLMhMua2FjaG'
    'FrYV9hcGkuUmVzdWx0UgZyZXN1bHQ=');

@$core.Deprecated('Use setBackTorchIntensityRequestDescriptor instead')
const SetBackTorchIntensityRequest$json = {
  '1': 'SetBackTorchIntensityRequest',
  '2': [
    {'1': 'intensity', '3': 1, '4': 1, '5': 5, '10': 'intensity'},
  ],
};

/// Descriptor for `SetBackTorchIntensityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setBackTorchIntensityRequestDescriptor = $convert.base64Decode(
    'ChxTZXRCYWNrVG9yY2hJbnRlbnNpdHlSZXF1ZXN0EhwKCWludGVuc2l0eRgBIAEoBVIJaW50ZW'
    '5zaXR5');

@$core.Deprecated('Use setBackTorchIntensityResponseDescriptor instead')
const SetBackTorchIntensityResponse$json = {
  '1': 'SetBackTorchIntensityResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Result', '10': 'result'},
  ],
};

/// Descriptor for `SetBackTorchIntensityResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setBackTorchIntensityResponseDescriptor = $convert.base64Decode(
    'Ch1TZXRCYWNrVG9yY2hJbnRlbnNpdHlSZXNwb25zZRIrCgZyZXN1bHQYASABKAsyEy5rYWNoYW'
    'thX2FwaS5SZXN1bHRSBnJlc3VsdA==');

@$core.Deprecated('Use setRobotVelocityRequestDescriptor instead')
const SetRobotVelocityRequest$json = {
  '1': 'SetRobotVelocityRequest',
  '2': [
    {'1': 'linear', '3': 1, '4': 1, '5': 1, '10': 'linear'},
    {'1': 'angular', '3': 2, '4': 1, '5': 1, '10': 'angular'},
  ],
};

/// Descriptor for `SetRobotVelocityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setRobotVelocityRequestDescriptor = $convert.base64Decode(
    'ChdTZXRSb2JvdFZlbG9jaXR5UmVxdWVzdBIWCgZsaW5lYXIYASABKAFSBmxpbmVhchIYCgdhbm'
    'd1bGFyGAIgASgBUgdhbmd1bGFy');

@$core.Deprecated('Use setRobotVelocityResponseDescriptor instead')
const SetRobotVelocityResponse$json = {
  '1': 'SetRobotVelocityResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Result', '10': 'result'},
  ],
};

/// Descriptor for `SetRobotVelocityResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setRobotVelocityResponseDescriptor = $convert.base64Decode(
    'ChhTZXRSb2JvdFZlbG9jaXR5UmVzcG9uc2USKwoGcmVzdWx0GAEgASgLMhMua2FjaGFrYV9hcG'
    'kuUmVzdWx0UgZyZXN1bHQ=');

@$core.Deprecated('Use activateLaserScanRequestDescriptor instead')
const ActivateLaserScanRequest$json = {
  '1': 'ActivateLaserScanRequest',
  '2': [
    {'1': 'duration_sec', '3': 1, '4': 1, '5': 1, '10': 'durationSec'},
  ],
};

/// Descriptor for `ActivateLaserScanRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activateLaserScanRequestDescriptor = $convert.base64Decode(
    'ChhBY3RpdmF0ZUxhc2VyU2NhblJlcXVlc3QSIQoMZHVyYXRpb25fc2VjGAEgASgBUgtkdXJhdG'
    'lvblNlYw==');

@$core.Deprecated('Use activateLaserScanResponseDescriptor instead')
const ActivateLaserScanResponse$json = {
  '1': 'ActivateLaserScanResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Result', '10': 'result'},
  ],
};

/// Descriptor for `ActivateLaserScanResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activateLaserScanResponseDescriptor = $convert.base64Decode(
    'ChlBY3RpdmF0ZUxhc2VyU2NhblJlc3BvbnNlEisKBnJlc3VsdBgBIAEoCzITLmthY2hha2FfYX'
    'BpLlJlc3VsdFIGcmVzdWx0');

@$core.Deprecated('Use getStaticTransformResponseDescriptor instead')
const GetStaticTransformResponse$json = {
  '1': 'GetStaticTransformResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'transforms', '3': 2, '4': 3, '5': 11, '6': '.kachaka_api.RosTransformStamped', '10': 'transforms'},
  ],
};

/// Descriptor for `GetStaticTransformResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStaticTransformResponseDescriptor = $convert.base64Decode(
    'ChpHZXRTdGF0aWNUcmFuc2Zvcm1SZXNwb25zZRIxCghtZXRhZGF0YRgBIAEoCzIVLmthY2hha2'
    'FfYXBpLk1ldGFkYXRhUghtZXRhZGF0YRJACgp0cmFuc2Zvcm1zGAIgAygLMiAua2FjaGFrYV9h'
    'cGkuUm9zVHJhbnNmb3JtU3RhbXBlZFIKdHJhbnNmb3Jtcw==');

@$core.Deprecated('Use getDynamicTransformResponseDescriptor instead')
const GetDynamicTransformResponse$json = {
  '1': 'GetDynamicTransformResponse',
  '2': [
    {'1': 'transforms', '3': 1, '4': 3, '5': 11, '6': '.kachaka_api.RosTransformStamped', '10': 'transforms'},
  ],
};

/// Descriptor for `GetDynamicTransformResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDynamicTransformResponseDescriptor = $convert.base64Decode(
    'ChtHZXREeW5hbWljVHJhbnNmb3JtUmVzcG9uc2USQAoKdHJhbnNmb3JtcxgBIAMoCzIgLmthY2'
    'hha2FfYXBpLlJvc1RyYW5zZm9ybVN0YW1wZWRSCnRyYW5zZm9ybXM=');

@$core.Deprecated('Use mapListEntryDescriptor instead')
const MapListEntry$json = {
  '1': 'MapListEntry',
  '2': [
    {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `MapListEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapListEntryDescriptor = $convert.base64Decode(
    'CgxNYXBMaXN0RW50cnkSDgoCaWQYAiABKAlSAmlkEhIKBG5hbWUYASABKAlSBG5hbWU=');

@$core.Deprecated('Use getMapListResponseDescriptor instead')
const GetMapListResponse$json = {
  '1': 'GetMapListResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'map_list_entries', '3': 2, '4': 3, '5': 11, '6': '.kachaka_api.MapListEntry', '10': 'mapListEntries'},
  ],
};

/// Descriptor for `GetMapListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMapListResponseDescriptor = $convert.base64Decode(
    'ChJHZXRNYXBMaXN0UmVzcG9uc2USMQoIbWV0YWRhdGEYASABKAsyFS5rYWNoYWthX2FwaS5NZX'
    'RhZGF0YVIIbWV0YWRhdGESQwoQbWFwX2xpc3RfZW50cmllcxgCIAMoCzIZLmthY2hha2FfYXBp'
    'Lk1hcExpc3RFbnRyeVIObWFwTGlzdEVudHJpZXM=');

@$core.Deprecated('Use getCurrentMapIdResponseDescriptor instead')
const GetCurrentMapIdResponse$json = {
  '1': 'GetCurrentMapIdResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetCurrentMapIdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCurrentMapIdResponseDescriptor = $convert.base64Decode(
    'ChdHZXRDdXJyZW50TWFwSWRSZXNwb25zZRIxCghtZXRhZGF0YRgBIAEoCzIVLmthY2hha2FfYX'
    'BpLk1ldGFkYXRhUghtZXRhZGF0YRIOCgJpZBgCIAEoCVICaWQ=');

@$core.Deprecated('Use loadMapPreviewRequestDescriptor instead')
const LoadMapPreviewRequest$json = {
  '1': 'LoadMapPreviewRequest',
  '2': [
    {'1': 'map_id', '3': 1, '4': 1, '5': 9, '10': 'mapId'},
  ],
};

/// Descriptor for `LoadMapPreviewRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadMapPreviewRequestDescriptor = $convert.base64Decode(
    'ChVMb2FkTWFwUHJldmlld1JlcXVlc3QSFQoGbWFwX2lkGAEgASgJUgVtYXBJZA==');

@$core.Deprecated('Use loadMapPreviewResponseDescriptor instead')
const LoadMapPreviewResponse$json = {
  '1': 'LoadMapPreviewResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Result', '10': 'result'},
    {'1': 'map', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.Map', '10': 'map'},
  ],
};

/// Descriptor for `LoadMapPreviewResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadMapPreviewResponseDescriptor = $convert.base64Decode(
    'ChZMb2FkTWFwUHJldmlld1Jlc3BvbnNlEisKBnJlc3VsdBgBIAEoCzITLmthY2hha2FfYXBpLl'
    'Jlc3VsdFIGcmVzdWx0EiIKA21hcBgCIAEoCzIQLmthY2hha2FfYXBpLk1hcFIDbWFw');

@$core.Deprecated('Use switchMapRequestDescriptor instead')
const SwitchMapRequest$json = {
  '1': 'SwitchMapRequest',
  '2': [
    {'1': 'map_id', '3': 1, '4': 1, '5': 9, '10': 'mapId'},
    {'1': 'initial_pose', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.Pose', '10': 'initialPose'},
    {'1': 'inherit_docking_state_and_docked_shelf', '3': 3, '4': 1, '5': 8, '10': 'inheritDockingStateAndDockedShelf'},
  ],
};

/// Descriptor for `SwitchMapRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List switchMapRequestDescriptor = $convert.base64Decode(
    'ChBTd2l0Y2hNYXBSZXF1ZXN0EhUKBm1hcF9pZBgBIAEoCVIFbWFwSWQSNAoMaW5pdGlhbF9wb3'
    'NlGAIgASgLMhEua2FjaGFrYV9hcGkuUG9zZVILaW5pdGlhbFBvc2USUQomaW5oZXJpdF9kb2Nr'
    'aW5nX3N0YXRlX2FuZF9kb2NrZWRfc2hlbGYYAyABKAhSIWluaGVyaXREb2NraW5nU3RhdGVBbm'
    'REb2NrZWRTaGVsZg==');

@$core.Deprecated('Use switchMapResponseDescriptor instead')
const SwitchMapResponse$json = {
  '1': 'SwitchMapResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Result', '10': 'result'},
  ],
};

/// Descriptor for `SwitchMapResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List switchMapResponseDescriptor = $convert.base64Decode(
    'ChFTd2l0Y2hNYXBSZXNwb25zZRIrCgZyZXN1bHQYASABKAsyEy5rYWNoYWthX2FwaS5SZXN1bH'
    'RSBnJlc3VsdA==');

@$core.Deprecated('Use exportMapRequestDescriptor instead')
const ExportMapRequest$json = {
  '1': 'ExportMapRequest',
  '2': [
    {'1': 'map_id', '3': 1, '4': 1, '5': 9, '10': 'mapId'},
  ],
};

/// Descriptor for `ExportMapRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exportMapRequestDescriptor = $convert.base64Decode(
    'ChBFeHBvcnRNYXBSZXF1ZXN0EhUKBm1hcF9pZBgBIAEoCVIFbWFwSWQ=');

@$core.Deprecated('Use exportMapResponseDescriptor instead')
const ExportMapResponse$json = {
  '1': 'ExportMapResponse',
  '2': [
    {'1': 'middle_of_stream', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.ExportMapResponse.MiddleOfStream', '9': 0, '10': 'middleOfStream'},
    {'1': 'end_of_stream', '3': 2, '4': 1, '5': 11, '6': '.kachaka_api.ExportMapResponse.EndOfStream', '9': 0, '10': 'endOfStream'},
  ],
  '3': [ExportMapResponse_MiddleOfStream$json, ExportMapResponse_EndOfStream$json],
  '8': [
    {'1': 'response'},
  ],
};

@$core.Deprecated('Use exportMapResponseDescriptor instead')
const ExportMapResponse_MiddleOfStream$json = {
  '1': 'MiddleOfStream',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

@$core.Deprecated('Use exportMapResponseDescriptor instead')
const ExportMapResponse_EndOfStream$json = {
  '1': 'EndOfStream',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Result', '10': 'result'},
  ],
};

/// Descriptor for `ExportMapResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exportMapResponseDescriptor = $convert.base64Decode(
    'ChFFeHBvcnRNYXBSZXNwb25zZRJZChBtaWRkbGVfb2Zfc3RyZWFtGAEgASgLMi0ua2FjaGFrYV'
    '9hcGkuRXhwb3J0TWFwUmVzcG9uc2UuTWlkZGxlT2ZTdHJlYW1IAFIObWlkZGxlT2ZTdHJlYW0S'
    'UAoNZW5kX29mX3N0cmVhbRgCIAEoCzIqLmthY2hha2FfYXBpLkV4cG9ydE1hcFJlc3BvbnNlLk'
    'VuZE9mU3RyZWFtSABSC2VuZE9mU3RyZWFtGiQKDk1pZGRsZU9mU3RyZWFtEhIKBGRhdGEYASAB'
    'KAxSBGRhdGEaOgoLRW5kT2ZTdHJlYW0SKwoGcmVzdWx0GAEgASgLMhMua2FjaGFrYV9hcGkuUm'
    'VzdWx0UgZyZXN1bHRCCgoIcmVzcG9uc2U=');

@$core.Deprecated('Use importMapRequestDescriptor instead')
const ImportMapRequest$json = {
  '1': 'ImportMapRequest',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `ImportMapRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List importMapRequestDescriptor = $convert.base64Decode(
    'ChBJbXBvcnRNYXBSZXF1ZXN0EhIKBGRhdGEYASABKAxSBGRhdGE=');

@$core.Deprecated('Use importMapResponseDescriptor instead')
const ImportMapResponse$json = {
  '1': 'ImportMapResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Result', '10': 'result'},
    {'1': 'map_id', '3': 2, '4': 1, '5': 9, '10': 'mapId'},
  ],
};

/// Descriptor for `ImportMapResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List importMapResponseDescriptor = $convert.base64Decode(
    'ChFJbXBvcnRNYXBSZXNwb25zZRIrCgZyZXN1bHQYASABKAsyEy5rYWNoYWthX2FwaS5SZXN1bH'
    'RSBnJlc3VsdBIVCgZtYXBfaWQYAiABKAlSBW1hcElk');

@$core.Deprecated('Use shortcutDescriptor instead')
const Shortcut$json = {
  '1': 'Shortcut',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `Shortcut`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shortcutDescriptor = $convert.base64Decode(
    'CghTaG9ydGN1dBIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgDIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use getShortcutsResponseDescriptor instead')
const GetShortcutsResponse$json = {
  '1': 'GetShortcutsResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'shortcuts', '3': 2, '4': 3, '5': 11, '6': '.kachaka_api.Shortcut', '10': 'shortcuts'},
  ],
};

/// Descriptor for `GetShortcutsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getShortcutsResponseDescriptor = $convert.base64Decode(
    'ChRHZXRTaG9ydGN1dHNSZXNwb25zZRIxCghtZXRhZGF0YRgBIAEoCzIVLmthY2hha2FfYXBpLk'
    '1ldGFkYXRhUghtZXRhZGF0YRIzCglzaG9ydGN1dHMYAiADKAsyFS5rYWNoYWthX2FwaS5TaG9y'
    'dGN1dFIJc2hvcnRjdXRz');

@$core.Deprecated('Use startShortcutCommandRequestDescriptor instead')
const StartShortcutCommandRequest$json = {
  '1': 'StartShortcutCommandRequest',
  '2': [
    {'1': 'target_shortcut_id', '3': 1, '4': 1, '5': 9, '10': 'targetShortcutId'},
    {'1': 'cancel_all', '3': 2, '4': 1, '5': 8, '10': 'cancelAll'},
  ],
};

/// Descriptor for `StartShortcutCommandRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startShortcutCommandRequestDescriptor = $convert.base64Decode(
    'ChtTdGFydFNob3J0Y3V0Q29tbWFuZFJlcXVlc3QSLAoSdGFyZ2V0X3Nob3J0Y3V0X2lkGAEgAS'
    'gJUhB0YXJnZXRTaG9ydGN1dElkEh0KCmNhbmNlbF9hbGwYAiABKAhSCWNhbmNlbEFsbA==');

@$core.Deprecated('Use startShortcutCommandResponseDescriptor instead')
const StartShortcutCommandResponse$json = {
  '1': 'StartShortcutCommandResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Result', '10': 'result'},
  ],
};

/// Descriptor for `StartShortcutCommandResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startShortcutCommandResponseDescriptor = $convert.base64Decode(
    'ChxTdGFydFNob3J0Y3V0Q29tbWFuZFJlc3BvbnNlEisKBnJlc3VsdBgBIAEoCzITLmthY2hha2'
    'FfYXBpLlJlc3VsdFIGcmVzdWx0');

@$core.Deprecated('Use historyDescriptor instead')
const History$json = {
  '1': 'History',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'command', '3': 4, '4': 1, '5': 11, '6': '.kachaka_api.Command', '10': 'command'},
    {'1': 'success', '3': 5, '4': 1, '5': 8, '10': 'success'},
    {'1': 'error_code', '3': 6, '4': 1, '5': 5, '10': 'errorCode'},
    {'1': 'command_executed_time', '3': 7, '4': 1, '5': 3, '10': 'commandExecutedTime'},
  ],
};

/// Descriptor for `History`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyDescriptor = $convert.base64Decode(
    'CgdIaXN0b3J5Eg4KAmlkGAEgASgJUgJpZBIuCgdjb21tYW5kGAQgASgLMhQua2FjaGFrYV9hcG'
    'kuQ29tbWFuZFIHY29tbWFuZBIYCgdzdWNjZXNzGAUgASgIUgdzdWNjZXNzEh0KCmVycm9yX2Nv'
    'ZGUYBiABKAVSCWVycm9yQ29kZRIyChVjb21tYW5kX2V4ZWN1dGVkX3RpbWUYByABKANSE2NvbW'
    '1hbmRFeGVjdXRlZFRpbWU=');

@$core.Deprecated('Use getHistoryListResponseDescriptor instead')
const GetHistoryListResponse$json = {
  '1': 'GetHistoryListResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'histories', '3': 2, '4': 3, '5': 11, '6': '.kachaka_api.History', '10': 'histories'},
  ],
};

/// Descriptor for `GetHistoryListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getHistoryListResponseDescriptor = $convert.base64Decode(
    'ChZHZXRIaXN0b3J5TGlzdFJlc3BvbnNlEjEKCG1ldGFkYXRhGAEgASgLMhUua2FjaGFrYV9hcG'
    'kuTWV0YWRhdGFSCG1ldGFkYXRhEjIKCWhpc3RvcmllcxgCIAMoCzIULmthY2hha2FfYXBpLkhp'
    'c3RvcnlSCWhpc3Rvcmllcw==');

@$core.Deprecated('Use getSpeakerVolumeResponseDescriptor instead')
const GetSpeakerVolumeResponse$json = {
  '1': 'GetSpeakerVolumeResponse',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Metadata', '10': 'metadata'},
    {'1': 'volume', '3': 2, '4': 1, '5': 5, '10': 'volume'},
  ],
};

/// Descriptor for `GetSpeakerVolumeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSpeakerVolumeResponseDescriptor = $convert.base64Decode(
    'ChhHZXRTcGVha2VyVm9sdW1lUmVzcG9uc2USMQoIbWV0YWRhdGEYASABKAsyFS5rYWNoYWthX2'
    'FwaS5NZXRhZGF0YVIIbWV0YWRhdGESFgoGdm9sdW1lGAIgASgFUgZ2b2x1bWU=');

@$core.Deprecated('Use setSpeakerVolumeRequestDescriptor instead')
const SetSpeakerVolumeRequest$json = {
  '1': 'SetSpeakerVolumeRequest',
  '2': [
    {'1': 'volume', '3': 1, '4': 1, '5': 5, '10': 'volume'},
  ],
};

/// Descriptor for `SetSpeakerVolumeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setSpeakerVolumeRequestDescriptor = $convert.base64Decode(
    'ChdTZXRTcGVha2VyVm9sdW1lUmVxdWVzdBIWCgZ2b2x1bWUYASABKAVSBnZvbHVtZQ==');

@$core.Deprecated('Use setSpeakerVolumeResponseDescriptor instead')
const SetSpeakerVolumeResponse$json = {
  '1': 'SetSpeakerVolumeResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Result', '10': 'result'},
  ],
};

/// Descriptor for `SetSpeakerVolumeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setSpeakerVolumeResponseDescriptor = $convert.base64Decode(
    'ChhTZXRTcGVha2VyVm9sdW1lUmVzcG9uc2USKwoGcmVzdWx0GAEgASgLMhMua2FjaGFrYV9hcG'
    'kuUmVzdWx0UgZyZXN1bHQ=');

@$core.Deprecated('Use restartRobotResponseDescriptor instead')
const RestartRobotResponse$json = {
  '1': 'RestartRobotResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Result', '10': 'result'},
  ],
};

/// Descriptor for `RestartRobotResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List restartRobotResponseDescriptor = $convert.base64Decode(
    'ChRSZXN0YXJ0Um9ib3RSZXNwb25zZRIrCgZyZXN1bHQYASABKAsyEy5rYWNoYWthX2FwaS5SZX'
    'N1bHRSBnJlc3VsdA==');

@$core.Deprecated('Use setEmergencyStopResponseDescriptor instead')
const SetEmergencyStopResponse$json = {
  '1': 'SetEmergencyStopResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.kachaka_api.Result', '10': 'result'},
  ],
};

/// Descriptor for `SetEmergencyStopResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setEmergencyStopResponseDescriptor = $convert.base64Decode(
    'ChhTZXRFbWVyZ2VuY3lTdG9wUmVzcG9uc2USKwoGcmVzdWx0GAEgASgLMhMua2FjaGFrYV9hcG'
    'kuUmVzdWx0UgZyZXN1bHQ=');

