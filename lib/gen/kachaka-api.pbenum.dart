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

import 'package:protobuf/protobuf.dart' as $pb;

class PowerSupplyStatus extends $pb.ProtobufEnum {
  static const PowerSupplyStatus POWER_SUPPLY_STATUS_UNSPECIFIED = PowerSupplyStatus._(0, _omitEnumNames ? '' : 'POWER_SUPPLY_STATUS_UNSPECIFIED');
  static const PowerSupplyStatus POWER_SUPPLY_STATUS_CHARGING = PowerSupplyStatus._(1, _omitEnumNames ? '' : 'POWER_SUPPLY_STATUS_CHARGING');
  static const PowerSupplyStatus POWER_SUPPLY_STATUS_DISCHARGING = PowerSupplyStatus._(2, _omitEnumNames ? '' : 'POWER_SUPPLY_STATUS_DISCHARGING');
  static const PowerSupplyStatus POWER_SUPPLY_STATUS_NOT_CHARGING = PowerSupplyStatus._(3, _omitEnumNames ? '' : 'POWER_SUPPLY_STATUS_NOT_CHARGING');
  static const PowerSupplyStatus POWER_SUPPLY_STATUS_FULL = PowerSupplyStatus._(4, _omitEnumNames ? '' : 'POWER_SUPPLY_STATUS_FULL');

  static const $core.List<PowerSupplyStatus> values = <PowerSupplyStatus> [
    POWER_SUPPLY_STATUS_UNSPECIFIED,
    POWER_SUPPLY_STATUS_CHARGING,
    POWER_SUPPLY_STATUS_DISCHARGING,
    POWER_SUPPLY_STATUS_NOT_CHARGING,
    POWER_SUPPLY_STATUS_FULL,
  ];

  static final $core.List<PowerSupplyStatus?> _byValue = $pb.ProtobufEnum.$_initByValueList(values, 4);
  static PowerSupplyStatus? valueOf($core.int value) =>  value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PowerSupplyStatus._(super.value, super.name);
}

class LocationType extends $pb.ProtobufEnum {
  static const LocationType LOCATION_TYPE_UNSPECIFIED = LocationType._(0, _omitEnumNames ? '' : 'LOCATION_TYPE_UNSPECIFIED');
  static const LocationType LOCATION_TYPE_CHARGER = LocationType._(1, _omitEnumNames ? '' : 'LOCATION_TYPE_CHARGER');
  static const LocationType LOCATION_TYPE_SHELF_HOME = LocationType._(2, _omitEnumNames ? '' : 'LOCATION_TYPE_SHELF_HOME');

  static const $core.List<LocationType> values = <LocationType> [
    LOCATION_TYPE_UNSPECIFIED,
    LOCATION_TYPE_CHARGER,
    LOCATION_TYPE_SHELF_HOME,
  ];

  static final $core.List<LocationType?> _byValue = $pb.ProtobufEnum.$_initByValueList(values, 2);
  static LocationType? valueOf($core.int value) =>  value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LocationType._(super.value, super.name);
}

class ShelfAppearance extends $pb.ProtobufEnum {
  static const ShelfAppearance SHELF_APPEARANCE_UNSPECIFIED = ShelfAppearance._(0, _omitEnumNames ? '' : 'SHELF_APPEARANCE_UNSPECIFIED');
  static const ShelfAppearance SHELF_APPEARANCE_DEFAULT_SHELF = ShelfAppearance._(1, _omitEnumNames ? '' : 'SHELF_APPEARANCE_DEFAULT_SHELF');
  static const ShelfAppearance SHELF_APPEARANCE_KACHAKA_SHELF_3DRAWERS = ShelfAppearance._(2, _omitEnumNames ? '' : 'SHELF_APPEARANCE_KACHAKA_SHELF_3DRAWERS');
  static const ShelfAppearance SHELF_APPEARANCE_KACHAKA_SHELF_2DRAWERS = ShelfAppearance._(3, _omitEnumNames ? '' : 'SHELF_APPEARANCE_KACHAKA_SHELF_2DRAWERS');
  static const ShelfAppearance SHELF_APPEARANCE_KACHAKA_BASE = ShelfAppearance._(8, _omitEnumNames ? '' : 'SHELF_APPEARANCE_KACHAKA_BASE');

