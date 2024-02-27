//
//  Generated code. Do not modify.
//  source: crashlytics.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use errorDescriptor instead')
const Error$json = {
  '1': 'Error',
  '2': [
    {'1': 'exception', '3': 1, '4': 1, '5': 9, '10': 'exception'},
    {'1': 'stack_trace', '3': 2, '4': 1, '5': 9, '10': 'stackTrace'},
    {'1': 'app_version', '3': 3, '4': 1, '5': 9, '10': 'appVersion'},
  ],
};

/// Descriptor for `Error`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorDescriptor = $convert.base64Decode(
    'CgVFcnJvchIcCglleGNlcHRpb24YASABKAlSCWV4Y2VwdGlvbhIfCgtzdGFja190cmFjZRgCIA'
    'EoCVIKc3RhY2tUcmFjZRIfCgthcHBfdmVyc2lvbhgDIAEoCVIKYXBwVmVyc2lvbg==');