  static const $core.List<ShelfAppearance> values = <ShelfAppearance> [
    SHELF_APPEARANCE_UNSPECIFIED,
    SHELF_APPEARANCE_DEFAULT_SHELF,
    SHELF_APPEARANCE_KACHAKA_SHELF_3DRAWERS,
    SHELF_APPEARANCE_KACHAKA_SHELF_2DRAWERS,
    SHELF_APPEARANCE_KACHAKA_BASE,
  ];

  static final $core.Map<$core.int, ShelfAppearance> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ShelfAppearance? valueOf($core.int value) => _byValue[value];

  const ShelfAppearance._(super.value, super.name);
}

class ShelfSpeedMode extends $pb.ProtobufEnum {
  static const ShelfSpeedMode SHELF_SPEED_MODE_UNSPECIFIED = ShelfSpeedMode._(0, _omitEnumNames ? '' : 'SHELF_SPEED_MODE_UNSPECIFIED');
  static const ShelfSpeedMode SHELF_SPEED_MODE_LOW = ShelfSpeedMode._(1, _omitEnumNames ? '' : 'SHELF_SPEED_MODE_LOW');
  static const ShelfSpeedMode SHELF_SPEED_MODE_NORMAL = ShelfSpeedMode._(2, _omitEnumNames ? '' : 'SHELF_SPEED_MODE_NORMAL');

  static const $core.List<ShelfSpeedMode> values = <ShelfSpeedMode> [
    SHELF_SPEED_MODE_UNSPECIFIED,
    SHELF_SPEED_MODE_LOW,
    SHELF_SPEED_MODE_NORMAL,
  ];

  static final $core.List<ShelfSpeedMode?> _byValue = $pb.ProtobufEnum.$_initByValueList(values, 2);
  static ShelfSpeedMode? valueOf($core.int value) =>  value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ShelfSpeedMode._(super.value, super.name);
}

class ObjectLabel extends $pb.ProtobufEnum {
  static const ObjectLabel OBJECT_LABEL_UNSPECIFIED = ObjectLabel._(0, _omitEnumNames ? '' : 'OBJECT_LABEL_UNSPECIFIED');
  static const ObjectLabel OBJECT_LABEL_PERSON = ObjectLabel._(1, _omitEnumNames ? '' : 'OBJECT_LABEL_PERSON');
  static const ObjectLabel OBJECT_LABEL_SHELF = ObjectLabel._(2, _omitEnumNames ? '' : 'OBJECT_LABEL_SHELF');
  static const ObjectLabel OBJECT_LABEL_CHARGER = ObjectLabel._(3, _omitEnumNames ? '' : 'OBJECT_LABEL_CHARGER');
  static const ObjectLabel OBJECT_LABEL_DOOR = ObjectLabel._(4, _omitEnumNames ? '' : 'OBJECT_LABEL_DOOR');

  static const $core.List<ObjectLabel> values = <ObjectLabel> [
    OBJECT_LABEL_UNSPECIFIED,
    OBJECT_LABEL_PERSON,
    OBJECT_LABEL_SHELF,
    OBJECT_LABEL_CHARGER,
    OBJECT_LABEL_DOOR,
  ];

  static final $core.List<ObjectLabel?> _byValue = $pb.ProtobufEnum.$_initByValueList(values, 4);
  static ObjectLabel? valueOf($core.int value) =>  value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ObjectLabel._(super.value, super.name);
}

class CommandState extends $pb.ProtobufEnum {
  static const CommandState COMMAND_STATE_UNSPECIFIED = CommandState._(0, _omitEnumNames ? '' : 'COMMAND_STATE_UNSPECIFIED');
  static const CommandState COMMAND_STATE_PENDING = CommandState._(1, _omitEnumNames ? '' : 'COMMAND_STATE_PENDING');
  static const CommandState COMMAND_STATE_RUNNING = CommandState._(2, _omitEnumNames ? '' : 'COMMAND_STATE_RUNNING');

  static const $core.List<CommandState> values = <CommandState> [
    COMMAND_STATE_UNSPECIFIED,
    COMMAND_STATE_PENDING,
    COMMAND_STATE_RUNNING,
  ];

  static final $core.List<CommandState?> _byValue = $pb.ProtobufEnum.$_initByValueList(values, 2);
  static CommandState? valueOf($core.int value) =>  value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CommandState._(super.value, super.name);
}


const $core.bool _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
